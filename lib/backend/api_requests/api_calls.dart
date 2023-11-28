import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginAuthCall {
  static Future<ApiCallResponse> call({
    String? staffId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "staffId": "$staffId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login Auth',
      apiUrl: 'http://dutytrace.ddns.net/api/checkCredentials',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ScannedQRCodeCall {
  static Future<ApiCallResponse> call({
    int? locationId,
    String? locationName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "locationId": "$locationId",
  "locationName": "$locationName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ScannedQRCode',
      apiUrl: 'http://dutytrace.ddns.net/api/checkqrcode',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
