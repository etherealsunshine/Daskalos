import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LetterARecord extends FirestoreRecord {
  LetterARecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _link = snapshotData['Link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LetterA');

  static Stream<LetterARecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LetterARecord.fromSnapshot(s));

  static Future<LetterARecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LetterARecord.fromSnapshot(s));

  static LetterARecord fromSnapshot(DocumentSnapshot snapshot) =>
      LetterARecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LetterARecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LetterARecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LetterARecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LetterARecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLetterARecordData({
  String? name,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class LetterARecordDocumentEquality implements Equality<LetterARecord> {
  const LetterARecordDocumentEquality();

  @override
  bool equals(LetterARecord? e1, LetterARecord? e2) {
    return e1?.name == e2?.name && e1?.link == e2?.link;
  }

  @override
  int hash(LetterARecord? e) => const ListEquality().hash([e?.name, e?.link]);

  @override
  bool isValidKey(Object? o) => o is LetterARecord;
}
