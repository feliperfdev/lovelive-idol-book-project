import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/modules/idols/presenter/muses.page.dart';
import 'package:lovelive_ibp/shared/api/lovelive_repository.dart';

import 'presenter/idols.page.dart';

class IdolsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => LoveLiveRepositoryImpl()),
        Bind((i) => IdolsController(i.get<LoveLiveRepositoryImpl>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => IdolsPage()),
        ChildRoute('/muses', child: (_, args) => MusesPage()),
        // ChildRoute('/aqors', child: (_, args) => IdolsPage()),
        // ChildRoute('/nijigasaki', child: (_, args) => IdolsPage()),
        // ChildRoute('/liella', child: (_, args) => IdolsPage()),
      ];
}
