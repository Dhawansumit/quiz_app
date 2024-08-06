import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/constants.dart';
import '../../domain/entities/question.dart';
import 'dart:math';

class QuestionWidget extends StatefulWidget {
  final Question question;
  final Function(bool) onAnswer;

  QuestionWidget({required this.question, required this.onAnswer});

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  String? selectedOption;

  late Color cardColor;

  @override
  void initState() {
    super.initState();
    cardColor = Constants.cardColors[Random().nextInt(Constants.cardColors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.question.question,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...widget.question.options.map((option) {
              return RadioListTile<String>(
                title: Text(
                  option,
                  style: TextStyle(fontSize: 16),
                ),
                value: option,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                  });
                  widget.onAnswer(option == widget.question.answer);
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
