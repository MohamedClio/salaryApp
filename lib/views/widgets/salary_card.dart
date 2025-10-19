import 'package:flutter/material.dart';

class SalaryCard extends StatelessWidget {
  final String jobTitle;
  final String jobPostedAtTimestamp;
  final String jobPostedAt;
  final String employerLogo;

  const SalaryCard({
    super.key,
    required this.jobTitle,
    required this.jobPostedAtTimestamp,
    required this.employerLogo,
    required this.jobPostedAt,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0.0, 10.0),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black38, BlendMode.multiply),
          image: NetworkImage(employerLogo),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                jobTitle,
                style: TextStyle(fontSize: 19),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.timer, color: Colors.red, size: 18),
                      SizedBox(width: 7),
                      Text(jobPostedAtTimestamp),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.code, color: Colors.yellow, size: 18),
                      SizedBox(width: 7),
                      Text(jobPostedAt),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
