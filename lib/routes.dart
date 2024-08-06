import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'features/quiz/presentation/pages/home_page.dart';
import 'features/quiz/presentation/pages/quiz_page.dart';
import 'features/quiz/presentation/pages/result_page.dart';


@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: QuizPage),
    AutoRoute(page: ResultPage),
  ],
)
class $AppRouter {}
