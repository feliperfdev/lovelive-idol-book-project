import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

import 'widgets/idol_card.dart';

class AqoursPage extends StatefulWidget {
  const AqoursPage({Key? key}) : super(key: key);

  @override
  State<AqoursPage> createState() => _AqoursPageState();
}

class _AqoursPageState extends State<AqoursPage> {
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
      body: FutureBuilder<List<Aqours?>>(
          future: controller.listAqours(),
          builder: (_, AsyncSnapshot<List<Aqours?>> snapshot) {
            if (snapshot.hasData) {
              return PageView.builder(
                controller: _pageController,
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final idol = snapshot.data![index];
                  final color = IdolColors.aqoursColor[index];
                  return IdolCard(idol: idol, color: color).aqours()!;
                },
              );
            } else {
              return const CircularProgressIndicator(color: Colors.white);
            }
          }),
    );
  }
}
