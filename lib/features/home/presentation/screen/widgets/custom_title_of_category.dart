// Importing necessary Flutter package for UI components.
import 'package:flutter/material.dart'; 
// Importing custom styles for text styling.
import 'package:task/core/utils/styles.dart'; 

/// A custom widget to display a title of a category with a 'See All' button.
class CustomTitleOfCategory extends StatelessWidget {
  // Constructor for the widget, requiring a title and an onPressed callback.
  const CustomTitleOfCategory(
      {super.key, required this.title, required this.onPressed});
  
  final String title; // Title of the category.
  final VoidCallback onPressed; // Callback function when the 'See All' button is pressed.

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the CustomTitleOfCategory.
    return Row(
      children: [
        // Displays the category title with specified text style.
        Text(
          title,
          style: Styles.textstyle25.copyWith(color: Colors.black), // Applies custom style with black color.
        ),
        const Spacer(), // Creates space between the title and the button.
        // TextButton for the 'See All' action.
        TextButton(
          onPressed: onPressed, // Calls the provided onPressed function when tapped.
          child: Text(
            'See All', // Text for the button.
            style: Styles.textstyle15.copyWith(
              color: Colors.grey, // Applies custom style with grey color.
              decoration: TextDecoration.underline, // Underlines the text.
            ),
          ),
        )
      ],
    );
  }
}
