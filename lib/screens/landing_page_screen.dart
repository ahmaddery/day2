import 'package:flutter/material.dart';
import '../widgets/common_widgets.dart';

class LandingPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/grid.jpg',
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product #1', 
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Description of the product with some details about features and benefits.',
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(height: 12),
                        CTAButton(
                          text: 'Learn More',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Product Description'),
                    SizedBox(height: 8),
                    Text(
                      'A longer description of the product and its benefits. This text explains why customers should be interested in your products and services.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              SectionTitle(title: 'About Us'),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Information about the company, mission, vision, and values. This is a brief introduction to your organization.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Additional information about the company history, achievements, or team members that would be relevant to visitors.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Center(child: SocialIcons()),
            ],
          ),
        ),
      ),
    );
  }
}
