import 'package:lovelive_ibp/modules/idols/models/lovelive_api.dart';
import 'package:lovelive_ibp/modules/idols/repository/lovelive_repository.dart';
import 'package:mobx_triple/mobx_triple.dart';

import '../../idols_state.dart';

class IdolsController extends MobXStore<ErrorIdolState, IdolState> {
  IdolsController(this._loveLiveRepository) : super(InitialIdolState());

  final LoveLiveRepository _loveLiveRepository;

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Muses] class object
  Future<void> listMuses() async {
    setLoading(true);
    try {
      final muses = await _loveLiveRepository.listMuses();
      update(SuccessIdolState(muses));
    } catch (e) {
      setError(ErrorIdolState("Erro ao carregar Idols!"));
    }
    setLoading(false);
  }

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Aqours] class object
  Future<void> listAqours() async {
    setLoading(true);
    try {
      final aqours = await _loveLiveRepository.listAqours();
      update(SuccessIdolState(aqours));
    } catch (e) {
      setError(ErrorIdolState("Erro ao carregar Idols!"));
    }
    setLoading(false);
  }

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Nijigasaki] class object
  Future<void> listNijigasaki() async {
    setLoading(true);
    try {
      final nijigasaki = await _loveLiveRepository.listNijigasaki();
      update(SuccessIdolState(nijigasaki));
    } catch (e) {
      setError(ErrorIdolState("Erro ao carregar Idols!"));
    }
    setLoading(false);
  }

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Liella] class object
  Future<void> listLiella() async {
    setLoading(true);
    try {
      final liella = await _loveLiveRepository.listLiella();
      update(SuccessIdolState(liella));
    } catch (e) {
      setError(ErrorIdolState("Erro ao carregar Idols!"));
    }
    setLoading(false);
  }

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> an object of [Support]
  Future<void> getSupport() async {
    setLoading(true);
    try {
      final support = await _loveLiveRepository.getSupport();
      final nijiSupport = support!.nijigasakiSupport!;
      update(SuccessIdolState(nijiSupport));
    } catch (e) {
      setError(ErrorIdolState("Erro ao carregar Suporte!"));
    }
    setLoading(false);
  }
}
