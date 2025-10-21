class Salary {
  final String jobTitle;
  final String employerLogo;
  final double jobPostedAtTimestamp;
  final String jobPostedAt;

  Salary({
    required this.jobTitle,
    required this.employerLogo,
    required this.jobPostedAt,
    required this.jobPostedAtTimestamp,
  });

  factory Salary.fromJson(dynamic json) {
    return Salary(
      jobTitle: json['jobTitle'] as String,
      employerLogo: json['employerLogo'] as String,
      jobPostedAt: json['jobPostedAt'] as String,
      jobPostedAtTimestamp: json['jobPostedAtTimestamp'] as double,
    );
  }
  static List<Salary> salariesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Salary.fromJson(data);
    }).toList();
  }
}
