// Importing necessary packages for building the widget.
import 'package:cached_network_image/cached_network_image.dart'; // Provides cached image loading.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter_animate/flutter_animate.dart'; // Allows animations for Flutter widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Provides FontAwesome icons.
import 'package:task/core/utils/styles.dart'; // Imports custom styles for text.

/// A custom widget to display an event item with like functionality.
class LikeEventItem extends StatelessWidget {
  const LikeEventItem({
    super.key,
    required this.month, // Month of the event
    required this.day, // Day of the event
    required this.time, // Time of the event
    required this.name, // Name of the event
    required this.type, // Type/category of the event
  });

  final String month, day, time, name, type; // Fields to hold event details

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the event item.
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // Aligns children to the start of the column.
      children: [
        Container(
          width: 270.w, // Responsive width
          height: 140.h, // Responsive height
          padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h), // Adds padding inside the container.
          margin: EdgeInsets.only(
              right: 20.w, bottom: 10.h), // Adds margin outside the container.
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                12.r), // Rounded corners for the container.
            image: const DecorationImage(
              fit: BoxFit.fill, // Fills the container with the image.
              image: CachedNetworkImageProvider(
                  "https://images.unsplash.com/photo-1528605248644-14dd04022da1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGV2ZW50fGVufDB8fDB8fHww"), // Image URL.
            ),
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns children to the start.
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Distributes space evenly between children.
            children: [
              // Date container displaying month and day.
              Container(
                width: 50.w,
                height: 50.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 135, 134, 153), // Background color.
                  borderRadius: BorderRadius.circular(12.r), // Rounded corners.
                ),
                child: Text(
                  '$month\n$day', // Displays month and day.
                  textAlign: TextAlign.center, // Centers the text.
                  style: Styles.textstyle18, // Text style for date.
                ),
              ),
              // Type container displaying the type of event.
              Container(
                width: 120.w,
                height: 35.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 243, 237, 190), // Background color.
                  borderRadius: BorderRadius.circular(12.r), // Rounded corners.
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Spaces children evenly.
                  children: [
                    const Icon(
                      FontAwesomeIcons.noteSticky, // Icon for the event type.
                      color: Colors.green, // Icon color.
                    ),
                    Text(
                      type, // Displays the type of event.
                      textAlign: TextAlign.center, // Centers the text.
                      style: Styles.textstyle16.copyWith(
                          color: Colors.green), // Text style for event type.
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Displays the name of the event.
        Text(
          name,
          style: Styles.textstyle20
              .copyWith(color: Colors.black), // Text style for event name.
        ),
        SizedBox(
          height: 5.w, // Adds spacing between name and time.
        ),
        // Displays the time of the event.
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.clock, // Clock icon.
              color: Colors.grey, // Icon color.
              size: 18, // Icon size.
            ),
            SizedBox(
              width: 5.w, // Adds spacing between icon and time text.
            ),
            Text(
              time, // Displays the time of the event.
              style: Styles.textstyle16
                  .copyWith(color: Colors.grey), // Text style for time.
            ),
          ],
        ),
      ],
    )
        .animate() // Applies animations to the entire column.
        .fadeIn(
            duration: const Duration(
                milliseconds: 1000)) // Fades in the widget over 1 second.
        .scale(); // Scales the widget.
  }
}
