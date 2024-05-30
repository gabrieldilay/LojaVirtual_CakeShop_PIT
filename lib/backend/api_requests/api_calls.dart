import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscarCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarCEP',
      apiUrl: 'viacep.com.br/ws/$cep/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? endereco(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? complemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class PixMercadoPagoCall {
  static Future<ApiCallResponse> call({
    String? chavealeatoria = '',
    String? productTitle = '',
    String? email = '',
    String? firstName = '',
    String? lastName = '',
    String? identificationType = '',
    String? numberCpf = '',
    double? amount,
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_amount": $amount,
  "payment_method_id": "pix",
  "payer": {
    "email": "$email",
    "first_name": "$firstName",
    "last_name": "$lastName",
    "identification": {
      "type": "$identificationType",
      "number": "$numberCpf"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pix Mercado Pago',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer TEST-6136874216625663-052819-7f342152672bfcc566a9e71e5e35bf65-491455667',
        'X-Idempotency-Key': '0d5020ed-1af6-469c-ae06-$chavealeatoria',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? idStatus(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code_base64''',
      ));
  static String? chavepix(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code''',
      ));
}

class StatusPixCall {
  static Future<ApiCallResponse> call({
    int? idPix,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Status Pix',
      apiUrl: 'https://api.mercadopago.com/v1/payments/$idPix',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer TEST-6136874216625663-052819-7f342152672bfcc566a9e71e5e35bf65-491455667',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? statusPag(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class PagViaCartaoPAGBANKCall {
  static Future<ApiCallResponse> call({
    String? numberCard = '',
    int? expYear,
    int? expMonth,
    String? nomeImpreCard = '',
    String? securityCode = '',
    int? valorProduto,
    String? nomeProduto = '',
    String? refItem = '',
    String? refId = '',
    String? numeroCelular = '',
    String? dd = '',
    String? cpf = '',
    String? emailCliente = '',
    String? nomeCliente = '',
    String? token = '',
    String? randow = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer": {
    "name": "$nomeCliente",
    "email": "$emailCliente",
    "tax_id": "$cpf",
    "phones": [
      {
        "country": "55",
        "area": "$dd",
        "number": "$numeroCelular",
        "type": "MOBILE"
      }
    ]
  },
  "shipping": {
    "address": {
      "street": "Avenida Brigadeiro Faria Lima",
      "number": "1384",
      "complement": "apto 12",
      "locality": "Pinheiros",
      "city": "São Paulo",
      "region_code": "SP",
      "country": "BRA",
      "postal_code": "01452002"
    }
  },
  "reference_id": "$refId",
  "items": [
    {
      "reference_id": "$refItem",
      "name": "$nomeProduto",
      "quantity": 1,
      "unit_amount": $valorProduto
    }
  ],
  "charges": [
    {
      "reference_id": "$nomeProduto",
      "description": "itens",
      "amount": {
        "value": $valorProduto,
        "currency": "BRL"
      },
      "payment_method": {
        "type": "CREDIT_CARD",
        "installments": 1,
        "capture": true,
        "soft_descriptor": "CopyApp",
        "card": {
          "security_code": "$securityCode",
          "holder": {
            "name": "$nomeImpreCard"
          },
          "store": true,
          "exp_month": $expMonth,
          "exp_year": $expYear,
          "number": "$numberCard"
        }
      }
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pag Via Cartao PAGBANK',
      apiUrl: 'https://sandbox.api.pagseguro.com/orders',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-idempotency-key': '$randow',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].payment_response.message''',
      ));
  static String? idOrdem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? ultimos4digitos(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.charges[:].payment_method.card.last_digits''',
      ));
  static String? erroMensag(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error_messages[:].code''',
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
