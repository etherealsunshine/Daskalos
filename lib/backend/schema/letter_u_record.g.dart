// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter_u_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LetterURecord> _$letterURecordSerializer =
    new _$LetterURecordSerializer();

class _$LetterURecordSerializer implements StructuredSerializer<LetterURecord> {
  @override
  final Iterable<Type> types = const [LetterURecord, _$LetterURecord];
  @override
  final String wireName = 'LetterURecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LetterURecord object,
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
  LetterURecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LetterURecordBuilder();

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

class _$LetterURecord extends LetterURecord {
  @override
  final String? name;
  @override
  final String? imgLink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LetterURecord([void Function(LetterURecordBuilder)? updates]) =>
      (new LetterURecordBuilder()..update(updates))._build();

  _$LetterURecord._({this.name, this.imgLink, this.ffRef}) : super._();

  @override
  LetterURecord rebuild(void Function(LetterURecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LetterURecordBuilder toBuilder() => new LetterURecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LetterURecord &&
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
    return (newBuiltValueToStringHelper(r'LetterURecord')
          ..add('name', name)
          ..add('imgLink', imgLink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LetterURecordBuilder
    implements Builder<LetterURecord, LetterURecordBuilder> {
  _$LetterURecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imgLink;
  String? get imgLink => _$this._imgLink;
  set imgLink(String? imgLink) => _$this._imgLink = imgLink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LetterURecordBuilder() {
    LetterURecord._initializeBuilder(this);
  }

  LetterURecordBuilder get _$this {
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
  void replace(LetterURecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LetterURecord;
  }

  @override
  void update(void Function(LetterURecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LetterURecord build() => _build();

  _$LetterURecord _build() {
    final _$result = _$v ??
        new _$LetterURecord._(name: name, imgLink: imgLink, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
