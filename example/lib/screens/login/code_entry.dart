import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tdlib/td_api.dart' show TdError;

import '../../services/telegram_service.dart';

class CoodeEntrySreen extends StatefulWidget {
  @override
  _CoodeEntrySreenState createState() => _CoodeEntrySreenState();
}

class _CoodeEntrySreenState extends State<CoodeEntrySreen> {
  final String title = 'Submit Code';
  final TextEditingController _codeController = TextEditingController();
  bool _canShowButton = false;
  String? _codeError;
  bool _loadingStep = false;

  void codeListener() {
    if (_codeController.text.isNotEmpty && _codeController.text.length == 5) {
      setState(() => _canShowButton = true);
    } else {
      setState(() => _canShowButton = false);
    }
  }

  @override
  void initState() {
    super.initState();
    _codeController.addListener(codeListener);
  }

  @override
  void dispose() {
    super.dispose();
    _codeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: TextField(
            maxLength: 5,
            controller: _codeController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(),
              ),
              labelText: "code",
              errorText: _codeError ?? null,
              errorStyle: TextStyle(
                fontSize: 14.0,
              ),
              //contentPadding: EdgeInsets.zero
            ),
            onSubmitted: _nextStep,
            autofocus: true,
          ),
        ),
      ),
      floatingActionButton: _canShowButton
          ? FloatingActionButton(
              onPressed: () => _nextStep(_codeController.text),
              tooltip: 'checkcode',
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
    context.read<TelegramService>().checkAuthenticationCode(
          value,
          onError: _handelError,
        );
  }

  void _handelError(TdError error) async {
    setState(() {
      _loadingStep = false;
      _codeError = error.message;
    });
  }
}
