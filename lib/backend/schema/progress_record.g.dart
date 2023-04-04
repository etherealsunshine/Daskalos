// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProgressRecord> _$progressRecordSerializer =
    new _$ProgressRecordSerializer();

class _$ProgressRecordSerializer
    implements StructuredSerializer<ProgressRecord> {
  @override
  final Iterable<Type> types = const [ProgressRecord, _$ProgressRecord];
  @override
  final String wireName = 'ProgressRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProgressRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.progressReport;
    if (value != null) {
      result
        ..add('progressReport')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progressReportList;
    if (value != null) {
      result
        ..add('progressReportList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProgressRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProgressRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'progressReport':
          result.progressReport = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'progressReportList':
          result.progressReportList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProgressRecord extends ProgressRecord {
  @override
  final String? progressReport;
  @override
  final BuiltList<String>? progressReportList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProgressRecord([void Function(ProgressRecordBuilder)? updates]) =>
      (new ProgressRecordBuilder()..update(updates))._build();

  _$ProgressRecord._({this.progressReport, this.progressReportList, this.ffRef})
      : super._();

  @override
  ProgressRecord rebuild(void Function(ProgressRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressRecordBuilder toBuilder() =>
      new ProgressRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgressRecord &&
        progressReport == other.progressReport &&
        progressReportList == other.progressReportList &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, progressReport.hashCode);
    _$hash = $jc(_$hash, progressReportList.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProgressRecord')
          ..add('progressReport', progressReport)
          ..add('progressReportList', progressReportList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProgressRecordBuilder
    implements Builder<ProgressRecord, ProgressRecordBuilder> {
  _$ProgressRecord? _$v;

  String? _progressReport;
  String? get progressReport => _$this._progressReport;
  set progressReport(String? progressReport) =>
      _$this._progressReport = progressReport;

  ListBuilder<String>? _progressReportList;
  ListBuilder<String> get progressReportList =>
      _$this._progressReportList ??= new ListBuilder<String>();
  set progressReportList(ListBuilder<String>? progressReportList) =>
      _$this._progressReportList = progressReportList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProgressRecordBuilder() {
    ProgressRecord._initializeBuilder(this);
  }

  ProgressRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _progressReport = $v.progressReport;
      _progressReportList = $v.progressReportList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProgressRecord;
  }

  @override
  void update(void Function(ProgressRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgressRecord build() => _build();

  _$ProgressRecord _build() {
    _$ProgressRecord _$result;
    try {
      _$result = _$v ??
          new _$ProgressRecord._(
              progressReport: progressReport,
              progressReportList: _progressReportList?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'progressReportList';
        _progressReportList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProgressRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
