// Importing necessary packages for building the widget.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter_animate/flutter_animate.dart'; // Allows animations for Flutter widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:task/features/home/presentation/screen/widgets/custom_title_of_category.dart'; // Custom widget for category title.
import 'package:task/features/home/presentation/screen/widgets/upcoming_evenets_item.dart'; // Custom widget for displaying upcoming event items.

/// A widget that displays a category of upcoming events.
class UpcomingEvenetsCategory extends StatelessWidget {
  const UpcomingEvenetsCategory({super.key}); // Constructor for the widget.

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the Upcoming Events category.
    return Column(
      children: [
        // Custom title for the category with an action.
        CustomTitleOfCategory(title: 'Upcoming events', onPressed: () {}),
        SizedBox(height: 10.h), // Adds vertical spacing below the title.

        // A vertical list of upcoming event items.
        ListView.builder(
          scrollDirection: Axis.vertical, // Sets the list to scroll vertically.
          shrinkWrap: true, // Shrinks the height of the list view to its content.
          itemCount: 10, // Number of items to display.
          physics: const BouncingScrollPhysics(), // Adds a bouncing effect when scrolling.
          itemBuilder: (context, index) {
            // Builds each item in the list.
            return const UpcomingEvenetsItem(
              month: 'NOV', // Month for the event.
              day: '18', // Day for the event.
              time: '10:00 19:30', // Time for the event.
              name: 'Learn to cook with Amanda', // Name of the event.
              type: 'Workshops', // Type of the event.
            )
                .animate() // Applies animations to the item.
                .fadeIn(
                    duration: const Duration(milliseconds: 500)) // Fades in the item over 0.5 seconds.
                .slideY(begin: 0.2, end: 0); // Slide-in effect from below.
          },
        ),
      ],
    )
        .animate() // Applies animations to the entire column.
        .fadeIn(
            duration: const Duration(milliseconds: 700)) // Fades in the whole column over 0.7 seconds.
        .scaleX(); // Scale animation for a horizontal stretching effect.
  }
}
