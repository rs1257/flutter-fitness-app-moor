class ValidationType {
  ValidationCodes errorCode;
  String message;

  ValidationType(errorCode, message) {
    this.errorCode = errorCode;
    this.message = constructMessage(message);
  }

  String constructMessage(message) {
    var now = DateTime.now();
    return '[' + now.toString() + '] [' + getValidationCodeString() + '] ' + message;
  }

  String getValidationCodeString() {
    switch (errorCode) {
      case ValidationCodes.OK:
        return 'OK';
      case ValidationCodes.NOTICE:
        return 'NOTICE';
      case ValidationCodes.WARNING:
        return 'WARNING';
      case ValidationCodes.ERROR:
        return 'ERROR';
      default:
        return 'ERROR';
    }
  }
}

enum ValidationCodes {
  OK,
  NOTICE,
  WARNING,
  ERROR
}