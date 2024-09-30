// Importing necessary Flutter packages for UI components and responsive design.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter/widgets.dart'; // Provides basic Flutter widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:task/features/home/presentation/screen/widgets/home_screen_body_title_section.dart'; // Imports the title section widget.
import 'package:task/features/home/presentation/screen/widgets/might_like_category.dart'; // Imports the 'Might Like' category widget.
import 'package:task/features/home/presentation/screen/widgets/upcoming_evenets_category.dart'; // Imports the 'Upcoming Events' category widget.

/// A custom widget to represent the body of the home screen.
class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key}); // Constructor for the widget.

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the home screen body.
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.w, vertical: 15.h), // Adds padding around the body.
      child: const SingleChildScrollView(
        // Allows scrolling if the content overflows.
        physics: BouncingScrollPhysics(), // Provides a bouncing scroll effect.
        child: Column(
          children: [
            HomeScreenBodyTitleSection(), // Displays the title section of the home screen.
            MightLikeCategory(), // Displays the 'Might Like' category section.
            UpcomingEvenetsCategory(), // Displays the 'Upcoming Events' category section.
          ],
        ),
      ),
    );
  }
}
