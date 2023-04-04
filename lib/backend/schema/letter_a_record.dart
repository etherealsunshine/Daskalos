import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'letter_a_record.g.dart';

abstract class LetterARecord
    implements Built<LetterARecord, LetterARecordBuilder> {
  static Serializer<LetterARecord> get serializer => _$letterARecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Link')
  String? get link;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LetterARecordBuilder builder) => builder
    ..name = ''
    ..link = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LetterA');

  static Stream<LetterARecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LetterARecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LetterARecord._();
  factory LetterARecord([void Function(LetterARecordBuilder) updates]) =
      _$LetterARecord;

  static LetterARecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLetterARecordData({
  String? name,
  String? link,
}) {
  final firestoreData = serializers.toFirestore(
    LetterARecord.serializer,
    LetterARecord(
      (l) => l
        ..name = name
        ..link = link,
    ),
  );

  return firestoreData;
}
