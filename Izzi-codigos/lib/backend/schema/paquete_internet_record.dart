import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'paquete_internet_record.g.dart';

abstract class PaqueteInternetRecord
    implements Built<PaqueteInternetRecord, PaqueteInternetRecordBuilder> {
  static Serializer<PaqueteInternetRecord> get serializer =>
      _$paqueteInternetRecordSerializer;

  String? get megas;

  @BuiltValueField(wireName: 'precio_inicial')
  String? get precioInicial;

  @BuiltValueField(wireName: 'precio_promocion')
  String? get precioPromocion;

  @BuiltValueField(wireName: 'duracion_contrato')
  String? get duracionContrato;

  String? get canales;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PaqueteInternetRecordBuilder builder) =>
      builder
        ..megas = ''
        ..precioInicial = ''
        ..precioPromocion = ''
        ..duracionContrato = ''
        ..canales = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('paquete_internet')
          : FirebaseFirestore.instance.collectionGroup('paquete_internet');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('paquete_internet').doc();

  static Stream<PaqueteInternetRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PaqueteInternetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PaqueteInternetRecord._();
  factory PaqueteInternetRecord(
          [void Function(PaqueteInternetRecordBuilder) updates]) =
      _$PaqueteInternetRecord;

  static PaqueteInternetRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPaqueteInternetRecordData({
  String? megas,
  String? precioInicial,
  String? precioPromocion,
  String? duracionContrato,
  String? canales,
}) {
  final firestoreData = serializers.toFirestore(
    PaqueteInternetRecord.serializer,
    PaqueteInternetRecord(
      (p) => p
        ..megas = megas
        ..precioInicial = precioInicial
        ..precioPromocion = precioPromocion
        ..duracionContrato = duracionContrato
        ..canales = canales,
    ),
  );

  return firestoreData;
}
