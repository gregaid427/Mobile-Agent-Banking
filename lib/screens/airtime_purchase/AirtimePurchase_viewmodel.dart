
import 'dart:io';

class AirtimePurchaseViewModel {

 static List<String> networks = ['MTN', 'Vodafone','AirtelTigo'];
 static var selectedNetwork;
 static String? network;

 static void setNetwork(String val) {
   network = val;
   print(AirtimePurchaseViewModel.network);
  // notifyListeners();
 }

}