import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/foundation.dart';
import '../env.dart';

class ChatBotViewModel extends ChangeNotifier {
  final List<Map<String, String>> _messages = [];
  bool _isLoading = false;
  String? _error;

  List<Map<String, String>> get messages => List.unmodifiable(_messages);
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> sendMessage(String userMessage) async {
    _isLoading = true;
    _error = null;
    _messages.add({'role': 'user', 'content': userMessage});
    notifyListeners();
    try {
      OpenAI.apiKey = Env.instance.openAiApiKey;
      final openAI = OpenAI.instance;
      final chat = await openAI.chat.create(
        model: 'gpt-3.5-turbo',
        messages: [
          for (final message in _messages)
            OpenAIChatCompletionChoiceMessageModel(
              content: [
                OpenAIChatCompletionChoiceMessageContentItemModel.text(
                  message['content']!,
                ),
              ],
              role:
                  message['role'] == 'user'
                      ? OpenAIChatMessageRole.user
                      : OpenAIChatMessageRole.assistant,
            ),
        ],
      );
      final botReply = chat.choices.first.message.content
          ?.map((item) => item.text)
          .join('\n');
      _messages.add({
        'role': 'assistant',
        'content': botReply ?? 'No response',
      });
    } catch (e) {
      _error = 'Failed to get response: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
