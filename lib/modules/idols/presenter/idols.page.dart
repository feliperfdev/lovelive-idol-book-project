import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/shared/theme/idols_img.dart';

class IdolsPage extends StatelessWidget {
  const IdolsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IDOLS SELECTOR'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        itemExtent: 240,
        children: [
          Flexible(
            child: GestureDetector(
              onTap: () async {
                await Modular.to.pushNamed('/idols/muses');
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: musesGroup!.image,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () async {
                await Modular.to.pushNamed('/idols/aqours');
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: aquorsGroup!.image,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () async {
                await Modular.to.pushNamed('/idols/nijigasaki');
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: nijigasakiGroup!.image,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
