// Importing necessary Flutter packages for UI components, responsive design, and icons.
import 'package:flutter/material.dart'; // Provides material design widgets.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Enables responsive design based on screen size.
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Provides Font Awesome icons.

/// A custom bottom navigation bar widget.
class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key}); // Constructor for the widget.

  @override
  // Creates the state for the CustomBottomNavigationBar.
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

/// The state class for CustomBottomNavigationBar, managing the selected index.
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0; // Tracks the currently selected index.

  // Updates the selected index when an item is tapped.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index.
    });
  }

  @override
  Widget build(BuildContext context) {
    // Builds the BottomAppBar widget to display navigation items.
    return BottomAppBar(
      // Uncomment to add a circular notch effect.
      // shape: const CircularNotchedRectangle(),
      color: Colors.white, // Sets the background color of the BottomAppBar.
      notchMargin: 10.0.h, // Specifies the margin of the notch.
      child: Container(
        height: 40.h, // Sets the height of the navigation bar.
        color: Colors.white, // Ensures the background is white.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Spaces the items evenly.
          children: [
            // Builds each navigation item using the _buildNavItem method.
            _buildNavItem(icon: FontAwesomeIcons.house, index: 0, label: "Home"),
            _buildNavItem(icon: FontAwesomeIcons.comment, index: 1, label: "Inbox"),
            _buildNavItem(icon: FontAwesomeIcons.compass, index: 2, label: "Explore"),
            _buildNavItem(icon: FontAwesomeIcons.bell, index: 3, label: "Alerts"),
            _buildNavItem(icon: FontAwesomeIcons.bars, index: 4, label: "Menu"),
          ],
        ),
      ),
    );
  }

  /// Builds a single navigation item.
  Widget _buildNavItem({
    required IconData icon, // Icon to display.
    required int index, // Index of the item.
    required String label, // Label for the item.
  }) {
    return GestureDetector(
      // Detects taps on the navigation item.
      onTap: () => _onItemTapped(index), // Calls _onItemTapped when tapped.
      child: Column(
        mainAxisSize: MainAxisSize.min, // Minimizes the height of the column.
        children: [
          // Icon for the navigation item, changing color based on selection.
          Icon(
            icon,
            size: 24.sp, // Sets the icon size responsively.
            color: _selectedIndex == index ? Colors.black : Colors.grey, // Changes color based on selection.
          ),
          // Text label for the navigation item, changing color based on selection.
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp, // Sets the font size responsively.
              color: _selectedIndex == index ? Colors.black : Colors.grey, // Changes color based on selection.
            ),
          ),
        ],
      ),
    );
  }
}
