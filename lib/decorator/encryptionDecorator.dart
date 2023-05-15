import 'dataSourceDecorator.dart';

class EncryptionDecorator extends DataSourceDecorator {
  EncryptionDecorator(super.source);

  @override
  writeData(String data) {
    print("Encriptando dados...");
    super.writeData(data);
  }

  @override
  String readData() {
    var data = super.readData();
    print("Decifrando dados...");
    return data;
  }

  
}