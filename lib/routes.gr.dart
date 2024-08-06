// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'features/quiz/presentation/pages/home_page.dart' as _i1;
import 'features/quiz/presentation/pages/quiz_page.dart' as _i2;
import 'features/quiz/presentation/pages/result_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(),
      );
    },
    QuizPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.QuizPage(),
      );
    },
    ResultPageRoute.name: (routeData) {
      final args = routeData.argsAs<ResultPageRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ResultPage(
          score: args.score,
          totalQuestions: args.totalQuestions,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomePageRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          QuizPageRoute.name,
          path: '/quiz-page',
        ),
        _i4.RouteConfig(
          ResultPageRoute.name,
          path: '/result-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.QuizPage]
class QuizPageRoute extends _i4.PageRouteInfo<void> {
  const QuizPageRoute()
      : super(
          QuizPageRoute.name,
          path: '/quiz-page',
        );

  static const String name = 'QuizPageRoute';
}

/// generated route for
/// [_i3.ResultPage]
class ResultPageRoute extends _i4.PageRouteInfo<ResultPageRouteArgs> {
  ResultPageRoute({
    required int score,
    required int totalQuestions,
  }) : super(
          ResultPageRoute.name,
          path: '/result-page',
          args: ResultPageRouteArgs(
            score: score,
            totalQuestions: totalQuestions,
          ),
        );

  static const String name = 'ResultPageRoute';
}

class ResultPageRouteArgs {
  const ResultPageRouteArgs({
    required this.score,
    required this.totalQuestions,
  });

  final int score;

  final int totalQuestions;

  @override
  String toString() {
    return 'ResultPageRouteArgs{score: $score, totalQuestions: $totalQuestions}';
  }
}
