import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'letter_i_record.g.dart';

abstract class LetterIRecord
    implements Built<LetterIRecord, LetterIRecordBuilder> {
  static Serializer<LetterIRecord> get serializer => _$letterIRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'img_link')
  String? get imgLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LetterIRecordBuilder builder) => builder
    ..name = ''
    ..imgLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('letter_I');

  static Stream<LetterIRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LetterIRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LetterIRecord._();
  factory LetterIRecord([void Function(LetterIRecordBuilder) updates]) =
      _$LetterIRecord;

  static LetterIRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLetterIRecordData({
  String? name,
  String? imgLink,
}) {
  final firestoreData = serializers.toFirestore(
    LetterIRecord.serializer,
    LetterIRecord(
      (l) => l
        ..name = name
        ..imgLink = imgLink,
    ),
  );

  return firestoreData;
}
