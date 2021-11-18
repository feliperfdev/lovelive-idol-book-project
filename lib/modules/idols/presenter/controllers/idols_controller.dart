import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/api/lovelive_repository.dart';
import 'package:mobx/mobx.dart';
part 'idols_controller.g.dart';

class IdolsController = _IdolsControllerBase with _$IdolsController;

abstract class _IdolsControllerBase with Store {
  final LoveLiveRepository _loveLiveRepository;

  _IdolsControllerBase(this._loveLiveRepository);

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Muses] class object
  Future<List<Muses?>> listMuses() => _loveLiveRepository.listMuses();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Aquors] class object
  Future<List<Aquors?>> listAquors() => _loveLiveRepository.listAquors();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Nijigasaki] class object
  Future<List<Nijigasaki?>> listNijigasaki() =>
      _loveLiveRepository.listNijigasaki();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Liella] class object
  Future<List<Liella?>> listLiella() => _loveLiveRepository.listLiella();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> an object of [Support]
  Future<Support?> getSupport() => _loveLiveRepository.getSupport();
}
