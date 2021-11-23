import 'package:flutter/material.dart';
import 'package:lovelive_ibp/shared/theme/idol_text.dart';
import 'package:lovelive_ibp/shared/theme/idols_img.dart';

abstract class IdolCardAbs {
  Widget? nijigasaki(BuildContext? context);
  Widget? liella(BuildContext? context);
}

class IdolCard extends StatelessWidget implements IdolCardAbs {
  final dynamic idol;
  final Color? color;
  const IdolCard({Key? key, this.idol, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent[700]!,
            offset: const Offset(2, 2),
            blurRadius: .8,
          ),
        ],
      ),
      child: Column(
        children: [
          IdolText(idol!.name, fontSize: 20),
          const SizedBox(height: 12),
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: idolImage(idol!.picture)!.image,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
                  offset: const Offset(0, -2),
                  blurRadius: .8,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IdolText('Gender: ${idol!.gender}',
                        fontWeight: FontWeight.w700),
                    IdolText('Bloodtype: ${idol!.bloodtype}',
                        fontWeight: FontWeight.w700),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IdolText('Birthday: ${idol!.birthday}',
                        fontWeight: FontWeight.w700),
                    IdolText('Height: ${idol!.height}',
                        fontWeight: FontWeight.w700),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                ),
                IdolText('Favorite food: ${idol!.favoritefood}',
                    fontWeight: FontWeight.w700),
                IdolText('Disliked food: ${idol!.dislikedfood}',
                    fontWeight: FontWeight.w700),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                ),
                IdolText('Charmpoint: ${idol!.charmpoint}',
                    fontWeight: FontWeight.w700),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                ),
                IdolText('${idol!.description}', fontWeight: FontWeight.w700),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget? nijigasaki(BuildContext? context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent[700]!,
            offset: const Offset(2, 2),
            blurRadius: .8,
          ),
        ],
      ),
      child: Column(
        children: [
          IdolText(idol!.name, fontSize: 20),
          const SizedBox(height: 12),
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: idolImage(idol!.picture)!.image,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
                  offset: const Offset(0, -2),
                  blurRadius: .8,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IdolText('Gender: ${idol!.gender}',
                        fontWeight: FontWeight.w700),
                    IdolText('Bloodtype: ${idol!.bloodtype}',
                        fontWeight: FontWeight.w700),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IdolText('Birthday: ${idol!.birthday}',
                        fontWeight: FontWeight.w700),
                    IdolText('Height: ${idol!.height}',
                        fontWeight: FontWeight.w700),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                ),
                IdolText('${idol!.description}', fontWeight: FontWeight.w700),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget? liella(BuildContext? context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent[700]!,
            offset: const Offset(2, 2),
            blurRadius: .8,
          ),
        ],
      ),
      child: Column(
        children: [
          IdolText(idol!.name, fontSize: 20),
          const SizedBox(height: 12),
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: idolImage(idol!.picture)!.image,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
                  offset: const Offset(0, -2),
                  blurRadius: .8,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IdolText('Gender: ${idol!.gender}',
                        fontWeight: FontWeight.w700),
                    IdolText('Bloodtype: ${idol!.bloodtype}',
                        fontWeight: FontWeight.w700),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IdolText('Birthday: ${idol!.birthday}',
                        fontWeight: FontWeight.w700),
                    IdolText('Height: ${idol!.height}',
                        fontWeight: FontWeight.w700),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                ),
                IdolText('Favorite food: ${idol!.favoritefood}',
                    fontWeight: FontWeight.w700),
                IdolText('Disliked food: ${idol!.dislikedfood}',
                    fontWeight: FontWeight.w700),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                ),
                IdolText('${idol!.description}', fontWeight: FontWeight.w700),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
