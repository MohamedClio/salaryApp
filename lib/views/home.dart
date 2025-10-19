import 'package:flutter/material.dart';
import 'package:my_salary/views/widgets/salary_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Text('My Salary!'),
          ],
        ),
      ),
      body: SalaryCard(
        jobTitle: "Senior QA Engineer",
        jobPostedAtTimestamp: 'jobPostedAtTimestamp',
        employerLogo:
            'https://www.glassdoor.com/assets/images/meta/logo-og.png',
        jobPostedAt: 'Just now',
      ),
    );
  }
}
