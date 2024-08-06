part of 'quiz_bloc.dart';

abstract class QuizEvent extends Equatable {
  const QuizEvent();

  @override
  List<Object> get props => [];
}

class GetQuestionsEvent extends QuizEvent {}

class NextQuestionEvent extends QuizEvent {
  final bool isCorrect;

  const NextQuestionEvent({required this.isCorrect});

  @override
  List<Object> get props => [isCorrect];
}
