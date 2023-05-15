import 'dataSource.dart';

class DataSourceDecorator implements DataSource {

  DataSource? _wrappee;

  DataSourceDecorator(DataSource source) {
    _wrappee = source;
  }
  
  @override
  String readData() {
    print("[DataSourceDecorator]");
    return _wrappee!.readData();
  }
  
  @override
  writeData(String data) {
    print("[DataSourceDecorator]");
    _wrappee!.writeData(data);
  }


}