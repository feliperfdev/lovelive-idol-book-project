import 'package:flutter/cupertino.dart';

Image? idolImage(String? path, {BoxFit? fit}) => Image.network(path!, fit: fit);

// Get idol group image from [assets]
Image? get musesGroup => Image.asset('assets/images/muses.png');
Image? get aquorsGroup => Image.asset('assets/images/aquors.png');
Image? get nijigasakiGroup => Image.asset('assets/images/nijigasaki.png');

List<Image?>? get liellaGroup => [
      Image.asset('assets/images/kanon.png'),
      Image.asset('assets/images/keke.png'),
      Image.asset('assets/images/chisato.png'),
      Image.asset('assets/images/sumire.png'),
      Image.asset('assets/images/ren.png'),
    ];
