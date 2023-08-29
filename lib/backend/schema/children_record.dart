import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChildrenRecord extends FirestoreRecord {
  ChildrenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "disorder" field.
  String? _disorder;
  String get disorder => _disorder ?? '';
  bool hasDisorder() => _disorder != null;

  // "progress" field.
  String? _progress;
  String get progress => _progress ?? '';
  bool hasProgress() => _progress != null;

  // "Therapiesundergoing" field.
  String? _therapiesundergoing;
  String get therapiesundergoing => _therapiesundergoing ?? '';
  bool hasTherapiesundergoing() => _therapiesundergoing != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "ParentName" field.
  String? _parentName;
  String get parentName => _parentName ?? '';
  bool hasParentName() => _parentName != null;

  // "ContactNo" field.
  String? _contactNo;
  String get contactNo => _contactNo ?? '';
  bool hasContactNo() => _contactNo != null;

  // "CounselorName" field.
  String? _counselorName;
  String get counselorName => _counselorName ?? '';
  bool hasCounselorName() => _counselorName != null;

  // "IsTeacher" field.
  bool? _isTeacher;
  bool get isTeacher => _isTeacher ?? false;
  bool hasIsTeacher() => _isTeacher != null;

  // "Child_Progress_Info" field.
  List<String>? _childProgressInfo;
  List<String> get childProgressInfo => _childProgressInfo ?? const [];
  bool hasChildProgressInfo() => _childProgressInfo != null;

  // "DOB" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "LanguagesUsedAtHome" field.
  String? _languagesUsedAtHome;
  String get languagesUsedAtHome => _languagesUsedAtHome ?? '';
  bool hasLanguagesUsedAtHome() => _languagesUsedAtHome != null;

  // "Concern" field.
  String? _concern;
  String get concern => _concern ?? '';
  bool hasConcern() => _concern != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _age = snapshotData['age'] as String?;
    _disorder = snapshotData['disorder'] as String?;
    _progress = snapshotData['progress'] as String?;
    _therapiesundergoing = snapshotData['Therapiesundergoing'] as String?;
    _photo = snapshotData['photo'] as String?;
    _parentName = snapshotData['ParentName'] as String?;
    _contactNo = snapshotData['ContactNo'] as String?;
    _counselorName = snapshotData['CounselorName'] as String?;
    _isTeacher = snapshotData['IsTeacher'] as bool?;
    _childProgressInfo = getDataList(snapshotData['Child_Progress_Info']);
    _dob = snapshotData['DOB'] as DateTime?;
    _languagesUsedAtHome = snapshotData['LanguagesUsedAtHome'] as String?;
    _concern = snapshotData['Concern'] as String?;
    _email = snapshotData['email'] as String?;
    _code = castToType<int>(snapshotData['code']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('children');

  static Stream<ChildrenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChildrenRecord.fromSnapshot(s));

  static Future<ChildrenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChildrenRecord.fromSnapshot(s));

  static ChildrenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChildrenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChildrenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChildrenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChildrenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChildrenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
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
  String? email,
  int? code,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'age': age,
      'disorder': disorder,
      'progress': progress,
      'Therapiesundergoing': therapiesundergoing,
      'photo': photo,
      'ParentName': parentName,
      'ContactNo': contactNo,
      'CounselorName': counselorName,
      'IsTeacher': isTeacher,
      'DOB': dob,
      'LanguagesUsedAtHome': languagesUsedAtHome,
      'Concern': concern,
      'email': email,
      'code': code,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChildrenRecordDocumentEquality implements Equality<ChildrenRecord> {
  const ChildrenRecordDocumentEquality();

  @override
  bool equals(ChildrenRecord? e1, ChildrenRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.age == e2?.age &&
        e1?.disorder == e2?.disorder &&
        e1?.progress == e2?.progress &&
        e1?.therapiesundergoing == e2?.therapiesundergoing &&
        e1?.photo == e2?.photo &&
        e1?.parentName == e2?.parentName &&
        e1?.contactNo == e2?.contactNo &&
        e1?.counselorName == e2?.counselorName &&
        e1?.isTeacher == e2?.isTeacher &&
        listEquality.equals(e1?.childProgressInfo, e2?.childProgressInfo) &&
        e1?.dob == e2?.dob &&
        e1?.languagesUsedAtHome == e2?.languagesUsedAtHome &&
        e1?.concern == e2?.concern &&
        e1?.email == e2?.email &&
        e1?.code == e2?.code;
  }

  @override
  int hash(ChildrenRecord? e) => const ListEquality().hash([
        e?.name,
        e?.age,
        e?.disorder,
        e?.progress,
        e?.therapiesundergoing,
        e?.photo,
        e?.parentName,
        e?.contactNo,
        e?.counselorName,
        e?.isTeacher,
        e?.childProgressInfo,
        e?.dob,
        e?.languagesUsedAtHome,
        e?.concern,
        e?.email,
        e?.code
      ]);

  @override
  bool isValidKey(Object? o) => o is ChildrenRecord;
}
