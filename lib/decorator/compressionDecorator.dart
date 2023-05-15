import 'dataSourceDecorator.dart';

class CompressionDecorator extends DataSourceDecorator {
  CompressionDecorator(super.source);

  @override
  writeData(String data) {
    print("Comprimindo dados...");
    super.writeData(data);
  }

  @override
  String readData() {
    var data = super.readData();
    print("Descomprimindo dados...");
    return data;
  }
  
}