import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/question_model.dart';

abstract class QuizLocalDataSource {
  Future<List<QuestionModel>> getQuestions();
}

class QuizLocalDataSourceImpl implements QuizLocalDataSource {
  @override
  Future<List<QuestionModel>> getQuestions() async {
    final jsonString = await rootBundle.loadString('assets/questions.json');
    final List decodedJson = json.decode(jsonString);
    return decodedJson
        .map((jsonQuestion) => QuestionModel.fromJson(jsonQuestion))
        .toList();
  }
}
