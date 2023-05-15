import 'package:design_patterns/decorator/compressionDecorator.dart';
import 'package:design_patterns/decorator/encryptionDecorator.dart';
import 'package:design_patterns/decorator/fileDataSource.dart';
import 'package:design_patterns/decorator/salaryManager.dart';

import 'dataSource.dart';

class ApplicationConfigurator {

  configurationExample(bool enabledEncryption, bool enabledCompression) {
    DataSource source = FileDataSource("salary.dat");

    if(enabledEncryption) {
      source = EncryptionDecorator(source);
    }
    
    if(enabledCompression) {
      source = CompressionDecorator(source);
    }

    var logger = SalaryManager(source);
    logger.save("Meus dados");
    var salary = logger.load();
    print(salary);
  }

}