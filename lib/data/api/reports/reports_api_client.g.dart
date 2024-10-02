// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _ReportsApiClient implements ReportsApiClient {
  _ReportsApiClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ReportModel> calculateByOrderSelf(
    String startCreatedAt,
    String endCreatedAt,
    String startFinishedAt,
    String endFinishedAt,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'startCreatedAt',
      startCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'endCreatedAt',
      endCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'startFinishedAt',
      startFinishedAt,
    ));
    _data.fields.add(MapEntry(
      'endFinishedAt',
      endFinishedAt,
    ));
    final _options = _setStreamType<ReportModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/report/calculateByOrderSelf',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ReportModel _value;
    try {
      _value = ReportModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ReportModel> calculateByOrderGroup(
    String startCreatedAt,
    String endCreatedAt,
    String startFinishedAt,
    String endFinishedAt,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'startCreatedAt',
      startCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'endCreatedAt',
      endCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'startFinishedAt',
      startFinishedAt,
    ));
    _data.fields.add(MapEntry(
      'endFinishedAt',
      endFinishedAt,
    ));
    final _options = _setStreamType<ReportModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/report/calculateByOrderGroup',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ReportModel _value;
    try {
      _value = ReportModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ReportModel> calculateByIncomeSelf(
    String startCreatedAt,
    String endCreatedAt,
    String startFinishedAt,
    String endFinishedAt,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'startCreatedAt',
      startCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'endCreatedAt',
      endCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'startFinishedAt',
      startFinishedAt,
    ));
    _data.fields.add(MapEntry(
      'endFinishedAt',
      endFinishedAt,
    ));
    final _options = _setStreamType<ReportModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/report/calculateByIncomeSelf',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ReportModel _value;
    try {
      _value = ReportModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ReportModel> calculateByIncomeGroup(
    String startCreatedAt,
    String endCreatedAt,
    String startFinishedAt,
    String endFinishedAt,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'startCreatedAt',
      startCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'endCreatedAt',
      endCreatedAt,
    ));
    _data.fields.add(MapEntry(
      'startFinishedAt',
      startFinishedAt,
    ));
    _data.fields.add(MapEntry(
      'endFinishedAt',
      endFinishedAt,
    ));
    final _options = _setStreamType<ReportModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/report/calculateByIncomeGroup',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ReportModel _value;
    try {
      _value = ReportModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
