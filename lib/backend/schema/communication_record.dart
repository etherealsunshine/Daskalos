import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'communication_record.g.dart';

abstract class CommunicationRecord
    implements Built<CommunicationRecord, CommunicationRecordBuilder> {
  static Serializer<CommunicationRecord> get serializer =>
      _$communicationRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'img_link')
  String? get imgLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CommunicationRecordBuilder builder) => builder
    ..name = ''
    ..imgLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Communication');

  static Stream<CommunicationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommunicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommunicationRecord._();
  factory CommunicationRecord(
          [void Function(CommunicationRecordBuilder) updates]) =
      _$CommunicationRecord;

  static CommunicationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommunicationRecordData({
  String? name,
  String? imgLink,
}) {
  final firestoreData = serializers.toFirestore(
    CommunicationRecord.serializer,
    CommunicationRecord(
      (c) => c
        ..name = name
        ..imgLink = imgLink,
    ),
  );

  return firestoreData;
}
