import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/core/app_module.dart';
import 'package:lovelive_ibp/core/app_widget.dart';

main() => runApp(ModularApp(module: AppModule(), child: const AppWidget()));
