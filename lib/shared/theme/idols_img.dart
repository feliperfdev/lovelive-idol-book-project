import 'package:flutter/cupertino.dart';

Image? idolImage(String? path, {BoxFit? fit}) => Image.network(path!, fit: fit);
