import 'package:flutter/material.dart';
import '../widgets/common_widgets.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Product"),
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
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/slider.jpg',
                      height: 100,
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
                          'Highlight #1', 
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Description of the first key feature or benefit of your product.',
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
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Highlight #2', 
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Description of the second key feature or benefit of your product.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/slider2.jpg',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              CTAButton(
                text: 'Learn More',
                onPressed: () {},
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/grid.jpg',
                      height: 100,
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
                          'Highlight #3', 
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Description of the third key feature or benefit of your product.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              CTAButton(
                text: 'Learn More',
                onPressed: () {},
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
                    SectionTitle(title: 'Details'),
                    SizedBox(height: 8),
                    Text(
                      'More comprehensive information about the product, including specifications, use cases, and customer testimonials. This section provides in-depth details for interested customers.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
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
