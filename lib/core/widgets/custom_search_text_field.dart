import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const CustomSearchTextField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // Background color
        hintText: 'Search for an event',
        hintStyle: const TextStyle(color: Color.fromARGB(255, 148, 163, 222)),
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.black,
        ), // Search icon
        contentPadding: EdgeInsets.all(15.0.w), // Padding inside the field
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r), // Circular border
          borderSide: BorderSide.none, // No border by default
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r), // Circular border on focus
          borderSide: const BorderSide(color: Colors.blueAccent), // Border color on focus
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r), // Circular border when enabled
          borderSide: BorderSide.none, // No border when enabled
        ),
      ),
    );
  }
}
