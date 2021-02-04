import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:water_reminder/models/drink.dart';

class User {
  DateTime lastLoggedIn;
  int maxWaterPerDay;

  static const lastLoggedInField = 'lastloggedIn';
  static const waterPerDayField = 'waterPerDay';
  static const maxWaterPerDayField = 'maxWaterPerDay';

  User(this.lastLoggedIn, this.maxWaterPerDay);

  User.temp() {
    this.lastLoggedIn = DateTime.now();
    this.maxWaterPerDay = 1;
  }

  User.fromDb(Map<String, dynamic> json) {
    this.maxWaterPerDay = json[maxWaterPerDayField];
    this.maxWaterPerDay = json[maxWaterPerDayField];
  }
  Map<String, dynamic> toJson() {
    return {
      lastLoggedInField: Timestamp.fromDate(this.lastLoggedIn),
      maxWaterPerDayField: this.maxWaterPerDay,
    };
  }

  @override
  String toString() {
    return 'lastLoggedIn: $lastLoggedIn, maxWaterPerDay: $maxWaterPerDay';
  }
}
