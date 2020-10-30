import "package:cloud_firestore/cloud_firestore.dart";
import "package:intl/intl.dart";

class DatabaseService {
  Future<String> checkUpdates() async {
    DocumentSnapshot doc = await Firestore.instance
        .collection("updates")
        .document("updates")
        .get();

    String appVersion = "";
    if (doc != null && doc.data != null) {
      appVersion = doc.data['latestAppVersion'];
    }
    return appVersion;
  }

  void submitContactQuery(
      String contact, String fromTime, String toTime) async {
    String date = DateFormat("dd-MM-yy").format(DateTime.now());
    String time = DateFormat("HH:mm:ss").format(DateTime.now());
    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    Firestore.instance
        .collection("contactRequests")
        .document(timestamp)
        .setData({
      "time": time,
      "date": date,
      "contact": contact,
      "contactFromTime": fromTime,
      "contactToTime": toTime,
    });
  }
}
