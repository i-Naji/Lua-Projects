part of '../tdapi.dart';

class MessageContent extends TdObject {
  /// Contains the content of a message
  MessageContent();

  /// a MessageContent return type can be :
  /// * MessageText
  /// * MessageAnimation
  /// * MessageAudio
  /// * MessageDocument
  /// * MessagePhoto
  /// * MessageExpiredPhoto
  /// * MessageSticker
  /// * MessageVideo
  /// * MessageExpiredVideo
  /// * MessageVideoNote
  /// * MessageVoiceNote
  /// * MessageLocation
  /// * MessageVenue
  /// * MessageContact
  /// * MessageDice
  /// * MessageGame
  /// * MessagePoll
  /// * MessageInvoice
  /// * MessageCall
  /// * MessageVoiceChatStarted
  /// * MessageVoiceChatEnded
  /// * MessageInviteVoiceChatParticipants
  /// * MessageBasicGroupChatCreate
  /// * MessageSupergroupChatCreate
  /// * MessageChatChangeTitle
  /// * MessageChatChangePhoto
  /// * MessageChatDeletePhoto
  /// * MessageChatAddMembers
  /// * MessageChatJoinByLink
  /// * MessageChatDeleteMember
  /// * MessageChatUpgradeTo
  /// * MessageChatUpgradeFrom
  /// * MessagePinMessage
  /// * MessageScreenshotTaken
  /// * MessageChatSetTtl
  /// * MessageCustomServiceAction
  /// * MessageGameScore
  /// * MessagePaymentSuccessful
  /// * MessagePaymentSuccessfulBot
  /// * MessageContactRegistered
  /// * MessageWebsiteConnected
  /// * MessagePassportDataSent
  /// * MessagePassportDataReceived
  /// * MessageProximityAlertTriggered
  /// * MessageUnsupported
  factory MessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageText.CONSTRUCTOR:
        return MessageText.fromJson(json);
      case MessageAnimation.CONSTRUCTOR:
        return MessageAnimation.fromJson(json);
      case MessageAudio.CONSTRUCTOR:
        return MessageAudio.fromJson(json);
      case MessageDocument.CONSTRUCTOR:
        return MessageDocument.fromJson(json);
      case MessagePhoto.CONSTRUCTOR:
        return MessagePhoto.fromJson(json);
      case MessageExpiredPhoto.CONSTRUCTOR:
        return MessageExpiredPhoto.fromJson(json);
      case MessageSticker.CONSTRUCTOR:
        return MessageSticker.fromJson(json);
      case MessageVideo.CONSTRUCTOR:
        return MessageVideo.fromJson(json);
      case MessageExpiredVideo.CONSTRUCTOR:
        return MessageExpiredVideo.fromJson(json);
      case MessageVideoNote.CONSTRUCTOR:
        return MessageVideoNote.fromJson(json);
      case MessageVoiceNote.CONSTRUCTOR:
        return MessageVoiceNote.fromJson(json);
      case MessageLocation.CONSTRUCTOR:
        return MessageLocation.fromJson(json);
      case MessageVenue.CONSTRUCTOR:
        return MessageVenue.fromJson(json);
      case MessageContact.CONSTRUCTOR:
        return MessageContact.fromJson(json);
      case MessageDice.CONSTRUCTOR:
        return MessageDice.fromJson(json);
      case MessageGame.CONSTRUCTOR:
        return MessageGame.fromJson(json);
      case MessagePoll.CONSTRUCTOR:
        return MessagePoll.fromJson(json);
      case MessageInvoice.CONSTRUCTOR:
        return MessageInvoice.fromJson(json);
      case MessageCall.CONSTRUCTOR:
        return MessageCall.fromJson(json);
      case MessageVoiceChatStarted.CONSTRUCTOR:
        return MessageVoiceChatStarted.fromJson(json);
      case MessageVoiceChatEnded.CONSTRUCTOR:
        return MessageVoiceChatEnded.fromJson(json);
      case MessageInviteVoiceChatParticipants.CONSTRUCTOR:
        return MessageInviteVoiceChatParticipants.fromJson(json);
      case MessageBasicGroupChatCreate.CONSTRUCTOR:
        return MessageBasicGroupChatCreate.fromJson(json);
      case MessageSupergroupChatCreate.CONSTRUCTOR:
        return MessageSupergroupChatCreate.fromJson(json);
      case MessageChatChangeTitle.CONSTRUCTOR:
        return MessageChatChangeTitle.fromJson(json);
      case MessageChatChangePhoto.CONSTRUCTOR:
        return MessageChatChangePhoto.fromJson(json);
      case MessageChatDeletePhoto.CONSTRUCTOR:
        return MessageChatDeletePhoto.fromJson(json);
      case MessageChatAddMembers.CONSTRUCTOR:
        return MessageChatAddMembers.fromJson(json);
      case MessageChatJoinByLink.CONSTRUCTOR:
        return MessageChatJoinByLink.fromJson(json);
      case MessageChatDeleteMember.CONSTRUCTOR:
        return MessageChatDeleteMember.fromJson(json);
      case MessageChatUpgradeTo.CONSTRUCTOR:
        return MessageChatUpgradeTo.fromJson(json);
      case MessageChatUpgradeFrom.CONSTRUCTOR:
        return MessageChatUpgradeFrom.fromJson(json);
      case MessagePinMessage.CONSTRUCTOR:
        return MessagePinMessage.fromJson(json);
      case MessageScreenshotTaken.CONSTRUCTOR:
        return MessageScreenshotTaken.fromJson(json);
      case MessageChatSetTtl.CONSTRUCTOR:
        return MessageChatSetTtl.fromJson(json);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return MessageCustomServiceAction.fromJson(json);
      case MessageGameScore.CONSTRUCTOR:
        return MessageGameScore.fromJson(json);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return MessagePaymentSuccessful.fromJson(json);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessageContactRegistered.CONSTRUCTOR:
        return MessageContactRegistered.fromJson(json);
      case MessageWebsiteConnected.CONSTRUCTOR:
        return MessageWebsiteConnected.fromJson(json);
      case MessagePassportDataSent.CONSTRUCTOR:
        return MessagePassportDataSent.fromJson(json);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return MessagePassportDataReceived.fromJson(json);
      case MessageProximityAlertTriggered.CONSTRUCTOR:
        return MessageProximityAlertTriggered.fromJson(json);
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
      default:
        return MessageContent();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'messageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageText extends MessageContent {
  /// A text message
  MessageText({required this.text, this.webPage});

