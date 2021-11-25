import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/modules/idols/presenter/widgets/idol_card.dart';
import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

class MusesPage extends StatefulWidget {
  const MusesPage({Key? key}) : super(key: key);

  @override
  State<MusesPage> createState() => _MusesPageState();
}

class _MusesPageState extends State<MusesPage> {
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
      body: FutureBuilder<List<Muses?>>(
          future: controller.listMuses(),
          builder: (_, AsyncSnapshot<List<Muses?>> snapshot) {
            if (snapshot.hasData) {
              return PageView.builder(
                controller: _pageController,
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final idol = snapshot.data![index];
                  final color = IdolColors.musesColor[index];
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
