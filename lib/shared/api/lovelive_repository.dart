import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:lovelive_ibp/shared/api/lovelive_api.dart';

abstract class LoveLiveRepository {
  Future<List<Muses?>> listMuses();
  Future<List<Aqours?>> listAqours();
  Future<List<Nijigasaki?>> listNijigasaki();
  Future<List<Liella?>> listLiella();
  Future<Support?> getSupport();
}

class LoveLiveRepositoryImpl implements LoveLiveRepository {
  /// Acess the ``json`` database file
  ///
  /// Return the whole file as [String]
  Future<String> _loadLLJson() async {
    return await rootBundle.loadString('lib/database/lovelive.json');
  }

  /// Get the whole json data as string and store it in a variable
  ///
  /// [Decode] json as string to a [Json object]
  ///
  /// Finally, from [LoveLiveAPI] class uses ``.fromJson`` method
  /// to transform [Json Object] to (respective) API object class
  ///
  Future<LoveLiveAPI> _getResponseData() async {
    String? loveliveJsonString = await _loadLLJson();

    final response = json.decode(loveliveJsonString);

    final api = LoveLiveAPI.fromJson(response);
    return api;
  }

  /// Return a [List] of object class [Aqours]
  @override
  Future<List<Aqours?>> listAqours() async {
    final data = await _getResponseData();

    try {
      return data.idols!.aqours!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  /// Return a [List] of object class [Liella]
  @override
  Future<List<Liella?>> listLiella() async {
    final data = await _getResponseData();

    try {
      return data.idols!.liella!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  /// Return a [List] of object class [Muses]
  @override
  Future<List<Muses?>> listMuses() async {
    final data = await _getResponseData();

    try {
      return data.idols!.muses!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  /// Return a [List] of object class [Nijigasaki]
  @override
  Future<List<Nijigasaki?>> listNijigasaki() async {
    final data = await _getResponseData();

    try {
      return data.idols!.nijigasaki!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  /// Return an object class [Support]
  @override
  Future<Support?> getSupport() async {
    final data = await _getResponseData();

    try {
      return data.support!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }
}
