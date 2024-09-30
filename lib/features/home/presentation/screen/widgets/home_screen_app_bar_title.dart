// Importing necessary packages for image caching, UI components, responsive design, and icons.
import 'package:cached_network_image/cached_network_image.dart'; // Caches network images for better performance.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Provides Font Awesome icons.
import 'package:task/core/utils/styles.dart'; // Imports custom styles for text styling.

/// A custom widget to display the app bar title on the home screen.
class HomeScreenAppBarTitle extends StatelessWidget {
  const HomeScreenAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the app bar title.
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 8.0.w), // Adds horizontal padding for spacing.
      child: Row(
        children: [
          // Column to display the location information.
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start of the column.
            children: [
              // Row to display the location and a dropdown icon.
              Row(
                children: [
                  Text(
                    'New York ', // Location name.
                    style: Styles.textstyle25, // Applies custom style for the text.
                  ),
                  SizedBox(
                    width: 5.w, // Adds spacing between the location and the icon.
                  ),
                  Icon(
                    FontAwesomeIcons.chevronDown, // Dropdown icon.
                    size: 18.w, // Sets icon size responsively.
                  ),
                ],
              ),
              Text(
                'within 20 miles', // Additional information about the location.
                style: Styles.textstyle16, // Applies custom style for the text.
              ),
            ],
          ),
          const Spacer(), // Creates space between the title and the avatar.
          // CircleAvatar to display the user's profile picture.
          CircleAvatar(
            radius: 22.w, // Sets the radius responsively using ScreenUtil.
            backgroundImage: const CachedNetworkImageProvider(
              "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
            ), // Caches the network image for the avatar.
          ),
        ],
      ),
    );
  }
}
