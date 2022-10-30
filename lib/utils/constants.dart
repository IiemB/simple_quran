// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

const BASMALAH = 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ';

String get QURAN_API_BASE_URL => dotenv.get('QURAN_API_BASE_URL');

const SETTINGS = 'QURAN_SIZE';

const SOURCE_CODE = 'https://github.com/IiemB/simple_quran.git';
