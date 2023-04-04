import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'children_record.g.dart';

abstract class ChildrenRecord
    implements Built<ChildrenRecord, ChildrenRecordBuilder> {
  static Serializer<ChildrenRecord> get serializer =>
      _$childrenRecordSerializer;

  String? get name;

  String? get age;

  String? get disorder;

  String? get progress;

  @BuiltValueField(wireName: 'Therapiesundergoing')
  String? get therapiesundergoing;

  String? get photo;

  @BuiltValueField(wireName: 'ParentName')
  String? get parentName;

  @BuiltValueField(wireName: 'ContactNo')
  String? get contactNo;

  @BuiltValueField(wireName: 'CounselorName')
  String? get counselorName;

  @BuiltValueField(wireName: 'IsTeacher')
  bool? get isTeacher;

  @BuiltValueField(wireName: 'Child_Progress_Info')
  BuiltList<String>? get childProgressInfo;

  @BuiltValueField(wireName: 'DOB')
  DateTime? get dob;

  @BuiltValueField(wireName: 'LanguagesUsedAtHome')
  String? get languagesUsedAtHome;

  @BuiltValueField(wireName: 'Concern')
  String? get concern;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChildrenRecordBuilder builder) => builder
    ..name = ''
    ..age = ''
    ..disorder = ''
    ..progress = ''
    ..therapiesundergoing = ''
    ..photo = ''
    ..parentName = ''
    ..contactNo = ''
    ..counselorName = ''
    ..isTeacher = false
    ..childProgressInfo = ListBuilder()
    ..languagesUsedAtHome = ''
    ..concern = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('children');

  static Stream<ChildrenRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChildrenRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChildrenRecord._();
  factory ChildrenRecord([void Function(ChildrenRecordBuilder) updates]) =
      _$ChildrenRecord;

  static ChildrenRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChildrenRecordData({
  String? name,
  String? age,
  String? disorder,
  String? progress,
  String? therapiesundergoing,
  String? photo,
  String? parentName,
  String? contactNo,
  String? counselorName,
  bool? isTeacher,
  DateTime? dob,
  String? languagesUsedAtHome,
  String? concern,
}) {
  final firestoreData = serializers.toFirestore(
    ChildrenRecord.serializer,
    ChildrenRecord(
      (c) => c
        ..name = name
        ..age = age
        ..disorder = disorder
        ..progress = progress
        ..therapiesundergoing = therapiesundergoing
        ..photo = photo
        ..parentName = parentName
        ..contactNo = contactNo
        ..counselorName = counselorName
        ..isTeacher = isTeacher
        ..childProgressInfo = null
        ..dob = dob
        ..languagesUsedAtHome = languagesUsedAtHome
        ..concern = concern,
    ),
  );

  return firestoreData;
}
