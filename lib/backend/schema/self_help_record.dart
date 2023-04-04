import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'self_help_record.g.dart';

abstract class SelfHelpRecord
    implements Built<SelfHelpRecord, SelfHelpRecordBuilder> {
  static Serializer<SelfHelpRecord> get serializer =>
      _$selfHelpRecordSerializer;

  String? get name;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SelfHelpRecordBuilder builder) => builder
    ..name = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SelfHelp');

  static Stream<SelfHelpRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SelfHelpRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SelfHelpRecord._();
  factory SelfHelpRecord([void Function(SelfHelpRecordBuilder) updates]) =
      _$SelfHelpRecord;

  static SelfHelpRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSelfHelpRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    SelfHelpRecord.serializer,
    SelfHelpRecord(
      (s) => s
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}
