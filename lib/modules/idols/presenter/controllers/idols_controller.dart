import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/api/lovelive_repository.dart';
import 'package:mobx/mobx.dart';
part 'idols_controller.g.dart';

class IdolsController = _IdolsControllerBase with _$IdolsController;

abstract class _IdolsControllerBase with Store {
  final LoveLiveRepository _loveLiveRepository;

  _IdolsControllerBase(this._loveLiveRepository);

  Future<LoveLiveAPI> getApi() => _loveLiveRepository.loadLoveLiveAPI();
}