  /// [text] Text of the message
  FormattedText text;

  /// [webPage] A preview of the web page that's mentioned in the text; may be null
  WebPage? webPage;

  /// Parse from a json
  factory MessageText.fromJson(Map<String, dynamic> json) {
    return MessageText(
      text: FormattedText.fromJson(json['text'] ?? <String, dynamic>{}),
      webPage: WebPage.fromJson(json['web_page'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "web_page": this.webPage == null ? null : this.webPage!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAnimation extends MessageContent {
  /// An animation message (GIF-style).
  MessageAnimation(
      {required this.animation, required this.caption, required this.isSecret});

  /// [animation] The animation description
  Animation animation;

  /// [caption] Animation caption
  FormattedText caption;

  /// [isSecret] True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  factory MessageAnimation.fromJson(Map<String, dynamic> json) {
    return MessageAnimation(
      animation: Animation.fromJson(json['animation'] ?? <String, dynamic>{}),
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
      isSecret: json['is_secret'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAudio extends MessageContent {
  /// An audio message
  MessageAudio({required this.audio, required this.caption});

  /// [audio] The audio description
  Audio audio;

  /// [caption] Audio caption
  FormattedText caption;

  /// Parse from a json
  factory MessageAudio.fromJson(Map<String, dynamic> json) {
    return MessageAudio(
      audio: Audio.fromJson(json['audio'] ?? <String, dynamic>{}),
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio.toJson(),
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageDocument extends MessageContent {
  /// A document message (general file)
  MessageDocument({required this.document, required this.caption});

  /// [document] The document description
  Document document;

  /// [caption] Document caption
  FormattedText caption;

  /// Parse from a json
  factory MessageDocument.fromJson(Map<String, dynamic> json) {
    return MessageDocument(
      document: Document.fromJson(json['document'] ?? <String, dynamic>{}),
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document.toJson(),
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePhoto extends MessageContent {
  /// A photo message
  MessagePhoto(
      {required this.photo, required this.caption, required this.isSecret});

  /// [photo] The photo description
  Photo photo;

  /// [caption] Photo caption
  FormattedText caption;

  /// [isSecret] True, if the photo must be blurred and must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  factory MessagePhoto.fromJson(Map<String, dynamic> json) {
    return MessagePhoto(
      photo: Photo.fromJson(json['photo'] ?? <String, dynamic>{}),
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
      isSecret: json['is_secret'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredPhoto extends MessageContent {
  /// An expired photo message (self-destructed after TTL has elapsed)
  MessageExpiredPhoto();

  /// Parse from a json
  factory MessageExpiredPhoto.fromJson(Map<String, dynamic> json) {
    return MessageExpiredPhoto();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageExpiredPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSticker extends MessageContent {
  /// A sticker message
  MessageSticker({required this.sticker});

  /// [sticker] The sticker description
  Sticker sticker;

  /// Parse from a json
  factory MessageSticker.fromJson(Map<String, dynamic> json) {
    return MessageSticker(
      sticker: Sticker.fromJson(json['sticker'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideo extends MessageContent {
  /// A video message
  MessageVideo(
      {required this.video, required this.caption, required this.isSecret});

  /// [video] The video description
  Video video;

  /// [caption] Video caption
  FormattedText caption;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  factory MessageVideo.fromJson(Map<String, dynamic> json) {
    return MessageVideo(
      video: Video.fromJson(json['video'] ?? <String, dynamic>{}),
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
      isSecret: json['is_secret'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredVideo extends MessageContent {
  /// An expired video message (self-destructed after TTL has elapsed)
  MessageExpiredVideo();

  /// Parse from a json
  factory MessageExpiredVideo.fromJson(Map<String, dynamic> json) {
    return MessageExpiredVideo();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageExpiredVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideoNote extends MessageContent {
  /// A video note message
  MessageVideoNote(
      {required this.videoNote,
      required this.isViewed,
      required this.isSecret});

  /// [videoNote] The video note description
  VideoNote videoNote;

  /// [isViewed] True, if at least one of the recipients has viewed the video note
  bool isViewed;

  /// [isSecret] True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  factory MessageVideoNote.fromJson(Map<String, dynamic> json) {
    return MessageVideoNote(
      videoNote: VideoNote.fromJson(json['video_note'] ?? <String, dynamic>{}),
      isViewed: json['is_viewed'] ?? false,
      isSecret: json['is_secret'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote.toJson(),
      "is_viewed": this.isViewed,
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceNote extends MessageContent {
  /// A voice note message
  MessageVoiceNote(
      {required this.voiceNote,
      required this.caption,
      required this.isListened});

  /// [voiceNote] The voice note description
  VoiceNote voiceNote;

  /// [caption] Voice note caption
  FormattedText caption;

  /// [isListened] True, if at least one of the recipients has listened to the voice note
  bool isListened;

  /// Parse from a json
  factory MessageVoiceNote.fromJson(Map<String, dynamic> json) {
    return MessageVoiceNote(
      voiceNote: VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{}),
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
      isListened: json['is_listened'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote.toJson(),
      "caption": this.caption.toJson(),
      "is_listened": this.isListened,
    };
  }

  static const CONSTRUCTOR = 'messageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageLocation extends MessageContent {
  /// A message with a location
  MessageLocation(
      {required this.location,
      required this.livePeriod,
      required this.expiresIn,
      required this.heading,
      required this.proximityAlertRadius});

  /// [location] The location description
  Location location;

  /// [livePeriod] Time relative to the message send date, for which the location can be updated, in seconds
  int livePeriod;

  /// [expiresIn] Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
  int expiresIn;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown
  int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only for the message sender
  int proximityAlertRadius;

  /// Parse from a json
  factory MessageLocation.fromJson(Map<String, dynamic> json) {
    return MessageLocation(
      location: Location.fromJson(json['location'] ?? <String, dynamic>{}),
      livePeriod: json['live_period'] ?? 0,
      expiresIn: json['expires_in'] ?? 0,
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
      "expires_in": this.expiresIn,
      "heading": this.heading,
      "proximity_alert_radius": this.proximityAlertRadius,
    };
  }

  static const CONSTRUCTOR = 'messageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVenue extends MessageContent {
  /// A message with information about a venue
  MessageVenue({required this.venue});

  /// [venue] The venue description
  Venue venue;

  /// Parse from a json
  factory MessageVenue.fromJson(Map<String, dynamic> json) {
    return MessageVenue(
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

  static const CONSTRUCTOR = 'messageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContact extends MessageContent {
  /// A message with a user contact
  MessageContact({required this.contact});

  /// [contact] The contact description
  Contact contact;

  /// Parse from a json
  factory MessageContact.fromJson(Map<String, dynamic> json) {
    return MessageContact(
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

  static const CONSTRUCTOR = 'messageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageDice extends MessageContent {
  /// A dice message. The dice value is randomly generated by the server
  MessageDice(
      {this.initialState,
      this.finalState,
      required this.emoji,
      required this.value,
      required this.successAnimationFrameNumber});

  /// [initialState] The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  DiceStickers? initialState;

  /// [finalState] The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  DiceStickers? finalState;

  /// [emoji] Emoji on which the dice throw animation is based
  String emoji;

  /// [value] The dice value. If the value is 0, the dice don't have final state yet
  int value;

  /// [successAnimationFrameNumber] Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
  int successAnimationFrameNumber;

  /// Parse from a json
  factory MessageDice.fromJson(Map<String, dynamic> json) {
    return MessageDice(
      initialState:
          DiceStickers.fromJson(json['initial_state'] ?? <String, dynamic>{}),
      finalState:
          DiceStickers.fromJson(json['final_state'] ?? <String, dynamic>{}),
      emoji: json['emoji'] ?? "",
      value: json['value'] ?? 0,
      successAnimationFrameNumber: json['success_animation_frame_number'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "initial_state":
          this.initialState == null ? null : this.initialState!.toJson(),
      "final_state": this.finalState == null ? null : this.finalState!.toJson(),
      "emoji": this.emoji,
      "value": this.value,
      "success_animation_frame_number": this.successAnimationFrameNumber,
    };
  }

  static const CONSTRUCTOR = 'messageDice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGame extends MessageContent {
  /// A message with a game
  MessageGame({required this.game});

  /// [game] The game description
  Game game;

  /// Parse from a json
  factory MessageGame.fromJson(Map<String, dynamic> json) {
    return MessageGame(
      game: Game.fromJson(json['game'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game": this.game.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePoll extends MessageContent {
  /// A message with a poll
  MessagePoll({required this.poll});

  /// [poll] The poll description
  Poll poll;

  /// Parse from a json
  factory MessagePoll.fromJson(Map<String, dynamic> json) {
    return MessagePoll(
      poll: Poll.fromJson(json['poll'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll": this.poll.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageInvoice extends MessageContent {
  /// A message with an invoice from a bot
  MessageInvoice(
      {required this.title,
      required this.description,
      this.photo,
      required this.currency,
      required this.totalAmount,
      required this.startParameter,
      required this.isTest,
      required this.needShippingAddress,
      required this.receiptMessageId});

  /// [title] Product title
  String title;

  /// [description] Product description
  String description;

  /// [photo] Product photo; may be null
  Photo? photo;

  /// [currency] Currency for the product price
  String currency;

  /// [totalAmount] Product total price in the minimal quantity of the currency
  int totalAmount;

  /// [startParameter] Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}
  String startParameter;

  /// [isTest] True, if the invoice is a test invoice
  bool isTest;

  /// [needShippingAddress] True, if the shipping address should be specified
  bool needShippingAddress;

  /// [receiptMessageId] The identifier of the message with the receipt, after the product has been purchased
  int receiptMessageId;

  /// Parse from a json
  factory MessageInvoice.fromJson(Map<String, dynamic> json) {
    return MessageInvoice(
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      photo: Photo.fromJson(json['photo'] ?? <String, dynamic>{}),
      currency: json['currency'] ?? "",
      totalAmount: json['total_amount'] ?? 0,
      startParameter: json['start_parameter'] ?? "",
      isTest: json['is_test'] ?? false,
      needShippingAddress: json['need_shipping_address'] ?? false,
      receiptMessageId: json['receipt_message_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "description": this.description,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "start_parameter": this.startParameter,
      "is_test": this.isTest,
      "need_shipping_address": this.needShippingAddress,
      "receipt_message_id": this.receiptMessageId,
    };
  }

  static const CONSTRUCTOR = 'messageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCall extends MessageContent {
  /// A message with information about an ended call
  MessageCall(
      {required this.isVideo,
      required this.discardReason,
      required this.duration});

  /// [isVideo] True, if the call was a video call
  bool isVideo;

  /// [discardReason] Reason why the call was discarded
  CallDiscardReason discardReason;

  /// [duration] Call duration, in seconds
  int duration;

  /// Parse from a json
  factory MessageCall.fromJson(Map<String, dynamic> json) {
    return MessageCall(
      isVideo: json['is_video'] ?? false,
      discardReason: CallDiscardReason.fromJson(
          json['discard_reason'] ?? <String, dynamic>{}),
      duration: json['duration'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_video": this.isVideo,
      "discard_reason": this.discardReason.toJson(),
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'messageCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceChatStarted extends MessageContent {
  /// A newly created voice chat
  MessageVoiceChatStarted({required this.groupCallId});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  int groupCallId;

  /// Parse from a json
  factory MessageVoiceChatStarted.fromJson(Map<String, dynamic> json) {
    return MessageVoiceChatStarted(
      groupCallId: json['group_call_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
    };
  }

  static const CONSTRUCTOR = 'messageVoiceChatStarted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceChatEnded extends MessageContent {
  /// A message with information about an ended voice chat
  MessageVoiceChatEnded({required this.duration});

  /// [duration] Call duration
  int duration;

  /// Parse from a json
  factory MessageVoiceChatEnded.fromJson(Map<String, dynamic> json) {
    return MessageVoiceChatEnded(
      duration: json['duration'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'messageVoiceChatEnded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageInviteVoiceChatParticipants extends MessageContent {
  /// A message with information about an invite to a voice chat
  MessageInviteVoiceChatParticipants(
      {required this.groupCallId, required this.userIds});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  int groupCallId;

  /// [userIds] Invited user identifiers
  List<int> userIds;

  /// Parse from a json
  factory MessageInviteVoiceChatParticipants.fromJson(
      Map<String, dynamic> json) {
    return MessageInviteVoiceChatParticipants(
      groupCallId: json['group_call_id'] ?? 0,
      userIds: List<int>.from(
          (json['user_ids'] ?? []).map((item) => item ?? 0).toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "user_ids": this.userIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageInviteVoiceChatParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageBasicGroupChatCreate extends MessageContent {
  /// A newly created basic group
  MessageBasicGroupChatCreate(
      {required this.title, required this.memberUserIds});

  /// [title] Title of the basic group
  String title;

  /// [memberUserIds] User identifiers of members in the basic group
  List<int> memberUserIds;

  /// Parse from a json
  factory MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) {
    return MessageBasicGroupChatCreate(
      title: json['title'] ?? "",
      memberUserIds: List<int>.from(
          (json['member_user_ids'] ?? []).map((item) => item ?? 0).toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageBasicGroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSupergroupChatCreate extends MessageContent {
  /// A newly created supergroup or channel
  MessageSupergroupChatCreate({required this.title});

  /// [title] Title of the supergroup or channel
  String title;

  /// Parse from a json
  factory MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) {
    return MessageSupergroupChatCreate(
      title: json['title'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'messageSupergroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangeTitle extends MessageContent {
  /// An updated chat title
  MessageChatChangeTitle({required this.title});

  /// [title] New chat title
  String title;

  /// Parse from a json
  factory MessageChatChangeTitle.fromJson(Map<String, dynamic> json) {
    return MessageChatChangeTitle(
      title: json['title'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'messageChatChangeTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangePhoto extends MessageContent {
  /// An updated chat photo
  MessageChatChangePhoto({required this.photo});

  /// [photo] New chat photo
  ChatPhoto photo;

  /// Parse from a json
  factory MessageChatChangePhoto.fromJson(Map<String, dynamic> json) {
    return MessageChatChangePhoto(
      photo: ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageChatChangePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeletePhoto extends MessageContent {
  /// A deleted chat photo
  MessageChatDeletePhoto();

  /// Parse from a json
  factory MessageChatDeletePhoto.fromJson(Map<String, dynamic> json) {
    return MessageChatDeletePhoto();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageChatDeletePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatAddMembers extends MessageContent {
  /// New chat members were added
  MessageChatAddMembers({required this.memberUserIds});

  /// [memberUserIds] User identifiers of the new members
  List<int> memberUserIds;

  /// Parse from a json
  factory MessageChatAddMembers.fromJson(Map<String, dynamic> json) {
    return MessageChatAddMembers(
      memberUserIds: List<int>.from(
          (json['member_user_ids'] ?? []).map((item) => item ?? 0).toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageChatAddMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatJoinByLink extends MessageContent {
  /// A new member joined the chat by invite link
  MessageChatJoinByLink();

  /// Parse from a json
  factory MessageChatJoinByLink.fromJson(Map<String, dynamic> json) {
    return MessageChatJoinByLink();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageChatJoinByLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeleteMember extends MessageContent {
  /// A chat member was deleted
  MessageChatDeleteMember({required this.userId});

  /// [userId] User identifier of the deleted chat member
  int userId;

  /// Parse from a json
  factory MessageChatDeleteMember.fromJson(Map<String, dynamic> json) {
    return MessageChatDeleteMember(
      userId: json['user_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'messageChatDeleteMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeTo extends MessageContent {
  /// A basic group was upgraded to a supergroup and was deactivated as the result
  MessageChatUpgradeTo({required this.supergroupId});

  /// [supergroupId] Identifier of the supergroup to which the basic group was upgraded
  int supergroupId;

  /// Parse from a json
  factory MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) {
    return MessageChatUpgradeTo(
      supergroupId: json['supergroup_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
    };
  }

  static const CONSTRUCTOR = 'messageChatUpgradeTo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeFrom extends MessageContent {
  /// A supergroup has been created from a basic group
  MessageChatUpgradeFrom({required this.title, required this.basicGroupId});

  /// [title] Title of the newly created supergroup
  String title;

  /// [basicGroupId] The identifier of the original basic group
  int basicGroupId;

  /// Parse from a json
  factory MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) {
    return MessageChatUpgradeFrom(
      title: json['title'] ?? "",
      basicGroupId: json['basic_group_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "basic_group_id": this.basicGroupId,
    };
  }

  static const CONSTRUCTOR = 'messageChatUpgradeFrom';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePinMessage extends MessageContent {
  /// A message has been pinned
  MessagePinMessage({required this.messageId});

  /// [messageId] Identifier of the pinned message, can be an identifier of a deleted message or 0
  int messageId;

  /// Parse from a json
  factory MessagePinMessage.fromJson(Map<String, dynamic> json) {
    return MessagePinMessage(
      messageId: json['message_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'messagePinMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageScreenshotTaken extends MessageContent {
  /// A screenshot of a message in the chat has been taken
  MessageScreenshotTaken();

  /// Parse from a json
  factory MessageScreenshotTaken.fromJson(Map<String, dynamic> json) {
    return MessageScreenshotTaken();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageScreenshotTaken';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatSetTtl extends MessageContent {
  /// The TTL (Time To Live) setting messages in a secret chat has been changed
  MessageChatSetTtl({required this.ttl});

  /// [ttl] New TTL
  int ttl;

  /// Parse from a json
  factory MessageChatSetTtl.fromJson(Map<String, dynamic> json) {
    return MessageChatSetTtl(
      ttl: json['ttl'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'messageChatSetTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCustomServiceAction extends MessageContent {
  /// A non-standard action has happened in the chat
  MessageCustomServiceAction({required this.text});

  /// [text] Message text to be shown in the chat
  String text;

  /// Parse from a json
  factory MessageCustomServiceAction.fromJson(Map<String, dynamic> json) {
    return MessageCustomServiceAction(
      text: json['text'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
    };
  }

  static const CONSTRUCTOR = 'messageCustomServiceAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGameScore extends MessageContent {
  /// A new high score was achieved in a game
  MessageGameScore(
      {required this.gameMessageId, required this.gameId, required this.score});

  /// [gameMessageId] Identifier of the message with the game, can be an identifier of a deleted message
  int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented in the message with the game
  int gameId;

  /// [score] New score
  int score;

  /// Parse from a json
  factory MessageGameScore.fromJson(Map<String, dynamic> json) {
    return MessageGameScore(
      gameMessageId: json['game_message_id'] ?? 0,
      gameId: int.tryParse(json['game_id'] ?? "") ?? 0,
      score: json['score'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game_message_id": this.gameMessageId,
      "game_id": this.gameId,
      "score": this.score,
    };
  }

  static const CONSTRUCTOR = 'messageGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessful extends MessageContent {
  /// A payment has been completed
  MessagePaymentSuccessful(
      {required this.invoiceMessageId,
      required this.currency,
      required this.totalAmount});

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
  int invoiceMessageId;

  /// [currency] Currency for the price of the product
  String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int totalAmount;

  /// Parse from a json
  factory MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) {
    return MessagePaymentSuccessful(
      invoiceMessageId: json['invoice_message_id'] ?? 0,
      currency: json['currency'] ?? "",
      totalAmount: json['total_amount'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice_message_id": this.invoiceMessageId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
    };
  }

  static const CONSTRUCTOR = 'messagePaymentSuccessful';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessfulBot extends MessageContent {
  /// A payment has been completed; for bots only
  MessagePaymentSuccessfulBot(
      {required this.invoiceMessageId,
      required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      required this.shippingOptionId,
      this.orderInfo,
      required this.telegramPaymentChargeId,
      required this.providerPaymentChargeId});

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
  int invoiceMessageId;

  /// [currency] Currency for price of the product
  String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int totalAmount;

  /// [invoicePayload] Invoice payload
  String invoicePayload;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user; may be empty if not applicable
  String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  OrderInfo? orderInfo;

  /// [telegramPaymentChargeId] Telegram payment identifier
  String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  String providerPaymentChargeId;

  /// Parse from a json
  factory MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) {
    return MessagePaymentSuccessfulBot(
      invoiceMessageId: json['invoice_message_id'] ?? 0,
      currency: json['currency'] ?? "",
      totalAmount: json['total_amount'] ?? 0,
      invoicePayload: json['invoice_payload'] ?? "",
      shippingOptionId: json['shipping_option_id'] ?? "",
      orderInfo: OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{}),
      telegramPaymentChargeId: json['telegram_payment_charge_id'] ?? "",
      providerPaymentChargeId: json['provider_payment_charge_id'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice_message_id": this.invoiceMessageId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "invoice_payload": this.invoicePayload,
      "shipping_option_id": this.shippingOptionId,
      "order_info": this.orderInfo == null ? null : this.orderInfo!.toJson(),
      "telegram_payment_charge_id": this.telegramPaymentChargeId,
      "provider_payment_charge_id": this.providerPaymentChargeId,
    };
  }

  static const CONSTRUCTOR = 'messagePaymentSuccessfulBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContactRegistered extends MessageContent {
  /// A contact has registered with Telegram
  MessageContactRegistered();

  /// Parse from a json
  factory MessageContactRegistered.fromJson(Map<String, dynamic> json) {
    return MessageContactRegistered();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageContactRegistered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageWebsiteConnected extends MessageContent {
  /// The current user has connected a website by logging in using Telegram Login Widget on it
  MessageWebsiteConnected({required this.domainName});

  /// [domainName] Domain name of the connected website
  String domainName;

  /// Parse from a json
  factory MessageWebsiteConnected.fromJson(Map<String, dynamic> json) {
    return MessageWebsiteConnected(
      domainName: json['domain_name'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "domain_name": this.domainName,
    };
  }

  static const CONSTRUCTOR = 'messageWebsiteConnected';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataSent extends MessageContent {
  /// Telegram Passport data has been sent
  MessagePassportDataSent({required this.types});

  /// [types] List of Telegram Passport element types sent
  List<PassportElementType> types;

  /// Parse from a json
  factory MessagePassportDataSent.fromJson(Map<String, dynamic> json) {
    return MessagePassportDataSent(
      types: List<PassportElementType>.from((json['types'] ?? [])
          .map((item) =>
              PassportElementType.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "types": this.types.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messagePassportDataSent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataReceived extends MessageContent {
  /// Telegram Passport data has been received; for bots only
  MessagePassportDataReceived(
      {required this.elements, required this.credentials});

  /// [elements] List of received Telegram Passport elements
  List<EncryptedPassportElement> elements;

  /// [credentials] Encrypted data credentials
  EncryptedCredentials credentials;

  /// Parse from a json
  factory MessagePassportDataReceived.fromJson(Map<String, dynamic> json) {
    return MessagePassportDataReceived(
      elements: List<EncryptedPassportElement>.from((json['elements'] ?? [])
          .map((item) =>
              EncryptedPassportElement.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      credentials: EncryptedCredentials.fromJson(
          json['credentials'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.toJson()).toList(),
      "credentials": this.credentials.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messagePassportDataReceived';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageProximityAlertTriggered extends MessageContent {
  /// A user in the chat came within proximity alert range
  MessageProximityAlertTriggered(
      {required this.traveler, required this.watcher, required this.distance});

  /// [traveler] The user or chat, which triggered the proximity alert
  MessageSender traveler;

  /// [watcher] The user or chat, which subscribed for the proximity alert
  MessageSender watcher;

  /// [distance] The distance between the users
  int distance;

  /// Parse from a json
  factory MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) {
    return MessageProximityAlertTriggered(
      traveler: MessageSender.fromJson(json['traveler'] ?? <String, dynamic>{}),
      watcher: MessageSender.fromJson(json['watcher'] ?? <String, dynamic>{}),
      distance: json['distance'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "traveler": this.traveler.toJson(),
      "watcher": this.watcher.toJson(),
      "distance": this.distance,
    };
  }

  static const CONSTRUCTOR = 'messageProximityAlertTriggered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageUnsupported extends MessageContent {
  /// Message content that is not supported in the current TDLib version
  MessageUnsupported();

  /// Parse from a json
  factory MessageUnsupported.fromJson(Map<String, dynamic> json) {
    return MessageUnsupported();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageUnsupported';

  @override
  String getConstructor() => CONSTRUCTOR;
}
