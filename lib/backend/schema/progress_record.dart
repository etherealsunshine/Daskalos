import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgressRecord extends FirestoreRecord {
  ProgressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "progressReport" field.
  String? _progressReport;
  String get progressReport => _progressReport ?? '';
  bool hasProgressReport() => _progressReport != null;

  // "progressReportList" field.
  List<String>? _progressReportList;
  List<String> get progressReportList => _progressReportList ?? const [];
  bool hasProgressReportList() => _progressReportList != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _progressReport = snapshotData['progressReport'] as String?;
    _progressReportList = getDataList(snapshotData['progressReportList']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('progress')
          : FirebaseFirestore.instance.collectionGroup('progress');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('progress').doc();

  static Stream<ProgressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgressRecord.fromSnapshot(s));

  static Future<ProgressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgressRecord.fromSnapshot(s));

  static ProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgressRecordData({
  String? progressReport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'progressReport': progressReport,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgressRecordDocumentEquality implements Equality<ProgressRecord> {
  const ProgressRecordDocumentEquality();

  @override
  bool equals(ProgressRecord? e1, ProgressRecord? e2) {
    const listEquality = ListEquality();
    return e1?.progressReport == e2?.progressReport &&
        listEquality.equals(e1?.progressReportList, e2?.progressReportList);
  }

  @override
  int hash(ProgressRecord? e) =>
      const ListEquality().hash([e?.progressReport, e?.progressReportList]);

  @override
  bool isValidKey(Object? o) => o is ProgressRecord;
}
