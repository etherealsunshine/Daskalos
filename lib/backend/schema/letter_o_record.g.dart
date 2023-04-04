// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter_o_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LetterORecord> _$letterORecordSerializer =
    new _$LetterORecordSerializer();

class _$LetterORecordSerializer implements StructuredSerializer<LetterORecord> {
  @override
  final Iterable<Type> types = const [LetterORecord, _$LetterORecord];
  @override
  final String wireName = 'LetterORecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LetterORecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgLink;
    if (value != null) {
      result
        ..add('img_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LetterORecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LetterORecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img_link':
          result.imgLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LetterORecord extends LetterORecord {
  @override
  final String? name;
  @override
  final String? imgLink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LetterORecord([void Function(LetterORecordBuilder)? updates]) =>
      (new LetterORecordBuilder()..update(updates))._build();

  _$LetterORecord._({this.name, this.imgLink, this.ffRef}) : super._();

  @override
  LetterORecord rebuild(void Function(LetterORecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LetterORecordBuilder toBuilder() => new LetterORecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LetterORecord &&
        name == other.name &&
        imgLink == other.imgLink &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imgLink.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LetterORecord')
          ..add('name', name)
          ..add('imgLink', imgLink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LetterORecordBuilder
    implements Builder<LetterORecord, LetterORecordBuilder> {
  _$LetterORecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imgLink;
  String? get imgLink => _$this._imgLink;
  set imgLink(String? imgLink) => _$this._imgLink = imgLink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LetterORecordBuilder() {
    LetterORecord._initializeBuilder(this);
  }

  LetterORecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _imgLink = $v.imgLink;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LetterORecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LetterORecord;
  }

  @override
  void update(void Function(LetterORecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LetterORecord build() => _build();

  _$LetterORecord _build() {
    final _$result = _$v ??
        new _$LetterORecord._(name: name, imgLink: imgLink, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
