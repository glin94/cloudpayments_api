// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloudpayments_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _CloudPaymentsApi implements CloudPaymentsApi {
  _CloudPaymentsApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.cloudpayments.ru';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PaymentTransaction> chargeCryptogramPayment(
      CardPaymentRequest cardPaymentRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(cardPaymentRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PaymentTransaction>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/payments/cards/charge',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PaymentTransaction.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<PaymentTransaction> tokenCharge(
      TokenPaymenRequest tokenPaymenRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(tokenPaymenRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PaymentTransaction>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/payments/tokens/charge',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PaymentTransaction.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<TransactionInfo>> refund({
    required String transactionId,
    required String amount,
    Map<String, Object?>? jsonData,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'TransactionId': transactionId,
      'Amount': amount,
      'JsonData': jsonData,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<TransactionInfo>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/payments/refund',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<TransactionInfo>.fromJson(
      _result.data!,
      (json) => TransactionInfo.fromJson(json as Map<String, dynamic>),
    );
    return _value;
  }

  @override
  Future<PaymentTransaction> cardTopup(
      CardPaymentRequest cardPaymentRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(cardPaymentRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PaymentTransaction>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/payments/cards/topup',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PaymentTransaction.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<PaymentTransaction> tokenTopup(
      TokenPaymenRequest tokenPaymenRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(tokenPaymenRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PaymentTransaction>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/payments/token/topup',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PaymentTransaction.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<PaymentTransaction> confirm3DSPayment(
      Three3DSecureRequest three3DSecureRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(three3DSecureRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PaymentTransaction>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/payments/cards/post3ds',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PaymentTransaction.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<PaymentTransaction> getPayment(String transactionId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'TransactionId': transactionId};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PaymentTransaction>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/payments/get',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PaymentTransaction.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<RecurrentPayment> createSubscription(
      RecurrentCreateRequest recurrentRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(recurrentRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RecurrentPayment>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/subscriptions/create',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = RecurrentPayment.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<RecurrentInfo?>> cancelSubscription(
      String id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'Id': id};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<RecurrentInfo>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/subscriptions/cancel',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<RecurrentInfo?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : RecurrentInfo.fromJson(json as Map<String, dynamic>),
    );
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<RecurrentInfo?>> updateSubscription(
      {required SubscriptionUpdateRequest updateRequest}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updateRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<RecurrentInfo>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/subscriptions/update',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<RecurrentInfo?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : RecurrentInfo.fromJson(json as Map<String, dynamic>),
    );
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<RecurrentInfo>> getSubscription(
      String id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'Id': id};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<RecurrentInfo>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/subscriptions/get',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<RecurrentInfo>.fromJson(
      _result.data!,
      (json) => RecurrentInfo.fromJson(json as Map<String, dynamic>),
    );
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<List<RecurrentInfo>?>> findSubscriptions(
      String accountId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'accountId': accountId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<List<RecurrentInfo>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/subscriptions/find',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<List<RecurrentInfo>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<RecurrentInfo>(
                  (i) => RecurrentInfo.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<SbpResponse>> sbpLinkCreate(
      SbpRequest sbpRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sbpRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<SbpResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/payments/qr/sbp/link',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<SbpResponse>.fromJson(
      _result.data!,
      (json) => SbpResponse.fromJson(json as Map<String, dynamic>),
    );
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<SbpResponse>> sbpQrImageCreate(
      SbpRequest sbpRequest) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sbpRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<SbpResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/payments/qr/sbp/image',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<SbpResponse>.fromJson(
      _result.data!,
      (json) => SbpResponse.fromJson(json as Map<String, dynamic>),
    );
    return _value;
  }

  @override
  Future<CloudPaymentsResponse<SbpStatus>> getSbpStatus(
      int transactionId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'TransactionId': transactionId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CloudPaymentsResponse<SbpStatus>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/payments/qr/status/get',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = CloudPaymentsResponse<SbpStatus>.fromJson(
      _result.data!,
      (json) => SbpStatus.fromJson(json as Map<String, dynamic>),
    );
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
