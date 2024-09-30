// Importing necessary packages for building the widget.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter_animate/flutter_animate.dart'; // Allows animations for Flutter widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:task/features/home/presentation/screen/widgets/custom_title_of_category.dart'; // Custom widget for category title.
import 'package:task/features/home/presentation/screen/widgets/like_envent_item.dart'; // Custom widget for displaying event items.

/// A widget that displays a category of events that the user might like.
class MightLikeCategory extends StatelessWidget {
  const MightLikeCategory({super.key}); // Constructor for the widget.

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the Might Like category.
    return Column(
      children: [
        // Custom title for the category with an action.
        CustomTitleOfCategory(title: 'You might like', onPressed: () {}),
        SizedBox(height: 10.h), // Adds vertical spacing below the title.

        // A horizontally scrollable list of event items.
        SizedBox(
          height: 220.h, // Sets the height for the list view.
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Enables horizontal scrolling.
            itemCount: 10, // Number of items to display.
            physics:
                const BouncingScrollPhysics(), // Adds a bouncing effect when scrolling.
            itemBuilder: (context, index) => const LikeEventItem(
              month: 'NOV', // Month for the event.
              day: '20', // Day for the event.
              time: '10:00 19:30', // Time for the event.
              name: 'Learn to cook with Amanda', // Name of the event.
              type: 'Workshops', // Type of the event.
            ),
          ),
        ),
      ],
    )
        .animate() // Applies animations to the entire column.
        .fadeIn(
            duration: const Duration(
                milliseconds: 700)) // Fades in the widget over 0.7 seconds.
        .scaleX(); // Scales the widget in the X direction.
  }
}
