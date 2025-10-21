import 'dart:convert';
import 'package:my_salary/models/salary.dart';
import 'package:http/http.dart' as http;

class SalaryApi {
  static Future<List<Salary>> getSalary() async {
    var uri = Uri.https('jsearch.p.rapidapi.com', '/search', {
      "query": 'senior QA in Berlin',
      "page": '1',
      "num_pages": '1',
      "country": 'de',
      "date_posted": 'all',
    });

    final response = await http.get(
      uri,
      headers: {
        'x-rapidapi-key': '22037ecdd0msh2a468284ae2498fp122018jsnb88eea2b1183',
        'x-rapidapi-host': 'jsearch.p.rapidapi.com',
      },
    );
    Map data = jsonDecode(response.body);
  }
}
