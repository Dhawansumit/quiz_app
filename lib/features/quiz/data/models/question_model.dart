import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/question.dart';

part 'question_model.g.dart';

@JsonSerializable()
class QuestionModel extends Question {
  QuestionModel({
    required super.question,
    required super.options,
    required super.answer,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
