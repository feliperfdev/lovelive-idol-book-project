import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lovelive_ibp/shared/widgets/ll_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _background('assets/sky_bg.png'),
          Column(
            children: [
              const SizedBox(height: 30),
              Container(
                height: 140,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.asset('assets/logo.png').image,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              LLButton(
                text: 'START !!!',
                elevation: 3,
                onTap: () {
                  Modular.to.navigate('/idols/');
                },
              ),
              const SizedBox(height: 100),
              Container(
                height: 350,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.asset('assets/muses.png').image,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _background(String? path) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.asset(path!).image,
          ),
        ),
      );
}
