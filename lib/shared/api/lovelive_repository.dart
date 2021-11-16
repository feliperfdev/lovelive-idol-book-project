import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:lovelive_ibp/shared/api/lovelive_api.dart';

abstract class LoveLiveRepository {
  Future<LoveLiveAPI> loadLoveLiveAPI();
}

class LoveLiveRepositoryImpl implements LoveLiveRepository {
  Future<String> _loadLLJson() async {
    return await rootBundle.loadString('lib/database/lovelive.json');
  }

  @override
  Future<LoveLiveAPI> loadLoveLiveAPI() async {
    String? loveliveJsonString = await _loadLLJson();

    final response = json.decode(loveliveJsonString);

    final api = LoveLiveAPI.fromJson(response);

    try {
      return api;
    } catch (e) {
      throw "Impossível carregar dados da API!";
    }
  }
}
