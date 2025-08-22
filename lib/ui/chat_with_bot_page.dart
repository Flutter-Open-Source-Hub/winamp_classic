import 'package:flutter/material.dart';
import 'chat_bot_view_model.dart';

class ChatWithBot extends StatefulWidget {
  const ChatWithBot({super.key});

  @override
  State<ChatWithBot> createState() => _ChatWithBotState();
}

class _ChatWithBotState extends State<ChatWithBot> {
  final ChatBotViewModel viewModel = ChatBotViewModel();
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat With Bot')),
      body: AnimatedBuilder(
        animation: viewModel,
        builder: (context, _) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.messages.length,
                  itemBuilder: (context, index) {
                    final msg = viewModel.messages[index];
                    final isUser = msg['role'] == 'user';
                    return Align(
                      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: isUser ? Colors.blue[100] : Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(msg['content'] ?? ''),
                      ),
                    );
                  },
                ),
              ),
              if (viewModel.isLoading)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
              if (viewModel.error != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(viewModel.error!, style: const TextStyle(color: Colors.red)),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        onSubmitted: _send,
                        decoration: const InputDecoration(hintText: 'Type your message...'),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: viewModel.isLoading ? null : () => _send(_controller.text),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _send(String text) {
    if (text.trim().isEmpty) return;
    viewModel.sendMessage(text.trim());
    _controller.clear();
  }
}
