// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionHistoryResponse {

 int get id; int get userId; List<FundTransactionResponse> get userFunds;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.userFunds, userFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,const DeepCollectionEquality().hash(userFunds));

@override
String toString() {
  return 'TransactionHistoryResponse(id: $id, userId: $userId, userFunds: $userFunds)';
}


}




/// Adds pattern-matching-related methods to [TransactionHistoryResponse].
extension TransactionHistoryResponsePatterns on TransactionHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  List<FundTransactionResponse> userFunds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryResponse() when $default != null:
return $default(_that.id,_that.userId,_that.userFunds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  List<FundTransactionResponse> userFunds)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryResponse():
return $default(_that.id,_that.userId,_that.userFunds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  List<FundTransactionResponse> userFunds)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryResponse() when $default != null:
return $default(_that.id,_that.userId,_that.userFunds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _TransactionHistoryResponse extends TransactionHistoryResponse {
  const _TransactionHistoryResponse({required this.id, required this.userId, required final  List<FundTransactionResponse> userFunds}): _userFunds = userFunds,super._();
  factory _TransactionHistoryResponse.fromJson(Map<String, dynamic> json) => _$TransactionHistoryResponseFromJson(json);

@override final  int id;
@override final  int userId;
 final  List<FundTransactionResponse> _userFunds;
@override List<FundTransactionResponse> get userFunds {
  if (_userFunds is EqualUnmodifiableListView) return _userFunds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userFunds);
}





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._userFunds, _userFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,const DeepCollectionEquality().hash(_userFunds));

@override
String toString() {
  return 'TransactionHistoryResponse(id: $id, userId: $userId, userFunds: $userFunds)';
}


}





/// @nodoc
mixin _$FundTransactionResponse {

 int get fundTransactionId; int get fundId; String get fundName; double get transactionCost; String get startDate; String get endDate; bool get isActive;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundTransactionResponse&&(identical(other.fundTransactionId, fundTransactionId) || other.fundTransactionId == fundTransactionId)&&(identical(other.fundId, fundId) || other.fundId == fundId)&&(identical(other.fundName, fundName) || other.fundName == fundName)&&(identical(other.transactionCost, transactionCost) || other.transactionCost == transactionCost)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fundTransactionId,fundId,fundName,transactionCost,startDate,endDate,isActive);

@override
String toString() {
  return 'FundTransactionResponse(fundTransactionId: $fundTransactionId, fundId: $fundId, fundName: $fundName, transactionCost: $transactionCost, startDate: $startDate, endDate: $endDate, isActive: $isActive)';
}


}




/// Adds pattern-matching-related methods to [FundTransactionResponse].
extension FundTransactionResponsePatterns on FundTransactionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundTransactionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundTransactionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundTransactionResponse value)  $default,){
final _that = this;
switch (_that) {
case _FundTransactionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundTransactionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FundTransactionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fundTransactionId,  int fundId,  String fundName,  double transactionCost,  String startDate,  String endDate,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundTransactionResponse() when $default != null:
return $default(_that.fundTransactionId,_that.fundId,_that.fundName,_that.transactionCost,_that.startDate,_that.endDate,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fundTransactionId,  int fundId,  String fundName,  double transactionCost,  String startDate,  String endDate,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _FundTransactionResponse():
return $default(_that.fundTransactionId,_that.fundId,_that.fundName,_that.transactionCost,_that.startDate,_that.endDate,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fundTransactionId,  int fundId,  String fundName,  double transactionCost,  String startDate,  String endDate,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _FundTransactionResponse() when $default != null:
return $default(_that.fundTransactionId,_that.fundId,_that.fundName,_that.transactionCost,_that.startDate,_that.endDate,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _FundTransactionResponse extends FundTransactionResponse {
  const _FundTransactionResponse({required this.fundTransactionId, required this.fundId, required this.fundName, required this.transactionCost, required this.startDate, required this.endDate, required this.isActive}): super._();
  factory _FundTransactionResponse.fromJson(Map<String, dynamic> json) => _$FundTransactionResponseFromJson(json);

@override final  int fundTransactionId;
@override final  int fundId;
@override final  String fundName;
@override final  double transactionCost;
@override final  String startDate;
@override final  String endDate;
@override final  bool isActive;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundTransactionResponse&&(identical(other.fundTransactionId, fundTransactionId) || other.fundTransactionId == fundTransactionId)&&(identical(other.fundId, fundId) || other.fundId == fundId)&&(identical(other.fundName, fundName) || other.fundName == fundName)&&(identical(other.transactionCost, transactionCost) || other.transactionCost == transactionCost)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fundTransactionId,fundId,fundName,transactionCost,startDate,endDate,isActive);

@override
String toString() {
  return 'FundTransactionResponse(fundTransactionId: $fundTransactionId, fundId: $fundId, fundName: $fundName, transactionCost: $transactionCost, startDate: $startDate, endDate: $endDate, isActive: $isActive)';
}


}




// dart format on
