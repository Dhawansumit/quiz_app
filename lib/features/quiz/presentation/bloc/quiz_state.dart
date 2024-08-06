part of 'quiz_bloc.dart';

abstract class QuizState extends Equatable {
  const QuizState();

  @override
  List<Object> get props => [];
}

class Empty extends QuizState {}

class Loading extends QuizState {}

class Loaded extends QuizState {
  final List<Question> questions;
  final int currentQuestionIndex;
  final int score;

  Loaded({
    required this.questions,
    this.currentQuestionIndex = 0,
    this.score = 0,
  });

  Loaded copyWith({
    List<Question>? questions,
    int? currentQuestionIndex,
    int? score,
  }) {
    return Loaded(
      questions: questions ?? this.questions,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      score: score ?? this.score,
    );
  }

  @override
  List<Object> get props => [questions, currentQuestionIndex, score];
}

class Error extends QuizState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
