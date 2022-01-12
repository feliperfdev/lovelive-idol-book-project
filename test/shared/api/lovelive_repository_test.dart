import 'package:flutter_test/flutter_test.dart';
import 'package:lovelive_ibp/modules/idols/idols_state.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/modules/idols/models/lovelive_api.dart';
import 'package:lovelive_ibp/modules/idols/repository/lovelive_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:triple_test/triple_test.dart';

class LoveLiveRepositoryMock extends Mock implements LoveLiveRepository {}

main() {
  final repository = LoveLiveRepositoryMock();

  group('Should return a list of all Idols groups from database', () {
    storeTest<IdolsController>(
      'Should return a SuccessState if load ``List<Muses>``',
      build: () {
        when(() => repository.listMuses()).thenAnswer((_) async => <Muses>[]);

        return IdolsController(repository);
      },
      act: (controller) => controller.listMuses(),
      expect: () => [
        isA<InitialIdolState>(),
        tripleLoading,
        isA<SuccessIdolState>(),
        false,
      ],
    );
    storeTest<IdolsController>(
      'Should return a SuccessState if load ``List<Aqours>``',
      build: () {
        when(() => repository.listAqours()).thenAnswer((_) async => <Aqours>[]);

        return IdolsController(repository);
      },
      act: (controller) => controller.listAqours(),
      expect: () => [
        isA<InitialIdolState>(),
        tripleLoading,
        isA<SuccessIdolState>(),
        false,
      ],
    );
    storeTest<IdolsController>(
      'Should return a SuccessState if load ``List<Nijigasaki>``',
      build: () {
        when(() => repository.listNijigasaki())
            .thenAnswer((_) async => <Nijigasaki>[]);

        return IdolsController(repository);
      },
      act: (controller) => controller.listNijigasaki(),
      expect: () => [
        isA<InitialIdolState>(),
        tripleLoading,
        isA<SuccessIdolState>(),
        false,
      ],
    );
    storeTest<IdolsController>(
      'Should return a SuccessState if load ``List<Liella>``',
      build: () {
        when(() => repository.listLiella()).thenAnswer((_) async => <Liella>[]);

        return IdolsController(repository);
      },
      act: (controller) => controller.listLiella(),
      expect: () => [
        isA<InitialIdolState>(),
        tripleLoading,
        isA<SuccessIdolState>(),
        false,
      ],
    );
  });
}
