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

String? obterSaudacao() {
  DateTime agora = DateTime.now();
  int hora = agora.hour;

  if (hora >= 0 && hora <= 5) {
    return 'Boa madrugada';
  } else if (hora >= 6 && hora < 12) {
    return 'Bom dia';
  } else if (hora >= 12 && hora < 18) {
    return 'Boa tarde';
  } else {
    return 'Boa noite';
  }
}

String? adicionarZeroAEsquerda(int? numero) {
  // crie uma função em dart que verifica se o tamanho do numero é menor que 2, se for menor vaiconcatenar um 0 há frente, caso contrario vai retornar o valor normal
  if (numero != null) {
    if (numero < 10) {
      return '0$numero';
    } else {
      return numero.toString();
    }
  }
  return null;
}
