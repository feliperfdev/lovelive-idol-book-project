import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GroupCard extends StatelessWidget {
  final String? group;
  final String? path;
  final Image? image;
  const GroupCard({Key? key, this.group, this.path, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Modular.to.pushNamed('/idols/$path');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image!.image,
                ),
              ),
            ),
            Positioned(
              left: 5,
              top: 8,
              child: Text(
                group!,
                style: const TextStyle(fontFamily: "Cascadia"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
