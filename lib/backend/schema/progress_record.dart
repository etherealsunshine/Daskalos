import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'progress_record.g.dart';

abstract class ProgressRecord
    implements Built<ProgressRecord, ProgressRecordBuilder> {
  static Serializer<ProgressRecord> get serializer =>
      _$progressRecordSerializer;

  String? get progressReport;

  BuiltList<String>? get progressReportList;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ProgressRecordBuilder builder) => builder
    ..progressReport = ''
    ..progressReportList = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('progress')
          : FirebaseFirestore.instance.collectionGroup('progress');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('progress').doc();

  static Stream<ProgressRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProgressRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProgressRecord._();
  factory ProgressRecord([void Function(ProgressRecordBuilder) updates]) =
      _$ProgressRecord;

  static ProgressRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProgressRecordData({
  String? progressReport,
}) {
  final firestoreData = serializers.toFirestore(
    ProgressRecord.serializer,
    ProgressRecord(
      (p) => p
        ..progressReport = progressReport
        ..progressReportList = null,
    ),
  );

  return firestoreData;
}
