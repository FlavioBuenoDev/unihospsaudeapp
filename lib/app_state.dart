import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _stategblMatricula = '';
  String get stategblMatricula => _stategblMatricula;
  set stategblMatricula(String value) {
    _stategblMatricula = value;
  }

  String _stateSenha = '';
  String get stateSenha => _stateSenha;
  set stateSenha(String value) {
    _stateSenha = value;
  }

  String _stategblLogin = '';
  String get stategblLogin => _stategblLogin;
  set stategblLogin(String value) {
    _stategblLogin = value;
  }

  List<String> _stateCarencia = [];
  List<String> get stateCarencia => _stateCarencia;
  set stateCarencia(List<String> value) {
    _stateCarencia = value;
  }

  void addToStateCarencia(String value) {
    stateCarencia.add(value);
  }

  void removeFromStateCarencia(String value) {
    stateCarencia.remove(value);
  }

  void removeAtIndexFromStateCarencia(int index) {
    stateCarencia.removeAt(index);
  }

  void updateStateCarenciaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    stateCarencia[index] = updateFn(_stateCarencia[index]);
  }

  void insertAtIndexInStateCarencia(int index, String value) {
    stateCarencia.insert(index, value);
  }

  String _stategblDependente = '';
  String get stategblDependente => _stategblDependente;
  set stategblDependente(String value) {
    _stategblDependente = value;
  }

  bool _isLandscapeLocked = false;
  bool get isLandscapeLocked => _isLandscapeLocked;
  set isLandscapeLocked(bool value) {
    _isLandscapeLocked = value;
  }

  String _gblDivulgacao = '';
  String get gblDivulgacao => _gblDivulgacao;
  set gblDivulgacao(String value) {
    _gblDivulgacao = value;
  }

  String _gblNome = '';
  String get gblNome => _gblNome;
  set gblNome(String value) {
    _gblNome = value;
  }

  bool _isMenuShow = false;
  bool get isMenuShow => _isMenuShow;
  set isMenuShow(bool value) {
    _isMenuShow = value;
  }

  bool _isNotificacao = false;
  bool get isNotificacao => _isNotificacao;
  set isNotificacao(bool value) {
    _isNotificacao = value;
  }
}
