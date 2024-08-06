import 'package:flutter/material.dart';

import '../../../../common/common_app_bar.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ResultPage(
      {super.key, required this.score, required this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    double percentage = (score / totalQuestions) * 100;
    final bool isSuccess = percentage >= 70;

    return Scaffold(
      backgroundColor: const Color(0xFFD8E5F9),

      appBar: const CommonAppBar(title: 'Result'), // Use the common app bar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSuccess ? Icons.check_circle : Icons.cancel,
              color: isSuccess ? Colors.green : Colors.red,
              size: 100,
            ),
            const SizedBox(height: 20),
            Text(
              isSuccess
                  ? 'Congratulations! You scored ${percentage.toStringAsFixed(2)}%'
                  : 'You scored ${percentage.toStringAsFixed(2)}%. Try again!',
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
