import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelfHelpRecord extends FirestoreRecord {
  SelfHelpRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SelfHelp');

  static Stream<SelfHelpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelfHelpRecord.fromSnapshot(s));

  static Future<SelfHelpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelfHelpRecord.fromSnapshot(s));

  static SelfHelpRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelfHelpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelfHelpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelfHelpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelfHelpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelfHelpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelfHelpRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelfHelpRecordDocumentEquality implements Equality<SelfHelpRecord> {
  const SelfHelpRecordDocumentEquality();

  @override
  bool equals(SelfHelpRecord? e1, SelfHelpRecord? e2) {
    return e1?.name == e2?.name && e1?.image == e2?.image;
  }

  @override
  int hash(SelfHelpRecord? e) => const ListEquality().hash([e?.name, e?.image]);

  @override
  bool isValidKey(Object? o) => o is SelfHelpRecord;
}
