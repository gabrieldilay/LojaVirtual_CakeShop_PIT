import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String saudacao() {
  var hour = DateTime.now().hour;
  if (hour < 4) {
    return 'Vai dormir, ';
  }
  if (hour < 12) {
    return 'Bom dia, ';
  }
  if (hour < 17) {
    return 'Boa tarde, ';
  }
  return 'Boa Noite, ';
}

int doubleToInteger(double valor) {
  // faça uma função para que um numero double "10.90" retorne um valor integer "1090"
  return (valor * 100).toInt();
}

String gerarUUID4() {
  // gere para mim um codigo UUID4
  String uuid = '';
  final random = math.Random();
  for (int i = 0; i < 32; i++) {
    if (i == 8 || i == 12 || i == 16 || i == 20) {
      uuid += '-';
    }
    final digit = random.nextInt(16).toRadixString(16);
    uuid += digit;
  }
  return uuid;
}

DateTime datadoInicioMes() {
  // pegue o primeiro dia do mês com as horas zeradas
  return DateTime(DateTime.now().year, DateTime.now().month, 1, 0, 0, 0, 0);
}

double? calcularLista(List<double>? numeros) {
  if (numeros == null || numeros.isEmpty) {
    return 0;
  }

  double soma = 0;
  for (double elemento in numeros) {
    soma += elemento;
  }
  return soma;
}

DateTime datadeHoje() {
  // pegue somente o dia com as horas zeradas
  return DateTime.now().subtract(Duration(
    hours: DateTime.now().hour,
    minutes: DateTime.now().minute,
    seconds: DateTime.now().second,
    milliseconds: DateTime.now().millisecond,
    microseconds: DateTime.now().microsecond,
  ));
}

List<double> somarValoresMes(
  List<double> valores,
  List<DateTime> data,
) {
  Map<int, double> somaMes = {};

  for (int i = 0; i < valores.length; i++) {
    int mes = data[i].month;
    somaMes[mes] = (somaMes[mes] ?? 0) + valores[i];
  }

  List<double> resultado = somaMes.values.toList();
  resultado =
      resultado.map((valor) => double.parse(valor.toStringAsFixed(2))).toList();

  return resultado;
}

List<DateTime> somarValoresdata(
  List<double> valores,
  List<DateTime> data,
) {
// somar os valores de cada mes e retornar a data
  Map<int, double> somaPorMes = {};

  for (int i = 0; i < valores.length; i++) {
    int mes = data[i].month;
    somaPorMes[mes] = (somaPorMes[mes] ?? 0) + valores[i];
  }

  List<DateTime> datasSomaPorMes = [];

  somaPorMes.forEach((mes, valor) {
    datasSomaPorMes.add(DateTime(data[0].year, mes, 1));
  });

  return datasSomaPorMes;
}

String decodificarIMGBase64(
  String dataimagepngbase64,
  String qrcode,
) {
  // pegue o "data:image/png;base64" e o "qrcode" e decodifique
// Decode the base64 image data
  final bytes = base64.decode(dataimagepngbase64.split(',').last);

  // If a QR code is provided, decode it
  if (qrcode != null) {
    final decodedQrCode = utf8.decode(base64.decode(qrcode));
    print('Decoded QR code: $decodedQrCode');
  }

  // Return the decoded image data as a string
  return utf8.decode(bytes);
}
