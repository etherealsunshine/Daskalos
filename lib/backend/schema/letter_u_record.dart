import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'letter_u_record.g.dart';

abstract class LetterURecord
    implements Built<LetterURecord, LetterURecordBuilder> {
  static Serializer<LetterURecord> get serializer => _$letterURecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'img_link')
  String? get imgLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LetterURecordBuilder builder) => builder
    ..name = ''
    ..imgLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('letter_U');

  static Stream<LetterURecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LetterURecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LetterURecord._();
  factory LetterURecord([void Function(LetterURecordBuilder) updates]) =
      _$LetterURecord;

  static LetterURecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLetterURecordData({
  String? name,
  String? imgLink,
}) {
  final firestoreData = serializers.toFirestore(
    LetterURecord.serializer,
    LetterURecord(
      (l) => l
        ..name = name
        ..imgLink = imgLink,
    ),
  );

  return firestoreData;
}
