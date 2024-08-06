import 'package:dartz/dartz.dart';
import '../entities/question.dart';
import '../../../../core/error/failures.dart';

abstract class QuizRepository {
  Future<Either<Failure, List<Question>>> getQuestions();
}
