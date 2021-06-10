part of '../tdapi.dart';

class InputMessageContent extends TdObject {
  /// The content of a message to send
  InputMessageContent();

  /// a InputMessageContent return type can be :
  /// * InputMessageText
  /// * InputMessageAnimation
  /// * InputMessageAudio
  /// * InputMessageDocument
  /// * InputMessagePhoto
  /// * InputMessageSticker
  /// * InputMessageVideo
  /// * InputMessageVideoNote
  /// * InputMessageVoiceNote
  /// * InputMessageLocation
  /// * InputMessageVenue
  /// * InputMessageContact
  /// * InputMessageDice
  /// * InputMessageGame
  /// * InputMessageInvoice
  /// * InputMessagePoll
  /// * InputMessageForwarded
  factory InputMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputMessageText.CONSTRUCTOR:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.CONSTRUCTOR:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.CONSTRUCTOR:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.CONSTRUCTOR:
        return InputMessageDocument.fromJson(json);
      case InputMessagePhoto.CONSTRUCTOR:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.CONSTRUCTOR:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.CONSTRUCTOR:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.CONSTRUCTOR:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.CONSTRUCTOR:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.CONSTRUCTOR:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.CONSTRUCTOR:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.CONSTRUCTOR:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.CONSTRUCTOR:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.CONSTRUCTOR:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.CONSTRUCTOR:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.CONSTRUCTOR:
        return InputMessagePoll.fromJson(json);
      case InputMessageForwarded.CONSTRUCTOR:
        return InputMessageForwarded.fromJson(json);
      default:
        return InputMessageContent();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageText extends InputMessageContent {
  /// A text message
  InputMessageText(
      {required this.text,
      required this.disableWebPagePreview,
      required this.clearDraft});

  /// [text] Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  FormattedText text;

  /// [disableWebPagePreview] True, if rich web page previews for URLs in the message text should be disabled
  bool disableWebPagePreview;

  /// [clearDraft] True, if a chat message draft should be deleted
  bool clearDraft;

  /// Parse from a json
  factory InputMessageText.fromJson(Map<String, dynamic> json) {
    return InputMessageText(
      text: FormattedText.fromJson(json['text'] ?? <String, dynamic>{}),
      disableWebPagePreview: json['disable_web_page_preview'] ?? false,
      clearDraft: json['clear_draft'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "disable_web_page_preview": this.disableWebPagePreview,
      "clear_draft": this.clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAnimation extends InputMessageContent {
  /// An animation message (GIF-style).
  InputMessageAnimation(
      {required this.animation,
      required this.thumbnail,
      required this.addedStickerFileIds,
      required this.duration,
      required this.width,
      required this.height,
      required this.caption});

  /// [animation] Animation file to be sent
  InputFile animation;

  /// [thumbnail] Animation thumbnail, if available
  InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the animation, if applicable
  List<int> addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds
  int duration;

  /// [width] Width of the animation; may be replaced by the server
  int width;

  /// [height] Height of the animation; may be replaced by the server
  int height;

  /// [caption] Animation caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// Parse from a json
  factory InputMessageAnimation.fromJson(Map<String, dynamic> json) {
    return InputMessageAnimation(
      animation: InputFile.fromJson(json['animation'] ?? <String, dynamic>{}),
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? [])
          .map((item) => item ?? 0)
          .toList()),
      duration: json['duration'] ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAudio extends InputMessageContent {
  /// An audio message
  InputMessageAudio(
      {required this.audio,
      required this.albumCoverThumbnail,
      required this.duration,
      required this.title,
      required this.performer,
      required this.caption});

  /// [audio] Audio file to be sent
  InputFile audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album, if available
  InputThumbnail albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the server
  int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by the server
  String performer;

  /// [caption] Audio caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// Parse from a json
  factory InputMessageAudio.fromJson(Map<String, dynamic> json) {
    return InputMessageAudio(
      audio: InputFile.fromJson(json['audio'] ?? <String, dynamic>{}),
      albumCoverThumbnail: InputThumbnail.fromJson(
          json['album_cover_thumbnail'] ?? <String, dynamic>{}),
      duration: json['duration'] ?? 0,
      title: json['title'] ?? "",
      performer: json['performer'] ?? "",
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio.toJson(),
      "album_cover_thumbnail": this.albumCoverThumbnail.toJson(),
      "duration": this.duration,
      "title": this.title,
      "performer": this.performer,
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDocument extends InputMessageContent {
  /// A document message (general file)
  InputMessageDocument(
      {required this.document,
      required this.thumbnail,
      required this.disableContentTypeDetection,
      required this.caption});

  /// [document] Document to be sent
  InputFile document;

  /// [thumbnail] Document thumbnail, if available
  InputThumbnail thumbnail;

  /// [disableContentTypeDetection] If true, automatic file type detection will be disabled and the document will be always sent as file. Always true for files sent to secret chats
  bool disableContentTypeDetection;

  /// [caption] Document caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// Parse from a json
  factory InputMessageDocument.fromJson(Map<String, dynamic> json) {
    return InputMessageDocument(
      document: InputFile.fromJson(json['document'] ?? <String, dynamic>{}),
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      disableContentTypeDetection:
          json['disable_content_type_detection'] ?? false,
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "disable_content_type_detection": this.disableContentTypeDetection,
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePhoto extends InputMessageContent {
  /// A photo message
  InputMessagePhoto(
      {required this.photo,
      required this.thumbnail,
      required this.addedStickerFileIds,
      required this.width,
      required this.height,
      required this.caption,
      required this.ttl});

  /// [photo] Photo to send
  InputFile photo;

  /// [thumbnail] Photo thumbnail to be sent, this is sent to the other party in secret chats only
  InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable
  List<int> addedStickerFileIds;

  /// [width] Photo width
  int width;

  /// [height] Photo height
  int height;

  /// [caption] Photo caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// [ttl] Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  int ttl;

  /// Parse from a json
  factory InputMessagePhoto.fromJson(Map<String, dynamic> json) {
    return InputMessagePhoto(
      photo: InputFile.fromJson(json['photo'] ?? <String, dynamic>{}),
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? [])
          .map((item) => item ?? 0)
          .toList()),
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
      ttl: json['ttl'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "width": this.width,
      "height": this.height,
      "caption": this.caption.toJson(),
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageSticker extends InputMessageContent {
  /// A sticker message
  InputMessageSticker(
      {required this.sticker,
      required this.thumbnail,
      required this.width,
      required this.height,
      required this.emoji});

  /// [sticker] Sticker to be sent
  InputFile sticker;

  /// [thumbnail] Sticker thumbnail, if available
  InputThumbnail thumbnail;

  /// [width] Sticker width
  int width;

  /// [height] Sticker height
  int height;

  /// [emoji] Emoji used to choose the sticker
  String emoji;

  /// Parse from a json
  factory InputMessageSticker.fromJson(Map<String, dynamic> json) {
    return InputMessageSticker(
      sticker: InputFile.fromJson(json['sticker'] ?? <String, dynamic>{}),
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      emoji: json['emoji'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "width": this.width,
      "height": this.height,
      "emoji": this.emoji,
    };
  }

  static const CONSTRUCTOR = 'inputMessageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideo extends InputMessageContent {
  /// A video message
  InputMessageVideo(
      {required this.video,
      required this.thumbnail,
      required this.addedStickerFileIds,
      required this.duration,
      required this.width,
      required this.height,
      required this.supportsStreaming,
      required this.caption,
      required this.ttl});

  /// [video] Video to be sent
  InputFile video;

  /// [thumbnail] Video thumbnail, if available
  InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable
  List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  int duration;

  /// [width] Video width
  int width;

  /// [height] Video height
  int height;

  /// [supportsStreaming] True, if the video should be tried to be streamed
  bool supportsStreaming;

  /// [caption] Video caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  int ttl;

  /// Parse from a json
  factory InputMessageVideo.fromJson(Map<String, dynamic> json) {
    return InputMessageVideo(
      video: InputFile.fromJson(json['video'] ?? <String, dynamic>{}),
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? [])
          .map((item) => item ?? 0)
          .toList()),
      duration: json['duration'] ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      supportsStreaming: json['supports_streaming'] ?? false,
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
      ttl: json['ttl'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "supports_streaming": this.supportsStreaming,
      "caption": this.caption.toJson(),
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideoNote extends InputMessageContent {
  /// A video note message
  InputMessageVideoNote(
      {required this.videoNote,
      required this.thumbnail,
      required this.duration,
      required this.length});

  /// [videoNote] Video note to be sent
  InputFile videoNote;

  /// [thumbnail] Video thumbnail, if available
  InputThumbnail thumbnail;

  /// [duration] Duration of the video, in seconds
  int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  int length;

  /// Parse from a json
  factory InputMessageVideoNote.fromJson(Map<String, dynamic> json) {
    return InputMessageVideoNote(
      videoNote: InputFile.fromJson(json['video_note'] ?? <String, dynamic>{}),
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      duration: json['duration'] ?? 0,
      length: json['length'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "duration": this.duration,
      "length": this.length,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVoiceNote extends InputMessageContent {
  /// A voice note message
  InputMessageVoiceNote(
      {required this.voiceNote,
      required this.duration,
      required this.waveform,
      required this.caption});

  /// [voiceNote] Voice note to be sent
  InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds
  int duration;

  /// [waveform] Waveform representation of the voice note, in 5-bit format
  String waveform;

  /// [caption] Voice note caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// Parse from a json
  factory InputMessageVoiceNote.fromJson(Map<String, dynamic> json) {
    return InputMessageVoiceNote(
      voiceNote: InputFile.fromJson(json['voice_note'] ?? <String, dynamic>{}),
      duration: json['duration'] ?? 0,
      waveform: json['waveform'] ?? "",
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote.toJson(),
      "duration": this.duration,
      "waveform": this.waveform,
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageLocation extends InputMessageContent {
  /// A message with a location
  InputMessageLocation(
      {required this.location,
      required this.livePeriod,
      required this.heading,
      required this.proximityAlertRadius});

  /// [location] Location to be sent
  Location location;

  /// [livePeriod] Period for which the location can be updated, in seconds; should be between 60 and 86400 for a live location and 0 otherwise
  int livePeriod;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  int proximityAlertRadius;

  /// Parse from a json
  factory InputMessageLocation.fromJson(Map<String, dynamic> json) {
    return InputMessageLocation(
      location: Location.fromJson(json['location'] ?? <String, dynamic>{}),
      livePeriod: json['live_period'] ?? 0,
      heading: json['heading'] ?? 0,
      proximityAlertRadius: json['proximity_alert_radius'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "live_period": this.livePeriod,
      "heading": this.heading,
      "proximity_alert_radius": this.proximityAlertRadius,
    };
  }

  static const CONSTRUCTOR = 'inputMessageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVenue extends InputMessageContent {
  /// A message with information about a venue
  InputMessageVenue({required this.venue});

  /// [venue] Venue to send
  Venue venue;

  /// Parse from a json
  factory InputMessageVenue.fromJson(Map<String, dynamic> json) {
    return InputMessageVenue(
      venue: Venue.fromJson(json['venue'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "venue": this.venue.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageContact extends InputMessageContent {
  /// A message containing a user contact
  InputMessageContact({required this.contact});

  /// [contact] Contact to send
  Contact contact;

  /// Parse from a json
  factory InputMessageContact.fromJson(Map<String, dynamic> json) {
    return InputMessageContact(
      contact: Contact.fromJson(json['contact'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": this.contact.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDice extends InputMessageContent {
  /// A dice message
  InputMessageDice({required this.emoji, required this.clearDraft});

  /// [emoji] Emoji on which the dice throw animation is based
  String emoji;

  /// [clearDraft] True, if a chat message draft should be deleted
  bool clearDraft;

  /// Parse from a json
  factory InputMessageDice.fromJson(Map<String, dynamic> json) {
    return InputMessageDice(
      emoji: json['emoji'] ?? "",
      clearDraft: json['clear_draft'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": this.emoji,
      "clear_draft": this.clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageDice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageGame extends InputMessageContent {
  /// A message with a game; not supported for channels or secret chats
  InputMessageGame({required this.botUserId, required this.gameShortName});

  /// [botUserId] User identifier of the bot that owns the game
  int botUserId;

  /// [gameShortName] Short name of the game
  String gameShortName;

  /// Parse from a json
  factory InputMessageGame.fromJson(Map<String, dynamic> json) {
    return InputMessageGame(
      botUserId: json['bot_user_id'] ?? 0,
      gameShortName: json['game_short_name'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "game_short_name": this.gameShortName,
    };
  }

  static const CONSTRUCTOR = 'inputMessageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageInvoice extends InputMessageContent {
  /// A message with an invoice; can be used only by bots and only in private chats
  InputMessageInvoice(
      {required this.invoice,
      required this.title,
      required this.description,
      required this.photoUrl,
      required this.photoSize,
      required this.photoWidth,
      required this.photoHeight,
      required this.payload,
      required this.providerToken,
      required this.providerData,
      required this.startParameter});

  /// [invoice] Invoice
  Invoice invoice;

  /// [title] Product title; 1-32 characters
  String title;

  /// [description] Product description; 0-255 characters
  String description;

  /// [photoUrl] Product photo URL; optional
  String photoUrl;

  /// [photoSize] Product photo size
  int photoSize;

  /// [photoWidth] Product photo width
  int photoWidth;

  /// [photoHeight] Product photo height
  int photoHeight;

  /// [payload] The invoice payload
  String payload;

  /// [providerToken] Payment provider token
  String providerToken;

  /// [providerData] JSON-encoded data about the invoice, which will be shared with the payment provider
  String providerData;

  /// [startParameter] Unique invoice bot start_parameter for the generation of this invoice
  String startParameter;

  /// Parse from a json
  factory InputMessageInvoice.fromJson(Map<String, dynamic> json) {
    return InputMessageInvoice(
      invoice: Invoice.fromJson(json['invoice'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      photoUrl: json['photo_url'] ?? "",
      photoSize: json['photo_size'] ?? 0,
      photoWidth: json['photo_width'] ?? 0,
      photoHeight: json['photo_height'] ?? 0,
      payload: json['payload'] ?? "",
      providerToken: json['provider_token'] ?? "",
      providerData: json['provider_data'] ?? "",
      startParameter: json['start_parameter'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice": this.invoice.toJson(),
      "title": this.title,
      "description": this.description,
      "photo_url": this.photoUrl,
      "photo_size": this.photoSize,
      "photo_width": this.photoWidth,
      "photo_height": this.photoHeight,
      "payload": this.payload,
      "provider_token": this.providerToken,
      "provider_data": this.providerData,
      "start_parameter": this.startParameter,
    };
  }

  static const CONSTRUCTOR = 'inputMessageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePoll extends InputMessageContent {
  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
  InputMessagePoll(
      {required this.question,
      required this.options,
      required this.isAnonymous,
      required this.type,
      required this.openPeriod,
      required this.closeDate,
      required this.isClosed});

  /// [question] Poll question, 1-255 characters (up to 300 characters for bots)
  String question;

  /// [options] List of poll answer options, 2-10 strings 1-100 characters each
  List<String> options;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  bool isAnonymous;

  /// [type] Type of the poll
  PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds; for bots only
  int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will be automatically closed; for bots only
  int closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots only
  bool isClosed;

  /// Parse from a json
  factory InputMessagePoll.fromJson(Map<String, dynamic> json) {
    return InputMessagePoll(
      question: json['question'] ?? "",
      options: List<String>.from(
          (json['options'] ?? []).map((item) => item ?? "").toList()),
      isAnonymous: json['is_anonymous'] ?? false,
      type: PollType.fromJson(json['type'] ?? <String, dynamic>{}),
      openPeriod: json['open_period'] ?? 0,
      closeDate: json['close_date'] ?? 0,
      isClosed: json['is_closed'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": this.question,
      "options": this.options.map((i) => i).toList(),
      "is_anonymous": this.isAnonymous,
      "type": this.type.toJson(),
      "open_period": this.openPeriod,
      "close_date": this.closeDate,
      "is_closed": this.isClosed,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageForwarded extends InputMessageContent {
  /// A forwarded message
  InputMessageForwarded(
      {required this.fromChatId,
      required this.messageId,
      required this.inGameShare,
      required this.copyOptions});

  /// [fromChatId] Identifier for the chat this forwarded message came from
  int fromChatId;

  /// [messageId] Identifier of the message to forward
  int messageId;

  /// [inGameShare] True, if a game message should be shared within a launched game; applies only to game messages
  bool inGameShare;

  /// [copyOptions] Options to be used to copy content of the message without a link to the original message
  MessageCopyOptions copyOptions;

  /// Parse from a json
  factory InputMessageForwarded.fromJson(Map<String, dynamic> json) {
    return InputMessageForwarded(
      fromChatId: json['from_chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      inGameShare: json['in_game_share'] ?? false,
      copyOptions: MessageCopyOptions.fromJson(
          json['copy_options'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "from_chat_id": this.fromChatId,
      "message_id": this.messageId,
      "in_game_share": this.inGameShare,
      "copy_options": this.copyOptions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageForwarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}
