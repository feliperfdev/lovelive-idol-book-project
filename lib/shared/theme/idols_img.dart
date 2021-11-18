import 'package:flutter/cupertino.dart';

Image? idolImage(String? path, {BoxFit? fit}) => Image.network(path!, fit: fit);

// Get idol group image from [assets]
Image? get musesGroup => Image.asset('assets/muses.png');
Image? get aquorsGroup => Image.asset('assets/aquors.png');
Image? get nijigasakiGroup => Image.asset('assets/nijigasaki.png');
