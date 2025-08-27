// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fund_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FundResponse {

 int get id; String get name; String get category; double get minimumQuantity;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.minimumQuantity, minimumQuantity) || other.minimumQuantity == minimumQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,minimumQuantity);

@override
String toString() {
  return 'FundResponse(id: $id, name: $name, category: $category, minimumQuantity: $minimumQuantity)';
}


}




/// Adds pattern-matching-related methods to [FundResponse].
extension FundResponsePatterns on FundResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundResponse value)  $default,){
final _that = this;
switch (_that) {
case _FundResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FundResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String category,  double minimumQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundResponse() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.minimumQuantity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String category,  double minimumQuantity)  $default,) {final _that = this;
switch (_that) {
case _FundResponse():
return $default(_that.id,_that.name,_that.category,_that.minimumQuantity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String category,  double minimumQuantity)?  $default,) {final _that = this;
switch (_that) {
case _FundResponse() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.minimumQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _FundResponse extends FundResponse {
  const _FundResponse({required this.id, required this.name, required this.category, required this.minimumQuantity}): super._();
  factory _FundResponse.fromJson(Map<String, dynamic> json) => _$FundResponseFromJson(json);

@override final  int id;
@override final  String name;
@override final  String category;
@override final  double minimumQuantity;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.minimumQuantity, minimumQuantity) || other.minimumQuantity == minimumQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,minimumQuantity);

@override
String toString() {
  return 'FundResponse(id: $id, name: $name, category: $category, minimumQuantity: $minimumQuantity)';
}


}




// dart format on
