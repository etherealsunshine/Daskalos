// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter_i_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LetterIRecord> _$letterIRecordSerializer =
    new _$LetterIRecordSerializer();

class _$LetterIRecordSerializer implements StructuredSerializer<LetterIRecord> {
  @override
  final Iterable<Type> types = const [LetterIRecord, _$LetterIRecord];
  @override
  final String wireName = 'LetterIRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LetterIRecord object,
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
  LetterIRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LetterIRecordBuilder();

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

class _$LetterIRecord extends LetterIRecord {
  @override
  final String? name;
  @override
  final String? imgLink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LetterIRecord([void Function(LetterIRecordBuilder)? updates]) =>
      (new LetterIRecordBuilder()..update(updates))._build();

  _$LetterIRecord._({this.name, this.imgLink, this.ffRef}) : super._();

  @override
  LetterIRecord rebuild(void Function(LetterIRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LetterIRecordBuilder toBuilder() => new LetterIRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LetterIRecord &&
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
    return (newBuiltValueToStringHelper(r'LetterIRecord')
          ..add('name', name)
          ..add('imgLink', imgLink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LetterIRecordBuilder
    implements Builder<LetterIRecord, LetterIRecordBuilder> {
  _$LetterIRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imgLink;
  String? get imgLink => _$this._imgLink;
  set imgLink(String? imgLink) => _$this._imgLink = imgLink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LetterIRecordBuilder() {
    LetterIRecord._initializeBuilder(this);
  }

  LetterIRecordBuilder get _$this {
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
  void replace(LetterIRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LetterIRecord;
  }

  @override
  void update(void Function(LetterIRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LetterIRecord build() => _build();

  _$LetterIRecord _build() {
    final _$result = _$v ??
        new _$LetterIRecord._(name: name, imgLink: imgLink, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
