// lib/widgets/common_widgets.dart
import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;

  const ImagePlaceholder({
    Key? key,
    this.width,
    this.height,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.grey[200],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }
}

class CTAButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CTAButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.facebook),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.insert_link),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.email),
          onPressed: () {},
        ),
      ],
    );
  }
}