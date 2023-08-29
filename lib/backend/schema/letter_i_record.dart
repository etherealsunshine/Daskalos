import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LetterIRecord extends FirestoreRecord {
  LetterIRecord._(
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
      FirebaseFirestore.instance.collection('letter_I');

  static Stream<LetterIRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LetterIRecord.fromSnapshot(s));

  static Future<LetterIRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LetterIRecord.fromSnapshot(s));

  static LetterIRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LetterIRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LetterIRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LetterIRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LetterIRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LetterIRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLetterIRecordData({
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

class LetterIRecordDocumentEquality implements Equality<LetterIRecord> {
  const LetterIRecordDocumentEquality();

  @override
  bool equals(LetterIRecord? e1, LetterIRecord? e2) {
    return e1?.name == e2?.name && e1?.imgLink == e2?.imgLink;
  }

  @override
  int hash(LetterIRecord? e) =>
      const ListEquality().hash([e?.name, e?.imgLink]);

  @override
  bool isValidKey(Object? o) => o is LetterIRecord;
}
