import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MistakesRecord extends FirestoreRecord {
  MistakesRecord._(
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
      FirebaseFirestore.instance.collection('mistakes');

  static Stream<MistakesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MistakesRecord.fromSnapshot(s));

  static Future<MistakesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MistakesRecord.fromSnapshot(s));

  static MistakesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MistakesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MistakesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MistakesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MistakesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MistakesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMistakesRecordData({
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
