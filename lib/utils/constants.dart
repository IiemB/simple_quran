// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

String get QURAN_API_BASE_URL => dotenv.get('QURAN_API_BASE_URL');

const QURAN_SIZE = 'QURAN_SIZE';
