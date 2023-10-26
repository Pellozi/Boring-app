import 'dart:convert';
import 'dart:developer';

import 'package:boring_app/features/activity/model/activity_model.dart';
import 'package:http/http.dart' as http;

class ActivityRepository {
  static Future<Activity> getActivities() async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse('http://www.boredapi.com/api/activity/'));
      var result = Activity.fromJson(jsonDecode(response.body));
      return result;
    } catch (e) {
      log(e.toString());
      return const Activity();
    }
  }

  static Future<Activity> getActivitiesByType({required String activityType}) async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse('http://www.boredapi.com/api/activity?type=$activityType'));
      var result = Activity.fromJson(jsonDecode(response.body));
      return result;
    } catch (e) {
      log(e.toString());
      return const Activity();
    }
  }

  static Future<Activity> getActivitiesByPrice({required String minValue, required String maxValue}) async {
    var client = http.Client();
    try {
      var response =
          await client.get(Uri.parse('http://www.boredapi.com/api/activity?minprice=$minValue&maxprice=$maxValue'));
      var result = Activity.fromJson(jsonDecode(response.body));
      return result;
    } catch (e) {
      log(e.toString());
      return const Activity();
    }
  }

  static Future<Activity> getActivitiesByParticipants({required String participants}) async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse('http://www.boredapi.com/api/activity?participants=$participants'));
      var result = Activity.fromJson(jsonDecode(response.body));
      return result;
    } catch (e) {
      log(e.toString());
      return const Activity();
    }
  }
}
