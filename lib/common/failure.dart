import 'dart:developer';

class Failure {
  final String message;

  Failure(String message) : message = message.replaceAll('Exception: ', '');
}

extension PrintFailureMessage on Failure {
  void print() {
    log(message);
  }
}
