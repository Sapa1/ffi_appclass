import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

typedef CPlayAudio = ffi.Void Function(ffi.Pointer<Utf8> path);
typedef DartPlayAudio = void Function(ffi.Pointer<Utf8> path);

class NativeFunctions {
  final urnaLib = ffi.DynamicLibrary.open('assets/dylibs/windows/urna.dll');
  void playAudio(String path) {
    final playAudio =
        urnaLib.lookupFunction<CPlayAudio, DartPlayAudio>('playAudio');

    playAudio(path.toNativeUtf8());
  }
}
