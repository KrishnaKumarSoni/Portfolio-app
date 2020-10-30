import 'package:connectivity/connectivity.dart';
// import 'package:dio/dio.dart';

Connectivity connectivity;

Future<bool> checkInternet() async {
  connectivity = new Connectivity();
  ConnectivityResult result = await connectivity.checkConnectivity();
  if (result == ConnectivityResult.wifi ||
      result == ConnectivityResult.mobile) {
    return true;
  } else {
    return false;
  }
}
