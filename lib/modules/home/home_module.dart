import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/home.page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const HomePage()),
      ];
}
