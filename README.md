# Flutter BLoC Clean Architecture Boilerplate

This is a Flutter project boilerplate built by **Farhan Riaz**, adhering to the principles of **Clean Architecture**. It is designed to kickstart your Flutter development with a well-structured, scalable, and maintainable architecture. This setup leverages the **BLoC** pattern for state management, **GetIt** for dependency injection, and **Freezed** for immutable data classes and union types.

## Project Structure

The project is organized into a modular and layered architecture to promote separation of concerns and testability. Here’s a breakdown of the main folders:

* **Src**: The root source directory of the application.

    * **Common**: Includes shared resources like constants, exceptions, colors, enums, screen utilities, and API endpoints.

    * **Data**: Manages external data operations.

        * **Datasource**: Contains data sources like REST APIs or local databases.

        * **Model**: Includes the data models used throughout the app.

        * **Repository**: Implements data access by interacting with data sources.

    * **Domain**: Encapsulates business rules and logic.

        * **Entity**: Represents core business entities and domain models.

        * **Repository**: Abstract classes that define contracts for data access.

        * **Usecase**: Application-specific business rules and operations.

    * **Presentation**: Handles UI and user interactions.

        * **Bloc**: Contains BLoC classes for managing application state.

        * **Cubit**: Contains Cubit classes for simpler state management.

        * **Page**: UI screens or pages.

        * **Widget**: Reusable UI components and widgets.

    * **Utilities**: Contains helper functions and utility classes.

* **Injection.dart**: Dependency injection configuration using GetIt.

* **Main.dart**: The main entry point of the Flutter application.

## Getting Started

1. Clone this repository to your local environment:

   ```bash
   git clone https://github.com/FarhanRiaaz/flutter-bloc-clean-architecture
   ```

2. Navigate to the project directory:

   ```bash
   cd flutter-bloc-clean-architecture
   ```

3. Install all the dependencies:

   ```bash
   flutter pub get
   ```

You’re now ready to start building your Flutter application using this clean architecture boilerplate.

## Features

* Well-structured and scalable architecture.
* Based on Clean Architecture principles.
* State management using BLoC & Cubit.
* Dependency Injection with GetIt.
* Code generation with Freezed for immutability and unions.

## Contributing

Contributions are welcome! If you find bugs, want to request features, or contribute code, feel free to submit an issue or a pull request. Let’s build better apps together!

---

**Happy coding! 🚀**