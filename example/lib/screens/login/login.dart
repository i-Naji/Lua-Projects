import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

import 'package:tdlib/td_api.dart' show TdError;

import '../../services/telegram_service.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String title = 'Your Phone';
  final _phoneNumberController = TextEditingController();
  final _countryNameController = TextEditingController();
  Country? _selectedCountry;
  bool _canShowButton = false;
  String? _phoneNumberError;
  bool _loadingStep = false;

  void phoneNumberListener() {
    if (_phoneNumberController.text.isEmpty) {
      if (_canShowButton) {
        setState(() => _canShowButton = false);
      }
    } else {
      if (!_canShowButton) {
        setState(() => _canShowButton = true);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(phoneNumberListener);
  }

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
    _countryNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /*if (_selectedCountry == null) {
      Locale locale = Localizations.localeOf(context);
      _selectedCountry =
          CountryPickerUtils.getCountryByIsoCode(locale.countryCode);
      _countryNameController.text = _selectedCountry.name;
    }*/
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                onTap: _openCountryPickerDialog,
                controller: _countryNameController,
                decoration: InputDecoration(
                  labelText: "Country",
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixText: (_selectedCountry != null)
                            ? '+${_selectedCountry!.phoneCode}  '
                            : ' +  ',
                        alignLabelWithHint: true,
                        labelText: "Phone",
                        errorText: _phoneNumberError ?? null,

                        errorStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        //contentPadding: EdgeInsets.zero
                      ),
                      onSubmitted: _nextStep,
                      autofocus: true,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  _phoneNumberError == null
                      ? 'We will send a SMS with a confirmation code to your phone number.'
                      : '',
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              )
            ],
          )
        ],
      ),

      floatingActionButton: _canShowButton
          ? FloatingActionButton(
              onPressed: () => _nextStep(_phoneNumberController.text),
              tooltip: 'checkphone',
              child: _loadingStep
                  ? CircularProgressIndicator(
                      backgroundColor: Colors.blue,
                    )
                  : Icon(Icons.navigate_next),
            )
          : null, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _nextStep(String value) async {
    setState(() {
      _loadingStep = true;
    });
    context.read<TelegramService>().setAuthenticationPhoneNumber(
          (_selectedCountry != null)
              ? '+${_selectedCountry!.phoneCode}$value'
              : value,
          onError: _handelError,
        );
  }

  void _handelError(TdError error) async {
    setState(() {
      _loadingStep = false;
      _phoneNumberError = error.message;
    });
  }

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.pink),
          child: CountryPickerDialog(
            titlePadding: EdgeInsets.all(8.0),
            searchCursorColor: Colors.pinkAccent,
            searchInputDecoration: InputDecoration(hintText: 'Search...'),
            isSearchable: true,
            title: Text('Select your phone code'),
            onValuePicked: _onPickCountry,
            itemBuilder: _buildDialogItem,
          ),
        ),
      );

  void _onPickCountry(Country country) {
    setState(() {
      _selectedCountry = country;
      _countryNameController.text = country.name;
    });
  }

  Widget _buildDialogItem(Country country, {dialog = true}) =>
      Row(children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(width: 8.0),
        Text("+${country.phoneCode}"),
        SizedBox(width: 8.0),
        Flexible(
          child: Text(country.name),
        )
      ]);
}
