// Importing necessary Flutter packages for UI components and responsive design.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:task/core/utils/styles.dart'; // Imports custom styles for text styling.
import 'package:task/core/widgets/custom_search_text_field.dart'; // Imports a custom search text field widget.

/// A custom widget to display the title section on the home screen body.
class HomeScreenBodyTitleSection extends StatelessWidget {
  const HomeScreenBodyTitleSection({super.key}); // Constructor for the widget.

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the home screen title section.
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // Aligns children to the start of the column.
      children: [
        // Greeting message for the user.
        Text(
          'Hello, Simone',
          style: Styles.textstyle30.copyWith(
              color: Colors.black), // Applies custom style with black color.
        )
            .animate()
            .fadeIn(
              duration: const Duration(milliseconds: 700),
            )
            .scale(),
        SizedBox(
          height: 5
              .h, // Adds vertical spacing between the greeting and the next text.
        ),
        // Message about the new events in the user's area.
        Text(
          'There are 25 new events in your area.',
          style: Styles.textstyle30.copyWith(
              color: const Color.fromARGB(255, 148, 163,
                  222)), // Applies custom style with a specific color.
        )
            .animate()
            .fadeIn(
              duration: const Duration(milliseconds: 700),
            )
            .scale(),
        SizedBox(
          height: 15.h, // Adds more vertical spacing before the search field.
        ),
        // Custom search text field for user input.
        CustomSearchTextField(
          controller:
              TextEditingController(), // Initializes a new TextEditingController.
          onChanged:
              (value) {}, // Placeholder for the onChanged callback to handle input changes.
        )
            .animate()
            .fadeIn(
              duration: const Duration(milliseconds: 700),
            )
            .slide()
      ],
    );
  }
}
