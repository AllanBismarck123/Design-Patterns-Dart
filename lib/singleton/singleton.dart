import 'package:synchronized/extension.dart';

class Singleton {
  
  static String? _uniqueInstance;

  Future<String?> getInstance() {
    if(_uniqueInstance == null) {
      _uniqueInstance = "Sou a única instância";
    }

    return synchronized(() async {
      return _uniqueInstance;
    });
  }

}