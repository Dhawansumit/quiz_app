import 'package:get_it/get_it.dart';
import 'features/quiz/data/datasources/quiz_local_datasource.dart';
import 'features/quiz/data/repositories/quiz_repository_impl.dart';
import 'features/quiz/domain/repositories/quiz_repository.dart';
import 'features/quiz/domain/usecases/get_questions.dart';
import 'features/quiz/presentation/bloc/quiz_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => QuizBloc(getQuestions: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetQuestions(sl()));

  // Repository
  sl.registerLazySingleton<QuizRepository>(
        () => QuizRepositoryImpl(localDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<QuizLocalDataSource>(
        () => QuizLocalDataSourceImpl(),
  );
}
