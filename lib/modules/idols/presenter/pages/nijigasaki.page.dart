import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:lovelive_ibp/modules/idols/presenter/controllers/idols_controller.dart';
import 'package:lovelive_ibp/modules/idols/presenter/widgets/idol_card.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

import '../../idols_state.dart';

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
    Modular.get<IdolsController>().observer(
      onState: (state) => print(state),
      onError: (error) => print(error),
      onLoading: (loading) => print(loading),
    );
    Modular.get<IdolsController>().listNijigasaki();
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
                  final color = IdolColors.nijigasakiColor[index];
                  return IdolCard(idol: idol, color: color).nijigasaki()!;
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
