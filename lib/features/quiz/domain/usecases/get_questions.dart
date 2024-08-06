import 'package:dartz/dartz.dart';
import '../repositories/quiz_repository.dart';
import '../entities/question.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../core/error/failures.dart';

class GetQuestions implements UseCase<List<Question>, NoParams> {
  final QuizRepository repository;

  GetQuestions(this.repository);

  @override
  Future<Either<Failure, List<Question>>> call(NoParams params) async {
    return await repository.getQuestions();
  }
}
