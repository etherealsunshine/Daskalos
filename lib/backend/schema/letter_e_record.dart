import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LetterERecord extends FirestoreRecord {
  LetterERecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "img_link" field.
  String? _imgLink;
  String get imgLink => _imgLink ?? '';
  bool hasImgLink() => _imgLink != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _imgLink = snapshotData['img_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Letter_E');

  static Stream<LetterERecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LetterERecord.fromSnapshot(s));

  static Future<LetterERecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LetterERecord.fromSnapshot(s));

  static LetterERecord fromSnapshot(DocumentSnapshot snapshot) =>
      LetterERecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LetterERecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LetterERecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LetterERecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LetterERecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLetterERecordData({
  String? name,
  String? imgLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'img_link': imgLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class LetterERecordDocumentEquality implements Equality<LetterERecord> {
  const LetterERecordDocumentEquality();

  @override
  bool equals(LetterERecord? e1, LetterERecord? e2) {
    return e1?.name == e2?.name && e1?.imgLink == e2?.imgLink;
  }

  @override
  int hash(LetterERecord? e) =>
      const ListEquality().hash([e?.name, e?.imgLink]);

  @override
  bool isValidKey(Object? o) => o is LetterERecord;
}
