import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/modules/idols/repository/lovelive_repository.dart';

import 'presenter/pages/aqours.page.dart';
import 'presenter/pages/idols.page.dart';
import 'presenter/pages/liella.page.dart';
import 'presenter/pages/muses.page.dart';
import 'presenter/pages/nijigasaki.page.dart';

class IdolsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => LoveLiveRepositoryImpl()),
        Bind((i) => IdolsController(i.get<LoveLiveRepositoryImpl>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const IdolsPage()),
        ChildRoute('/muses', child: (_, args) => const MusesPage()),
        ChildRoute('/aqours', child: (_, args) => const AqoursPage()),
        ChildRoute('/nijigasaki', child: (_, args) => const NijigasakiPage()),
        ChildRoute('/liella', child: (_, args) => const LiellaPage()),
      ];
}
