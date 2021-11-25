import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/home/home_module.dart';
import 'package:lovelive_ibp/modules/idols/idols_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/idols', module: IdolsModule()),
      ];
}
