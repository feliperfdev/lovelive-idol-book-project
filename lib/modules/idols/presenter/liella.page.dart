import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

import 'widgets/idol_card.dart';

class LiellaPage extends StatefulWidget {
  const LiellaPage({Key? key}) : super(key: key);

  @override
  State<LiellaPage> createState() => _LiellaPageState();
}

class _LiellaPageState extends State<LiellaPage> {
  final controller = Modular.get<IdolsController>();

  int _currentPage = 0;

  final _pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Liella?>>(
          future: controller.listLiella(),
          builder: (_, AsyncSnapshot<List<Liella?>> snapshot) {
            if (snapshot.hasData) {
              return PageView.builder(
                controller: _pageController,
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final idol = snapshot.data![index];
                  final color = IdolColors.liellaColor[index];
                  return IdolCard(idol: idol, color: color).liella()!;
                },
              );
            } else {
              return const CircularProgressIndicator(color: Colors.white);
            }
          }),
    );
  }
}
