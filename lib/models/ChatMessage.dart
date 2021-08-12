enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String? text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;
  final String time;

  ChatMessage({
    this.text,
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
    required this.time,
  });
}

List demeChatMessages = [
  ChatMessage(
      text: "Hi Charan,",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false,
      time: "19:26"),
  ChatMessage(
      text: "Hello, How are you?",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: true,
      time: "19:26"),
  ChatMessage(
      text: "",
      messageType: ChatMessageType.audio,
      messageStatus: MessageStatus.viewed,
      isSender: false,
      time: "19:27"),
  ChatMessage(
      text: "",
      messageType: ChatMessageType.video,
      messageStatus: MessageStatus.viewed,
      isSender: true,
      time: "19:27"),
  ChatMessage(
      text: "Error happend",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_sent,
      isSender: true,
      time: "19:28"),
  ChatMessage(
      text: "This looks great man!!",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false,
      time: "19:28"),
  ChatMessage(
      text: "Glad you like it",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_view,
      isSender: true,
      time: "19:28"),
];
