// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChildrenRecord> _$childrenRecordSerializer =
    new _$ChildrenRecordSerializer();

class _$ChildrenRecordSerializer
    implements StructuredSerializer<ChildrenRecord> {
  @override
  final Iterable<Type> types = const [ChildrenRecord, _$ChildrenRecord];
  @override
  final String wireName = 'ChildrenRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChildrenRecord object,
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
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.disorder;
    if (value != null) {
      result
        ..add('disorder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.therapiesundergoing;
    if (value != null) {
      result
        ..add('Therapiesundergoing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentName;
    if (value != null) {
      result
        ..add('ParentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactNo;
    if (value != null) {
      result
        ..add('ContactNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.counselorName;
    if (value != null) {
      result
        ..add('CounselorName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isTeacher;
    if (value != null) {
      result
        ..add('IsTeacher')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.childProgressInfo;
    if (value != null) {
      result
        ..add('Child_Progress_Info')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('DOB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.languagesUsedAtHome;
    if (value != null) {
      result
        ..add('LanguagesUsedAtHome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.concern;
    if (value != null) {
      result
        ..add('Concern')
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
  ChildrenRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChildrenRecordBuilder();

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
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'disorder':
          result.disorder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Therapiesundergoing':
          result.therapiesundergoing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ParentName':
          result.parentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ContactNo':
          result.contactNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CounselorName':
          result.counselorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IsTeacher':
          result.isTeacher = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Child_Progress_Info':
          result.childProgressInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'DOB':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'LanguagesUsedAtHome':
          result.languagesUsedAtHome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Concern':
          result.concern = serializers.deserialize(value,
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

class _$ChildrenRecord extends ChildrenRecord {
  @override
  final String? name;
  @override
  final String? age;
  @override
  final String? disorder;
  @override
  final String? progress;
  @override
  final String? therapiesundergoing;
  @override
  final String? photo;
  @override
  final String? parentName;
  @override
  final String? contactNo;
  @override
  final String? counselorName;
  @override
  final bool? isTeacher;
  @override
  final BuiltList<String>? childProgressInfo;
  @override
  final DateTime? dob;
  @override
  final String? languagesUsedAtHome;
  @override
  final String? concern;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChildrenRecord([void Function(ChildrenRecordBuilder)? updates]) =>
      (new ChildrenRecordBuilder()..update(updates))._build();

  _$ChildrenRecord._(
      {this.name,
      this.age,
      this.disorder,
      this.progress,
      this.therapiesundergoing,
      this.photo,
      this.parentName,
      this.contactNo,
      this.counselorName,
      this.isTeacher,
      this.childProgressInfo,
      this.dob,
      this.languagesUsedAtHome,
      this.concern,
      this.ffRef})
      : super._();

  @override
  ChildrenRecord rebuild(void Function(ChildrenRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChildrenRecordBuilder toBuilder() =>
      new ChildrenRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChildrenRecord &&
        name == other.name &&
        age == other.age &&
        disorder == other.disorder &&
        progress == other.progress &&
        therapiesundergoing == other.therapiesundergoing &&
        photo == other.photo &&
        parentName == other.parentName &&
        contactNo == other.contactNo &&
        counselorName == other.counselorName &&
        isTeacher == other.isTeacher &&
        childProgressInfo == other.childProgressInfo &&
        dob == other.dob &&
        languagesUsedAtHome == other.languagesUsedAtHome &&
        concern == other.concern &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, disorder.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, therapiesundergoing.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, parentName.hashCode);
    _$hash = $jc(_$hash, contactNo.hashCode);
    _$hash = $jc(_$hash, counselorName.hashCode);
    _$hash = $jc(_$hash, isTeacher.hashCode);
    _$hash = $jc(_$hash, childProgressInfo.hashCode);
    _$hash = $jc(_$hash, dob.hashCode);
    _$hash = $jc(_$hash, languagesUsedAtHome.hashCode);
    _$hash = $jc(_$hash, concern.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChildrenRecord')
          ..add('name', name)
          ..add('age', age)
          ..add('disorder', disorder)
          ..add('progress', progress)
          ..add('therapiesundergoing', therapiesundergoing)
          ..add('photo', photo)
          ..add('parentName', parentName)
          ..add('contactNo', contactNo)
          ..add('counselorName', counselorName)
          ..add('isTeacher', isTeacher)
          ..add('childProgressInfo', childProgressInfo)
          ..add('dob', dob)
          ..add('languagesUsedAtHome', languagesUsedAtHome)
          ..add('concern', concern)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChildrenRecordBuilder
    implements Builder<ChildrenRecord, ChildrenRecordBuilder> {
  _$ChildrenRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _age;
  String? get age => _$this._age;
  set age(String? age) => _$this._age = age;

  String? _disorder;
  String? get disorder => _$this._disorder;
  set disorder(String? disorder) => _$this._disorder = disorder;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  String? _therapiesundergoing;
  String? get therapiesundergoing => _$this._therapiesundergoing;
  set therapiesundergoing(String? therapiesundergoing) =>
      _$this._therapiesundergoing = therapiesundergoing;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _parentName;
  String? get parentName => _$this._parentName;
  set parentName(String? parentName) => _$this._parentName = parentName;

  String? _contactNo;
  String? get contactNo => _$this._contactNo;
  set contactNo(String? contactNo) => _$this._contactNo = contactNo;

  String? _counselorName;
  String? get counselorName => _$this._counselorName;
  set counselorName(String? counselorName) =>
      _$this._counselorName = counselorName;

  bool? _isTeacher;
  bool? get isTeacher => _$this._isTeacher;
  set isTeacher(bool? isTeacher) => _$this._isTeacher = isTeacher;

  ListBuilder<String>? _childProgressInfo;
  ListBuilder<String> get childProgressInfo =>
      _$this._childProgressInfo ??= new ListBuilder<String>();
  set childProgressInfo(ListBuilder<String>? childProgressInfo) =>
      _$this._childProgressInfo = childProgressInfo;

  DateTime? _dob;
  DateTime? get dob => _$this._dob;
  set dob(DateTime? dob) => _$this._dob = dob;

  String? _languagesUsedAtHome;
  String? get languagesUsedAtHome => _$this._languagesUsedAtHome;
  set languagesUsedAtHome(String? languagesUsedAtHome) =>
      _$this._languagesUsedAtHome = languagesUsedAtHome;

  String? _concern;
  String? get concern => _$this._concern;
  set concern(String? concern) => _$this._concern = concern;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChildrenRecordBuilder() {
    ChildrenRecord._initializeBuilder(this);
  }

  ChildrenRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _age = $v.age;
      _disorder = $v.disorder;
      _progress = $v.progress;
      _therapiesundergoing = $v.therapiesundergoing;
      _photo = $v.photo;
      _parentName = $v.parentName;
      _contactNo = $v.contactNo;
      _counselorName = $v.counselorName;
      _isTeacher = $v.isTeacher;
      _childProgressInfo = $v.childProgressInfo?.toBuilder();
      _dob = $v.dob;
      _languagesUsedAtHome = $v.languagesUsedAtHome;
      _concern = $v.concern;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChildrenRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChildrenRecord;
  }

  @override
  void update(void Function(ChildrenRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChildrenRecord build() => _build();

  _$ChildrenRecord _build() {
    _$ChildrenRecord _$result;
    try {
      _$result = _$v ??
          new _$ChildrenRecord._(
              name: name,
              age: age,
              disorder: disorder,
              progress: progress,
              therapiesundergoing: therapiesundergoing,
              photo: photo,
              parentName: parentName,
              contactNo: contactNo,
              counselorName: counselorName,
              isTeacher: isTeacher,
              childProgressInfo: _childProgressInfo?.build(),
              dob: dob,
              languagesUsedAtHome: languagesUsedAtHome,
              concern: concern,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'childProgressInfo';
        _childProgressInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChildrenRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
