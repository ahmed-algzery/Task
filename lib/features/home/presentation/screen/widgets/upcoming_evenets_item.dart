// Importing necessary packages for the widget.
import 'package:cached_network_image/cached_network_image.dart'; // For loading images from the network with caching.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Provides FontAwesome icons.
import 'package:task/core/utils/styles.dart'; // Imports custom styles for the application.

/// A widget representing an upcoming event item with details like date, time, name, and type.
class UpcomingEvenetsItem extends StatelessWidget {
  // Constructor for the widget, requiring several parameters.
  const UpcomingEvenetsItem({
    super.key,
    required this.month,
    required this.day,
    required this.time,
    required this.name,
    required this.type,
  });

  // Final variables to hold the event details.
  final String month, day, time, name, type;

  @override
  Widget build(BuildContext context) {
    // Builds the UI for the upcoming event item.
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h), // Adds spacing below the item.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .start, // Aligns children to the start of the column.
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Aligns children to the start of the row.
            children: [
              // Date display container.
              Container(
                width: 50.w, // Responsive width.
                height: 50.h, // Responsive height.
                alignment: Alignment.center, // Centers content.
                decoration: BoxDecoration(
                  color: Colors.white, // Background color.
                  border: Border.all(color: Colors.black), // Border properties.
                  borderRadius: BorderRadius.circular(12.r), // Rounded corners.
                ),
                child: Text(
                  '$month\n$day', // Displays month and day.
                  textAlign:
                      TextAlign.center, // Centers text within the container.
                  style: Styles.textstyle18
                      .copyWith(color: Colors.black), // Custom text style.
                ),
              ),
              SizedBox(
                  width: 10
                      .w), // Adds spacing between the date and the image/text section.

              // Expanded widget to allow flexible width for the image and text.
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Aligns children to the start of the column.
                  children: [
                    // Container for the event image.
                    Container(
                      width: double.infinity, // Full width.
                      height: 200.h, // Responsive height.
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 10.h), // Padding inside the container.
                      margin: EdgeInsets.only(
                          bottom: 10.h), // Margin below the image.
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(12.r), // Rounded corners.
                        image: const DecorationImage(
                          fit: BoxFit.fill, // Image fills the container.
                          image: CachedNetworkImageProvider(
                              "https://plus.unsplash.com/premium_photo-1663089174939-5870e2e8d62e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGV2ZW50fGVufDB8fDB8fHww"),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment
                            .bottomLeft, // Aligns the badge to the bottom left.
                        child: Container(
                          width: 120.w, // Responsive width for the badge.
                          height: 35.h, // Responsive height for the badge.
                          alignment: Alignment.center, // Centers content.
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 243, 237,
                                190), // Background color for the badge.
                            borderRadius: BorderRadius.circular(
                                12.r), // Rounded corners for the badge.
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly, // Space evenly between icon and text.
                            children: [
                              const Icon(
                                FontAwesomeIcons
                                    .noteSticky, // Icon for the event type.
                                color: Colors.green, // Icon color.
                              ),
                              Text(
                                type, // Displays the event type.
                                textAlign: TextAlign
                                    .center, // Centers the text within the badge.
                                style: Styles.textstyle16.copyWith(
                                    color: Colors
                                        .green), // Custom text style for the type.
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Displays the event name.
                    Text(
                      name,
                      maxLines: 2, // Limits the text to two lines.
                      overflow: TextOverflow
                          .ellipsis, // Adds ellipsis if the text is too long.
                      style: Styles.textstyle20.copyWith(
                          color:
                              Colors.black), // Custom text style for the name.
                    ),
                    SizedBox(
                      height:
                          5.w, // Adds spacing between the name and the time.
                    ),
                    // Row for displaying the event time.
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.clock, // Clock icon for time.
                          color: Colors.grey, // Icon color.
                          size: 18, // Icon size.
                        ),
                        SizedBox(
                          width: 5.w, // Adds spacing between the icon and text.
                        ),
                        Text(
                          time, // Displays the event time.
                          style: Styles.textstyle16.copyWith(
                              color:
                                  Colors.grey), // Custom text style for time.
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
