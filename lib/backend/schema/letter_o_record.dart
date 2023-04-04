import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'letter_o_record.g.dart';

abstract class LetterORecord
    implements Built<LetterORecord, LetterORecordBuilder> {
  static Serializer<LetterORecord> get serializer => _$letterORecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'img_link')
  String? get imgLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LetterORecordBuilder builder) => builder
    ..name = ''
    ..imgLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('letter_O');

  static Stream<LetterORecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LetterORecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LetterORecord._();
  factory LetterORecord([void Function(LetterORecordBuilder) updates]) =
      _$LetterORecord;

  static LetterORecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLetterORecordData({
  String? name,
  String? imgLink,
}) {
  final firestoreData = serializers.toFirestore(
    LetterORecord.serializer,
    LetterORecord(
      (l) => l
        ..name = name
        ..imgLink = imgLink,
    ),
  );

  return firestoreData;
}
