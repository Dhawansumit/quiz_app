import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'dart:math';

import '../../../../core/utils/constants.dart';
import '../../../../routes.gr.dart';

class TopicSelectorWidget extends StatelessWidget {
  const TopicSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two items per row
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: Constants.topics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.router.push(const QuizPageRoute());
            },
            child: Card(
              elevation: 4.0,
              color: Constants.cardColors[Random().nextInt(
                  Constants.cardColors.length)], // Set random card color
              child: Center(
                child: Text(
                  Constants.topics[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
