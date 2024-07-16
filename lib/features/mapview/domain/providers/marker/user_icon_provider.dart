import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final userIconProvider = FutureProvider<BitmapDescriptor>((ref) async {
  final Uint8List customIconBytes = await const AssetImage('assets/icons/user_icon.png').pngUint8List;
  return BitmapDescriptor.bytes(customIconBytes);
});
