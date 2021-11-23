import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

import 'widgets/idol_card.dart';

class AqoursPage extends StatelessWidget {
  AqoursPage({Key? key}) : super(key: key);

  final controller = Modular.get<IdolsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Aqours?>>(
          future: controller.listAqours(),
          builder: (_, AsyncSnapshot<List<Aqours?>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final idol = snapshot.data![index];
                  final color = IdolColors.aqoursColor[index];
                  return IdolCard(idol: idol, color: color);
                },
              );
            } else {
              return const CircularProgressIndicator(color: Colors.white);
            }
          }),
    );
  }
}
