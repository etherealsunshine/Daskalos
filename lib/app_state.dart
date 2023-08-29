import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _indexReport = prefs.getInt('ff_indexReport') ?? _indexReport;
    });
    _safeInit(() {
      _IsATeacher = prefs.getBool('ff_IsATeacher') ?? _IsATeacher;
    });
    _safeInit(() {
      _centrecode = prefs.getInt('ff_centrecode') ?? _centrecode;
    });
    _safeInit(() {
      _phoneno = prefs.getString('ff_phoneno') ?? _phoneno;
    });
    _safeInit(() {
      _childprogresslocal =
          prefs.getStringList('ff_childprogresslocal') ?? _childprogresslocal;
    });
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _indexReport = 0;
  int get indexReport => _indexReport;
  set indexReport(int _value) {
    _indexReport = _value;
    prefs.setInt('ff_indexReport', _value);
  }

  bool _IsATeacher = false;
  bool get IsATeacher => _IsATeacher;
  set IsATeacher(bool _value) {
    _IsATeacher = _value;
    prefs.setBool('ff_IsATeacher', _value);
  }

  int _centrecode = 0;
  int get centrecode => _centrecode;
  set centrecode(int _value) {
    _centrecode = _value;
    prefs.setInt('ff_centrecode', _value);
  }

  String _phoneno = '+91';
  String get phoneno => _phoneno;
  set phoneno(String _value) {
    _phoneno = _value;
    prefs.setString('ff_phoneno', _value);
  }

  List<String> _childprogresslocal = [];
  List<String> get childprogresslocal => _childprogresslocal;
  set childprogresslocal(List<String> _value) {
    _childprogresslocal = _value;
    prefs.setStringList('ff_childprogresslocal', _value);
  }

  void addToChildprogresslocal(String _value) {
    _childprogresslocal.add(_value);
    prefs.setStringList('ff_childprogresslocal', _childprogresslocal);
  }

  void removeFromChildprogresslocal(String _value) {
    _childprogresslocal.remove(_value);
    prefs.setStringList('ff_childprogresslocal', _childprogresslocal);
  }

  void removeAtIndexFromChildprogresslocal(int _index) {
    _childprogresslocal.removeAt(_index);
    prefs.setStringList('ff_childprogresslocal', _childprogresslocal);
  }

  void updateChildprogresslocalAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _childprogresslocal[_index] = updateFn(_childprogresslocal[_index]);
    prefs.setStringList('ff_childprogresslocal', _childprogresslocal);
  }

  String _name = '';
  String get name => _name;
  set name(String _value) {
    _name = _value;
    prefs.setString('ff_name', _value);
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    prefs.setString('ff_email', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
