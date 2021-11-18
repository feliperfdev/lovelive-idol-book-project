import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/shared/api/lovelive_api.dart';

class LiellaPage extends StatelessWidget {
  LiellaPage({Key? key}) : super(key: key);

  final controller = Modular.get<IdolsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Liella?>>(
          future: controller.listLiella(),
          builder: (_, AsyncSnapshot<List<Liella?>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final idol = snapshot.data![index];
                  return Text(idol!.name!);
                },
              );
            } else {
              return const CircularProgressIndicator(color: Colors.white);
            }
          }),
    );
  }
}
