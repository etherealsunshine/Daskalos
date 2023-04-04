// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter_a_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LetterARecord> _$letterARecordSerializer =
    new _$LetterARecordSerializer();

class _$LetterARecordSerializer implements StructuredSerializer<LetterARecord> {
  @override
  final Iterable<Type> types = const [LetterARecord, _$LetterARecord];
  @override
  final String wireName = 'LetterARecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LetterARecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('Link')
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
  LetterARecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LetterARecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Link':
          result.link = serializers.deserialize(value,
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

class _$LetterARecord extends LetterARecord {
  @override
  final String? name;
  @override
  final String? link;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LetterARecord([void Function(LetterARecordBuilder)? updates]) =>
      (new LetterARecordBuilder()..update(updates))._build();

  _$LetterARecord._({this.name, this.link, this.ffRef}) : super._();

  @override
  LetterARecord rebuild(void Function(LetterARecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LetterARecordBuilder toBuilder() => new LetterARecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LetterARecord &&
        name == other.name &&
        link == other.link &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LetterARecord')
          ..add('name', name)
          ..add('link', link)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LetterARecordBuilder
    implements Builder<LetterARecord, LetterARecordBuilder> {
  _$LetterARecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LetterARecordBuilder() {
    LetterARecord._initializeBuilder(this);
  }

  LetterARecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _link = $v.link;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LetterARecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LetterARecord;
  }

  @override
  void update(void Function(LetterARecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LetterARecord build() => _build();

  _$LetterARecord _build() {
    final _$result =
        _$v ?? new _$LetterARecord._(name: name, link: link, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
