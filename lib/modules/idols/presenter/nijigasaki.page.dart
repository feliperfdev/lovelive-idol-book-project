import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

import 'widgets/idol_card.dart';

class NijigasakiPage extends StatefulWidget {
  const NijigasakiPage({Key? key}) : super(key: key);

  @override
  State<NijigasakiPage> createState() => _NijigasakiPageState();
}

class _NijigasakiPageState extends State<NijigasakiPage> {
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
      appBar: AppBar(
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            iconSize: 30,
            onPressed: () {
              // Modular.to.pushNamed('/idols/nijigasaki-support');
            },
            icon: const Icon(
              Icons.support_agent,
            ),
          ),
        ],
      ),
      body: FutureBuilder<List<Nijigasaki?>>(
          future: controller.listNijigasaki(),
          builder: (_, AsyncSnapshot<List<Nijigasaki?>> snapshot) {
            if (snapshot.hasData) {
              return PageView.builder(
                controller: _pageController,
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final idol = snapshot.data![index];
                  final color = IdolColors.nijigasakiColor[index];
                  return IdolCard(idol: idol, color: color).nijigasaki()!;
                },
              );
            } else {
              return const CircularProgressIndicator(color: Colors.white);
            }
          }),
    );
  }
}
