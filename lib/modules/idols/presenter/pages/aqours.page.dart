import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/modules/idols/presenter/widgets/idol_card.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

import '../../idols_state.dart';

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
    Modular.get<IdolsController>().observer(
      onState: (state) => print(state),
      onError: (error) => print(error),
      onLoading: (loading) => print(loading),
    );
    Modular.get<IdolsController>().listAqours();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ScopedBuilder(
          store: Modular.get<IdolsController>(),
          onLoading: (context) => _loader(),
          onError: (context, ErrorIdolState? error) =>
              Center(child: Text(error!.message)),
          onState: (context, state) {
            if (state is SuccessIdolState) {
              return PageView.builder(
                controller: _pageController,
                itemCount: state.idols.length,
                itemBuilder: (_, index) {
                  final idol = state.idols[index];
                  final color = IdolColors.aqoursColor[index];
                  return IdolCard(idol: idol, color: color).aqours()!;
                },
              );
            } else {
              return _loader();
            }
          }),
    );
  }

  _loader() => const CircularProgressIndicator(color: Colors.white);
}
