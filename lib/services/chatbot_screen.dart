import 'package:flutter/material.dart';
import '../services/openai_service.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final OpenAIService _openAIService = OpenAIService();
  final TextEditingController _controller = TextEditingController();
  String _response = "";

  void _sendPrompt() async {
    final prompt = _controller.text.trim();
    if (prompt.isEmpty) return;

    setState(() {
      _response = "Loading...";
    });

    try {
      final res = await _openAIService.getChatResponse(prompt);
      setState(() {
        _response = res.trim();
      });
    } catch (e) {
      setState(() {
        _response = "Error: ${e.toString()}";
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AI Assistant')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _response,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Ask me anything...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendPrompt,
                ),
              ),
              onSubmitted: (_) => _sendPrompt(),
            ),
          ],
        ),
      ),
    );
  }
}
