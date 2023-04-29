
import 'dart:io';

class Walletinterbanktransfer_Viewmodel {

 static List<String> banks = ['MTN', 'Vodafone','AirtelTigo'];
 static var selectedBank;
 static String? bank;

 static void setBank(String val) {
   bank = val;
   print(Walletinterbanktransfer_Viewmodel.bank);
  // notifyListeners();
 }

}