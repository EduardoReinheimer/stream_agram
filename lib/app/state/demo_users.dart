import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';

enum DemoAppUser {
  sahil,
  sacha,
  reuben,
  gordon,
}

extension DemoAppUserX on DemoAppUser {
  String? get id => {
        DemoAppUser.sahil: 'sahil-kumar',
        DemoAppUser.sacha: 'sacha-arbonel',
        DemoAppUser.reuben: 'reuben-turner',
        DemoAppUser.gordon: 'gordon-hayes',
      }[this];

  String? get name => {
        DemoAppUser.sahil: 'sahil-kumar',
        DemoAppUser.sacha: 'sacha-arbonel',
        DemoAppUser.reuben: 'reuben-turner',
        DemoAppUser.gordon: 'gordon-hayes',
      }[this];

  Map<String, Object>? get data => {
        DemoAppUser.sahil: {
          'first_name': 'Sahil',
          'last_name': 'Kumar',
          'full_name': 'Sahil Kumar'
        },
        DemoAppUser.sacha: {
          'first_name': 'Sacha',
          'last_name': 'Arbonel',
          'full_name': 'Sacha Arbonel'
        },
        DemoAppUser.reuben: {
          'first_name': 'Reuben',
          'last_name': 'Turner',
          'full_name': 'Reuben Turner'
        },
        DemoAppUser.gordon: {
          'first_name': 'Gordon',
          'last_name': 'Hayes',
          'full_name': 'Gordon Hayes'
        },
      }[this];

  Token? get token => <DemoAppUser, Token>{
        DemoAppUser.sahil: const Token(
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTk5ODYxOTAsInVzZXJfaWQiOiJzYWhpbC1rdW1hciJ9.5EUGRpMqIYmQdPnyOW_cB2lORkAOPbvA33ddw3KRjkk'),
        DemoAppUser.sacha: const Token(
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTk5ODYxMzgsInVzZXJfaWQiOiJzYWNoYS1hcmJvbmVsIn0.soceZ08dq16S_HX7wIdyUYagy6IPXy_aTOKtf3S-04E'),
        DemoAppUser.reuben: const Token(
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTk5ODYxODAsInVzZXJfaWQiOiJyZXViZW4tdHVybmVyIn0.nvAkJ77cwBGIWNtNMSv3bKQYlxFIbkV4-vALKLV37vQ'),
        DemoAppUser.gordon: const Token(
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTk5ODYxNjUsInVzZXJfaWQiOiJnb3Jkb24taGF5ZXMifQ.XVzj8pLiOlVUEa_1hIIiCQaXJXmuvPoSqmxvLiU4XLk'),
      }[this];
}
