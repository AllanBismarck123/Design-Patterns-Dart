import 'package:design_patterns/decorator/dataSource.dart';

class SalaryManager {

  DataSource? _source;

  SalaryManager(DataSource source) {
    _source = source;
  }

  String load() {
    print("[SalaryManager]");
    return _source!.readData();
  }

  save(String data) {
    print("[SalaryManager]");
    _source!.writeData(data);
  }

}