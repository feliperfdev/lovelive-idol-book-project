import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:lovelive_ibp/shared/api/lovelive_api.dart';

abstract class LoveLiveRepository {
  Future<LoveLiveAPI> loadLoveLiveAPI();
  Future<List<Muses?>> loadMuses();
  Future<List<Aquors?>> loadAquors();
  Future<List<Nijigasaki?>> loadNijigasaki();
  Future<List<Liella?>> loadLiella();
  Future<Support?> loadSupport();
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
  Future<LoveLiveAPI> loadLoveLiveAPI() async {
    final api = await _getResponseData();

    try {
      return api;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<List<Aquors?>> loadAquors() async {
    final api = await _getResponseData();

    try {
      return api.idols!.aquors!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<List<Liella?>> loadLiella() async {
    final api = await _getResponseData();

    try {
      return api.idols!.liella!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<List<Muses?>> loadMuses() async {
    final api = await _getResponseData();

    try {
      return api.idols!.muses!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<List<Nijigasaki?>> loadNijigasaki() async {
    final api = await _getResponseData();

    try {
      return api.idols!.nijigasaki!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }

  @override
  Future<Support?> loadSupport() async {
    final api = await _getResponseData();

    try {
      return api.support!;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }
}
