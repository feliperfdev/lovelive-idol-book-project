import 'package:flutter_test/flutter_test.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/api/lovelive_repository.dart';
import 'package:mocktail/mocktail.dart';

class LoveLiveRepositoryMock extends Mock implements LoveLiveRepository {}

main() {
  final repository = LoveLiveRepositoryMock();
  final controller = IdolsController(repository);

  group('Should return a list of all Idols groups from database', () {
    test('Should return a ``List<Muses>``', () async {
      when(() => repository.listMuses()).thenAnswer((_) async => <Muses?>[]);

      var result = await controller.listMuses();

      expect(result, isA<List<Muses?>>());
    });

    test('Should return a ``List<Aqours>``', () async {
      when(() => repository.listAqours()).thenAnswer((_) async => <Aqours?>[]);

      var result = await controller.listAqours();

      expect(result, isA<List<Aqours?>>());
    });

    test('Should return a ``List<Nijigasaki>``', () async {
      when(() => repository.listNijigasaki())
          .thenAnswer((_) async => <Nijigasaki?>[]);

      var result = await controller.listNijigasaki();

      expect(result, isA<List<Nijigasaki?>>());
    });

    test('Should return a ``List<Liella>``', () async {
      when(() => repository.listLiella()).thenAnswer((_) async => <Liella?>[]);

      var result = await controller.listLiella();

      expect(result, isA<List<Liella?>>());
    });

    test('Should return a ``Support`` class object', () async {
      when(() => repository.getSupport()).thenAnswer((_) async => Support());

      var result = await controller.getSupport();

      expect(result, isA<Support?>());
    });
  });
}
