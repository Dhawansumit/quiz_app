# quiz_app

A quiz application built with Flutter following CLEAN architecture, SOLID principles, using state management with flutter_bloc, dependency injection with get_it, and navigation with auto_route.

---

## Getting Started 🚀

## Table of Contents
- Folder Structure
- Architecture and Principles
- CLEAN Architecture
- SOLID Principles
- State Management
- Dependency Injection
- Navigation with AutoRoute
- Running the Project

## Folder Structure
    lib/
    │
    ├── core/
    │   ├── error/
    │   │   └── exceptions.dart
    │   │   └── failures.dart
    │   ├── usecases/
    │   │   └── usecase.dart
    │   ├── utils/
    │       └── constants.dart
    │       └── input_converter.dart
    │
    ├── features/
    │   ├── quiz/
    │   │   ├── data/
    │   │   │   ├── models/
    │   │   │   │   └── question_model.dart
    │   │   │   ├── repositories/
    │   │   │   │   └── quiz_repository_impl.dart
    │   │   │   ├── datasources/
    │   │   │       └── quiz_local_datasource.dart
    │   │   │
    │   │   ├── domain/
    │   │   │   ├── entities/
    │   │   │   │   └── question.dart
    │   │   │   ├── repositories/
    │   │   │   │   └── quiz_repository.dart
    │   │   │   ├── usecases/
    │   │   │       └── get_questions.dart
    │   │   │
    │   │   ├── presentation/
    │   │       ├── bloc/
    │   │       │   ├── quiz_bloc.dart
    │   │       │   ├── quiz_event.dart
    │   │       │   └── quiz_state.dart
    │   │       ├── pages/
    │   │       │   └── home_page.dart
    │   │       │   └── quiz_page.dart
    │   │       │   └── result_page.dart
    │   │       └── widgets/
    │   │           └── question_widget.dart
    │   │           └── topic_selector_widget.dart
    │
    ├── common/
    │   └── common_app_bar.dart
    │
    ├── injection_container.dart
    ├── routes.dart
    ├── main.dart
    └── assets/
        └── questions.json
---
## Architecture and Principles
**CLEAN Architecture**
This project follows CLEAN architecture to ensure separation of concerns and scalability. The structure is divided into three main layers:

**Data Layer**: Contains the implementation of data sources and repositories. It handles data fetching and storage.
**Domain Layer**: Contains business logic. This includes entities, use cases, and repository interfaces.
**Presentation Layer**: Handles the UI and state management. This includes widgets, pages, and BLoC classes.

**SOLID Principles**
The project adheres to SOLID principles to ensure maintainable and scalable code:

**Single Responsibility Principle**: Each class has a single responsibility.
**Open/Closed Principle**: Classes are open for extension but closed for modification.
**Liskov Substitution Principle**: Subtypes can replace their base types without altering the correctness of the program.
**Interface Segregation Principle**: Clients should not be forced to depend on interfaces they do not use.
**Dependency Inversion Principle**: High-level modules should not depend on low-level modules. Both should depend on abstractions.

---

## State Management
State management is handled using `flutter_bloc`. BLoC (Business Logic Component) helps separate business logic from the UI, making the code more modular and testable.
---
## Dependency Injection
The project uses `get_it` for dependency injection. `get_it` is a simple service locator for Dart and Flutter projects. It allows easy management of dependencies and promotes a decoupled codebase.
---
## Navigation with AutoRoute
Navigation is managed using `auto_route`, a Flutter routing package that simplifies the management of routes. It allows for declarative routing and code generation for better navigation management.
---
## Running the Project
**Running the Builder**
Before running the project, ensure the necessary code generation steps are completed. Run the following command to generate the routes:

    flutter packages pub run build_runner build

**Running the Project**
To run the project, use the following command:

    flutter run

This will start the application on your connected device or emulator.
---

**Conclusion**
This project demonstrates the use of CLEAN architecture, SOLID principles, state management with flutter_bloc, dependency injection with get_it, and navigation with auto_route in a Flutter application. It provides a modular and scalable structure for building robust applications.

Feel free to contribute to the project or use it as a reference for your own Flutter applications. If you encounter any issues or have suggestions, please open an issue or submit a pull request.
---
