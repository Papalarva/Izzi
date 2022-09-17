import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  late SharedPreferences prefs;

  String megas = 'X megas';

  String canales = 'X canales';

  String precioInicial = '\$000';

  String precioPromocion = '\$000';

  String duracionContrato = '0 meses';

  bool pago = false;

  String imagenTemporal = '';

  String nameModem = 'Arris TG16552A';

  String modemPassword4G = 'SDFASDF456ASDFAS';

  String modemPassword5G = 'DKOSPAJ783O18W9';
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
