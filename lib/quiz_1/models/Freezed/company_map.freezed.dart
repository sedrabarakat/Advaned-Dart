// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyMap _$CompanyMapFromJson(Map<String, dynamic> json) {
  return _CompanyMap.fromJson(json);
}

/// @nodoc
mixin _$CompanyMap {
  Company get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyMapCopyWith<CompanyMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyMapCopyWith<$Res> {
  factory $CompanyMapCopyWith(
          CompanyMap value, $Res Function(CompanyMap) then) =
      _$CompanyMapCopyWithImpl<$Res, CompanyMap>;
  @useResult
  $Res call({Company company});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$CompanyMapCopyWithImpl<$Res, $Val extends CompanyMap>
    implements $CompanyMapCopyWith<$Res> {
  _$CompanyMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyMapImplCopyWith<$Res>
    implements $CompanyMapCopyWith<$Res> {
  factory _$$CompanyMapImplCopyWith(
          _$CompanyMapImpl value, $Res Function(_$CompanyMapImpl) then) =
      __$$CompanyMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Company company});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$CompanyMapImplCopyWithImpl<$Res>
    extends _$CompanyMapCopyWithImpl<$Res, _$CompanyMapImpl>
    implements _$$CompanyMapImplCopyWith<$Res> {
  __$$CompanyMapImplCopyWithImpl(
      _$CompanyMapImpl _value, $Res Function(_$CompanyMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$CompanyMapImpl(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyMapImpl implements _CompanyMap {
  const _$CompanyMapImpl({required this.company});

  factory _$CompanyMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyMapImplFromJson(json);

  @override
  final Company company;

  @override
  String toString() {
    return 'CompanyMap(company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyMapImpl &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyMapImplCopyWith<_$CompanyMapImpl> get copyWith =>
      __$$CompanyMapImplCopyWithImpl<_$CompanyMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyMapImplToJson(
      this,
    );
  }
}

abstract class _CompanyMap implements CompanyMap {
  const factory _CompanyMap({required final Company company}) =
      _$CompanyMapImpl;

  factory _CompanyMap.fromJson(Map<String, dynamic> json) =
      _$CompanyMapImpl.fromJson;

  @override
  Company get company;
  @override
  @JsonKey(ignore: true)
  _$$CompanyMapImplCopyWith<_$CompanyMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
