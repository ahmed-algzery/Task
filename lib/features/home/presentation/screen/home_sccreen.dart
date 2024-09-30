// Importing necessary packages for the widget.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:task/features/home/presentation/screen/widgets/custom_bottom_navigation_bar.dart'; // Custom bottom navigation bar widget.
import 'package:task/features/home/presentation/screen/widgets/home_screen_app_bar_title.dart'; // Custom app bar title widget.
import 'package:task/features/home/presentation/screen/widgets/home_screen_body.dart'; // Custom body widget for the home screen.

/// A stateless widget representing the home screen of the application.
class HomeSccreen extends StatelessWidget {
  const HomeSccreen({super.key}); // Constructor for the widget.

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the home screen.
    return Scaffold(
      backgroundColor: Colors.white, // Sets the background color of the screen.
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            200, 248, 241, 255), // Sets the app bar background color.
        title:
            const HomeScreenAppBarTitle(), // Displays the custom app bar title.
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // Starts gradient from the top.
            end: Alignment.bottomCenter, // Ends gradient at the bottom.
            colors: [
              Color.fromARGB(
                  255, 248, 241, 255), // Light purple color at the top.
              Colors.white, // Ends with white color at the bottom.
            ],
          ),
        ),
        child:
            const HomeScreenBody(), // Displays the custom body widget of the home screen.
      ),
      bottomNavigationBar:
          const CustomBottomNavigationBar(), // Displays the custom bottom navigation bar.
    );
  }
}
