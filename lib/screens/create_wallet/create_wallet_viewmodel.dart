
import 'dart:io';

class CreateWallet_ViewModel {

  static List<String> idTypes = ['Ghana Card', 'Passport','Voters ID','Drivers Licence'];
  static var selectedIdType;
  static String? idType;
  static var birthdate;
  static String initialdate = '2000-01-01 ';

  static List<String> genders = ['Male', 'Female'];
  static var selectedGender;
  static String? gender;

  static void setid(String val) {
    idType = val;
    print(CreateWallet_ViewModel.idType);
    // notifyListeners();
  }

  static void setgender(String val) {
    gender = val;
    print(CreateWallet_ViewModel.gender);
    // notifyListeners();
  }


}