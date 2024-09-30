// Importing necessary packages for the application.
import 'package:flutter/material.dart'; // Provides Flutter material design widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Allows for responsive UI design.
import 'package:task/features/home/presentation/screen/home_sccreen.dart'; // Importing the home screen widget.

/// The main application widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor for the widget.

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Sets the design size for responsive scaling.
      minTextAdapt: true, // Enables text scaling for smaller screens.
      splitScreenMode: true, // Enables split-screen mode for larger devices.
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false, // Hides the debug banner.
          title: 'First Method', // Title of the application.
          theme: ThemeData(
            primarySwatch: Colors.blue, // Sets the primary color theme.
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp), // Applies responsive font size.
          ),
          home: child, // Sets the home screen of the application.
        );
      },
      child: const HomeSccreen(), // The main screen of the app.
    );
  }
}
