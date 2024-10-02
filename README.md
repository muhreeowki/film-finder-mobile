# Flutter Movie Search App

A mobile application built with Flutter to search for movies and view their details. This project was created as a learning exercise in mobile app development.

![Movie Search App Screenshot](/assets/screenshot.png)

## Features

- Search for movies by title
- View movie details including synopsis, release date, and rating
- Responsive UI design for various screen sizes
- Integration with a movie database API

## Getting Started

### Prerequisites

- Flutter SDK (version 2.5 or later)
- Dart SDK (version 2.14 or later)
- Android Studio or VS Code with Flutter extension

### Installation

1. Clone the repository:

   ```
   git clone https://github.com/yourusername/flutter-movie-search.git
   ```

2. Navigate to the project directory:

   ```
   cd flutter-movie-search
   ```

3. Install dependencies:

   ```
   flutter pub get
   ```

4. Run the app:

   ```
   flutter run
   ```

## Usage

1. Launch the app on your device or emulator.
2. Use the search bar at the top to enter a movie title.
3. It will search for the most relevant movie with that title and display it.
   > [!NOTE]
   > Sometimes it may not display the movie you want, or display a movie with the same title from a different year. Working on adding a year field to fix this issue.

## Built With

- [Flutter](https://flutter.dev/) - UI framework for building natively compiled applications
- [Dart](https://dart.dev/) - Programming language optimized for building mobile, desktop, server, and web applications
- [OMDB API](https://www.omdbapi.com/) - Movie database API for fetching movie information

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
