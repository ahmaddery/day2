import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final Function(int) onTap;
  final int selectedIndex;

  const Navbar({Key? key, required this.onTap, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Icon(
              Icons.branding_watermark,
              color: Colors.white,
              size: 24,
            ),
          ),
          SizedBox(width: 20),
          buildNavItem('Home', 0),
          SizedBox(width: 25),
          buildNavItem('Product', 1),
          SizedBox(width: 25),
          buildNavItem('About', 2),
          SizedBox(width: 25),
          buildNavItem('News', 3),
        ],
      ),
    );
  }

  Widget buildNavItem(String title, int index) {
    return InkWell(
      onTap: () {
        onTap(index);
      },
      onHover: (isHovering) {
      },
      child: Text(
        title,
        style: TextStyle(
          color: selectedIndex == index ? Colors.blue : Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.8,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
