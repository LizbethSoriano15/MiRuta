import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DistancematrixCall {
  static Future<ApiCallResponse> call({
    String? destination = '',
    String? origin = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'distancematrix',
      apiUrl:
          'https://maps.googleapis.com/maps/api/distancematrix/json?destinations=${destination}&origins=${origin}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyARriievpHGCl8JUIOXQPfK1q2TI4TEJDE",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? distanica(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rows[:].elements[:].distance.text''',
      ));
  static String? duracion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rows[:].elements[:].duration.text''',
      ));
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
