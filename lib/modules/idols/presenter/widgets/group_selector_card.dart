import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GroupCard extends StatelessWidget {
  final String? group;
  final String? path;
  final Image? image;
  final List<Image?>? imageRow;
  const GroupCard({Key? key, this.group, this.path, this.image, this.imageRow})
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
          color: Colors.pinkAccent[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            if (imageRow == null)
              Container(
                decoration: BoxDecoration(
                  image: image != null
                      ? DecorationImage(
                          image: image!.image,
                        )
                      : null,
                ),
              )
            else
              Row(
                children: [
                  for (int i = 0; i < imageRow!.length; i++)
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: imageRow![i]!.image),
                        ),
                      ),
                    ),
                ],
              ),
            Positioned(
              left: 5,
              top: 8,
              child: Text(
                group!,
                style: const TextStyle(
                    fontFamily: "Cascadia",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
