import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:lovelive_ibp/shared/api/lovelive_api.dart';

abstract class LoveLiveRepository {
  Future<List<Muses?>> listMuses();
  Future<List<Aquors?>> listAquors();
  Future<List<Nijigasaki?>> listNijigasaki();
  Future<List<Liella?>> listLiella();
  Future<Support?> listSupport();
}

class LoveLiveRepositoryImpl implements LoveLiveRepository {
  Future<String> _loadLLJson() async {
    return await rootBundle.loadString('lib/database/lovelive.json');
  }

  Future<LoveLiveAPI> _getResponseData() async {
    String? loveliveJsonString = await _loadLLJson();

    final response = json.decode(loveliveJsonString);

    final api = LoveLiveAPI.fromJson(response);
    return api;
  }

  @override
  Future<List<Aquors?>> listAquors() async {
    final data = await _getResponseData();

    try {
      return data.idols!.aquors!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<List<Liella?>> listLiella() async {
    final data = await _getResponseData();

    try {
      return data.idols!.liella!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<List<Muses?>> listMuses() async {
    final data = await _getResponseData();

    try {
      return data.idols!.muses!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<List<Nijigasaki?>> listNijigasaki() async {
    final data = await _getResponseData();

    try {
      return data.idols!.nijigasaki!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<Support?> listSupport() async {
    final data = await _getResponseData();

    try {
      return data.support!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }
}
