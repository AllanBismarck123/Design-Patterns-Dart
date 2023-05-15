import 'dataSource.dart';

class FileDataSource implements DataSource {
  String _filename = "";
  String _content = "";

  FileDataSource(String filename) {
    print("Filename: $filename");
    _filename = filename;
  }
  
  @override
  String readData() {
    return "[FileDataSource] Lendo dados: $_content";
  }
  
  @override
  writeData(String data) {
    print("[FileDataSource] Escrevendo dados: $data");
    _content += " $data";
  }

}