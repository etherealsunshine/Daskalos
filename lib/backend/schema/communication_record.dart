import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunicationRecord extends FirestoreRecord {
  CommunicationRecord._(
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
      FirebaseFirestore.instance.collection('Communication');

  static Stream<CommunicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunicationRecord.fromSnapshot(s));

  static Future<CommunicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunicationRecord.fromSnapshot(s));

  static CommunicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunicationRecordData({
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
