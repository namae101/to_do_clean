import 'package:flutter/material.dart';

class AddUpdateTodoDialog extends StatelessWidget {
  AddUpdateTodoDialog({super.key, this.text}) {
    _textController = TextEditingController(text: text);
  }
  final String? text;
  late final TextEditingController _textController;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Todo'),
      content: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          labelText: 'Todo',
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text(text == null ? 'Add' : 'Update'),
          onPressed: () {
            Navigator.of(context).pop(_textController.text);
          },
        ),
      ],
    );
  }
}
