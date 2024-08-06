import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/common_app_bar.dart';
import '../../../../routes.gr.dart';
import '../bloc/quiz_bloc.dart';
import '../widgets/question_widget.dart';
import 'package:auto_route/auto_route.dart';
// Import the common app bar

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  void initState() {
    super.initState();
    // Dispatch the event to load questions
    context.read<QuizBloc>().add(GetQuestionsEvent());
  }

  void _answerQuestion(bool isCorrect) {
    final quizBloc = context.read<QuizBloc>();
    final currentState = quizBloc.state;
    if (currentState is Loaded) {
      if (currentState.currentQuestionIndex + 1 >= currentState.questions.length) {
        // Last question answered, navigate to result page
        context.router.replace(ResultPageRoute(
          score: currentState.score + (isCorrect ? 1 : 0),
          totalQuestions: currentState.questions.length,
        ));
      } else {
        quizBloc.add(NextQuestionEvent(isCorrect: isCorrect));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8E5F9),
      appBar: const CommonAppBar(title: 'Quiz'), // Use the common app bar
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            final question = state.questions[state.currentQuestionIndex];
            return QuestionWidget(
              question: question,
              onAnswer: _answerQuestion,
            );
          } else if (state is Error) {
            return Center(child: Text(state.message));
          } else {
            return const Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}
