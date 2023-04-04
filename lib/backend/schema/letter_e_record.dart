import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'letter_e_record.g.dart';

abstract class LetterERecord
    implements Built<LetterERecord, LetterERecordBuilder> {
  static Serializer<LetterERecord> get serializer => _$letterERecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'img_link')
  String? get imgLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LetterERecordBuilder builder) => builder
    ..name = ''
    ..imgLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Letter_E');

  static Stream<LetterERecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LetterERecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LetterERecord._();
  factory LetterERecord([void Function(LetterERecordBuilder) updates]) =
      _$LetterERecord;

  static LetterERecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLetterERecordData({
  String? name,
  String? imgLink,
}) {
  final firestoreData = serializers.toFirestore(
    LetterERecord.serializer,
    LetterERecord(
      (l) => l
        ..name = name
        ..imgLink = imgLink,
    ),
  );

  return firestoreData;
}
