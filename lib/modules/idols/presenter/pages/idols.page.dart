import 'package:flutter/material.dart';
import 'package:lovelive_ibp/modules/idols/presenter/widgets/group_selector_card.dart';
import 'package:lovelive_ibp/shared/theme/idols_img.dart';

class IdolsPage extends StatelessWidget {
  const IdolsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IDOLS SELECTOR',
          style: TextStyle(fontFamily: 'Cascadia'),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        itemExtent: 240,
        children: [
          GroupCard(
            path: 'muses',
            group: 'Muses',
            image: musesGroup,
          ),
          GroupCard(
            path: 'aqours',
            group: 'Aqours',
            image: aquorsGroup,
          ),
          GroupCard(
            path: 'nijigasaki',
            group: 'Nijigasaki',
            image: nijigasakiGroup,
          ),
          GroupCard(
            path: 'liella',
            group: 'Liella',
            imageRow: liellaGroup,
          ),
        ],
      ),
    );
  }
}
