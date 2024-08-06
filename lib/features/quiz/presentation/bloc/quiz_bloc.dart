import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/question.dart';
import '../../domain/usecases/get_questions.dart';
import '../../../../core/usecases/usecase.dart';
import 'dart:math';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final GetQuestions getQuestions;

  QuizBloc({required this.getQuestions}) : super(Empty()) {
    on<GetQuestionsEvent>((event, emit) async {
      emit(Loading());
      final failureOrQuestions = await getQuestions(NoParams());
      emit(failureOrQuestions.fold(
        (failure) => Error(message: 'Error loading questions'),
        (questions) {
          questions.shuffle(Random());
          return Loaded(questions: questions);
        },
      ));
    });

    on<NextQuestionEvent>((event, emit) {
      final currentState = state;
      if (currentState is Loaded) {
        final nextIndex = currentState.currentQuestionIndex + 1;
        final newScore =
            event.isCorrect ? currentState.score + 1 : currentState.score;
        if (nextIndex < currentState.questions.length) {
          emit(currentState.copyWith(
            currentQuestionIndex: nextIndex,
            score: newScore,
          ));
        } else {
          emit(currentState.copyWith(score: newScore));
        }
      }
    });
  }
}
