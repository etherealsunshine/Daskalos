// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'self_help_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SelfHelpRecord> _$selfHelpRecordSerializer =
    new _$SelfHelpRecordSerializer();

class _$SelfHelpRecordSerializer
    implements StructuredSerializer<SelfHelpRecord> {
  @override
  final Iterable<Type> types = const [SelfHelpRecord, _$SelfHelpRecord];
  @override
  final String wireName = 'SelfHelpRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SelfHelpRecord object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  SelfHelpRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelfHelpRecordBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$SelfHelpRecord extends SelfHelpRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SelfHelpRecord([void Function(SelfHelpRecordBuilder)? updates]) =>
      (new SelfHelpRecordBuilder()..update(updates))._build();

  _$SelfHelpRecord._({this.name, this.image, this.ffRef}) : super._();

  @override
  SelfHelpRecord rebuild(void Function(SelfHelpRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelfHelpRecordBuilder toBuilder() =>
      new SelfHelpRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelfHelpRecord &&
        name == other.name &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelfHelpRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SelfHelpRecordBuilder
    implements Builder<SelfHelpRecord, SelfHelpRecordBuilder> {
  _$SelfHelpRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SelfHelpRecordBuilder() {
    SelfHelpRecord._initializeBuilder(this);
  }

  SelfHelpRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelfHelpRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelfHelpRecord;
  }

  @override
  void update(void Function(SelfHelpRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelfHelpRecord build() => _build();

  _$SelfHelpRecord _build() {
    final _$result =
        _$v ?? new _$SelfHelpRecord._(name: name, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
