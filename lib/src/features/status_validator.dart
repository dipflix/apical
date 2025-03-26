import 'dart:io';

import 'package:dio/dio.dart';

extension HttpResponseExtension on Response<dynamic> {
  bool get isInformation => (statusCode! ~/ 100) == 1;

  bool get isSuccessful => (statusCode! ~/ 100) == 2;

  bool get isRedirection => (statusCode! ~/ 100) == 3;

  bool get isError => (statusCode! ~/ 100) == 4;

  bool get isServerError => (statusCode! ~/ 100) == 5;

  bool get isUnauthorized => statusCode! == HttpStatus.unauthorized;

  bool get isForbidden => statusCode! == HttpStatus.forbidden;

  bool get isNotFound => statusCode! == HttpStatus.notFound;

  bool get isMethodNotAllowed => statusCode! == HttpStatus.methodNotAllowed;

  bool get isNotAcceptable => statusCode! == HttpStatus.notAcceptable;

  bool get isRequestTimeout => statusCode! == HttpStatus.requestTimeout;

  bool get isConflict => statusCode! == HttpStatus.conflict;

  bool get isGone => statusCode! == HttpStatus.gone;

  bool get isUnsupportedMediaType =>
      statusCode! == HttpStatus.unsupportedMediaType;

  bool get isTooManyRequests => statusCode! == HttpStatus.tooManyRequests;

  bool get isInternalServerError =>
      statusCode! == HttpStatus.internalServerError;

  bool get isNotImplemented => statusCode! == HttpStatus.notImplemented;

  bool get isBadGateway => statusCode! == HttpStatus.badGateway;

  bool get isServiceUnavailable => statusCode! == HttpStatus.serviceUnavailable;

  bool get isGatewayTimeout => statusCode! == HttpStatus.gatewayTimeout;

  bool get isHttpVersionNotSupported =>
      statusCode! == HttpStatus.httpVersionNotSupported;

  bool get isVariantAlsoNegotiates =>
      statusCode! == HttpStatus.variantAlsoNegotiates;

  bool get isInsufficientStorage =>
      statusCode! == HttpStatus.insufficientStorage;

  bool get isLoopDetected => statusCode! == HttpStatus.loopDetected;

  bool get isNotExtended => statusCode! == HttpStatus.notExtended;

  bool get isNetworkAuthenticationRequired =>
      statusCode! == HttpStatus.networkAuthenticationRequired;

  bool get isProxyAuthenticationRequired =>
      statusCode! == HttpStatus.proxyAuthenticationRequired;

  bool get isBadRequest => statusCode! == HttpStatus.badRequest;

  bool get isPaymentRequired => statusCode! == HttpStatus.paymentRequired;

  bool get isLocked => statusCode! == HttpStatus.locked;

  bool get isPreconditionFailed => statusCode! == HttpStatus.preconditionFailed;

  bool get isExpectationFailed => statusCode! == HttpStatus.expectationFailed;

  bool get isUpgradeRequired => statusCode! == HttpStatus.upgradeRequired;

  bool get isPreconditionRequired =>
      statusCode! == HttpStatus.preconditionRequired;

  bool get isRangeNotSatisfiable =>
      statusCode! == HttpStatus.requestedRangeNotSatisfiable;

  bool get isMisdirectedRequest => statusCode! == HttpStatus.misdirectedRequest;

  bool get isUnavailableForLegalReasons =>
      statusCode! == HttpStatus.unavailableForLegalReasons;

  bool get isUnprocessableEntity =>
      statusCode! == HttpStatus.unprocessableEntity;
}
