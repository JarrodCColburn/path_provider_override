import 'dart:io';
import 'dart:async';

import 'package:path/path.dart';

String _path = Directory.systemTemp.path;

Directory _dir(String folder)=>Directory(join(_path, folder));

Future<Directory> getApplicationDocumentsDirectory() => Future.value(_dir('app')..createSync());

Future<Directory> getExternalStorageDirectory() => Future.value(_dir('ext')..createSync());

Future<Directory> getTemporaryDirectory() => Future.value(_dir('tmp')..createSync());

