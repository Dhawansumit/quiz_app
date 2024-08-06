import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/question.dart';
import '../../domain/repositories/quiz_repository.dart';
import '../datasources/quiz_local_datasource.dart';

class QuizRepositoryImpl implements QuizRepository {
  final QuizLocalDataSource localDataSource;

  QuizRepositoryImpl({required this.localDataSource});

  @override
  Future<Either< Failure, List<Question>>> getQuestions() async {
    try {
      final questions = await localDataSource.getQuestions();
      return Right(questions);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
