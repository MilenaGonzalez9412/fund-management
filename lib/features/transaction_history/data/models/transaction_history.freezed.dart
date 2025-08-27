// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHistory {

 int get id; int get userId; List<FundTransaction> get userFunds;
/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryCopyWith<TransactionHistory> get copyWith => _$TransactionHistoryCopyWithImpl<TransactionHistory>(this as TransactionHistory, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.userFunds, userFunds));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,const DeepCollectionEquality().hash(userFunds));

@override
String toString() {
  return 'TransactionHistory(id: $id, userId: $userId, userFunds: $userFunds)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryCopyWith<$Res>  {
  factory $TransactionHistoryCopyWith(TransactionHistory value, $Res Function(TransactionHistory) _then) = _$TransactionHistoryCopyWithImpl;
@useResult
$Res call({
 int id, int userId, List<FundTransaction> userFunds
});




}
/// @nodoc
class _$TransactionHistoryCopyWithImpl<$Res>
    implements $TransactionHistoryCopyWith<$Res> {
  _$TransactionHistoryCopyWithImpl(this._self, this._then);

  final TransactionHistory _self;
  final $Res Function(TransactionHistory) _then;

/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? userFunds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userFunds: null == userFunds ? _self.userFunds : userFunds // ignore: cast_nullable_to_non_nullable
as List<FundTransaction>,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistory].
extension TransactionHistoryPatterns on TransactionHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistory value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistory value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  List<FundTransaction> userFunds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  List<FundTransaction> userFunds)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistory():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  List<FundTransaction> userFunds)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
return $default(_that.id,_that.userId,_that.userFunds);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionHistory implements TransactionHistory {
  const _TransactionHistory({required this.id, required this.userId, required final  List<FundTransaction> userFunds}): _userFunds = userFunds;
  

@override final  int id;
@override final  int userId;
 final  List<FundTransaction> _userFunds;
@override List<FundTransaction> get userFunds {
  if (_userFunds is EqualUnmodifiableListView) return _userFunds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userFunds);
}


/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryCopyWith<_TransactionHistory> get copyWith => __$TransactionHistoryCopyWithImpl<_TransactionHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._userFunds, _userFunds));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,const DeepCollectionEquality().hash(_userFunds));

@override
String toString() {
  return 'TransactionHistory(id: $id, userId: $userId, userFunds: $userFunds)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryCopyWith<$Res> implements $TransactionHistoryCopyWith<$Res> {
  factory _$TransactionHistoryCopyWith(_TransactionHistory value, $Res Function(_TransactionHistory) _then) = __$TransactionHistoryCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, List<FundTransaction> userFunds
});




}
/// @nodoc
class __$TransactionHistoryCopyWithImpl<$Res>
    implements _$TransactionHistoryCopyWith<$Res> {
  __$TransactionHistoryCopyWithImpl(this._self, this._then);

  final _TransactionHistory _self;
  final $Res Function(_TransactionHistory) _then;

/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? userFunds = null,}) {
  return _then(_TransactionHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userFunds: null == userFunds ? _self._userFunds : userFunds // ignore: cast_nullable_to_non_nullable
as List<FundTransaction>,
  ));
}


}

/// @nodoc
mixin _$FundTransaction {

 int get fundTransactionId; int get fundId; String get fundName; double get transactionCost; String get startDate; String get endDate; bool get isActive;
/// Create a copy of FundTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundTransactionCopyWith<FundTransaction> get copyWith => _$FundTransactionCopyWithImpl<FundTransaction>(this as FundTransaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundTransaction&&(identical(other.fundTransactionId, fundTransactionId) || other.fundTransactionId == fundTransactionId)&&(identical(other.fundId, fundId) || other.fundId == fundId)&&(identical(other.fundName, fundName) || other.fundName == fundName)&&(identical(other.transactionCost, transactionCost) || other.transactionCost == transactionCost)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,fundTransactionId,fundId,fundName,transactionCost,startDate,endDate,isActive);

@override
String toString() {
  return 'FundTransaction(fundTransactionId: $fundTransactionId, fundId: $fundId, fundName: $fundName, transactionCost: $transactionCost, startDate: $startDate, endDate: $endDate, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $FundTransactionCopyWith<$Res>  {
  factory $FundTransactionCopyWith(FundTransaction value, $Res Function(FundTransaction) _then) = _$FundTransactionCopyWithImpl;
@useResult
$Res call({
 int fundTransactionId, int fundId, String fundName, double transactionCost, String startDate, String endDate, bool isActive
});




}
/// @nodoc
class _$FundTransactionCopyWithImpl<$Res>
    implements $FundTransactionCopyWith<$Res> {
  _$FundTransactionCopyWithImpl(this._self, this._then);

  final FundTransaction _self;
  final $Res Function(FundTransaction) _then;

/// Create a copy of FundTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fundTransactionId = null,Object? fundId = null,Object? fundName = null,Object? transactionCost = null,Object? startDate = null,Object? endDate = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
fundTransactionId: null == fundTransactionId ? _self.fundTransactionId : fundTransactionId // ignore: cast_nullable_to_non_nullable
as int,fundId: null == fundId ? _self.fundId : fundId // ignore: cast_nullable_to_non_nullable
as int,fundName: null == fundName ? _self.fundName : fundName // ignore: cast_nullable_to_non_nullable
as String,transactionCost: null == transactionCost ? _self.transactionCost : transactionCost // ignore: cast_nullable_to_non_nullable
as double,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FundTransaction].
extension FundTransactionPatterns on FundTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundTransaction value)  $default,){
final _that = this;
switch (_that) {
case _FundTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _FundTransaction() when $default != null:
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
case _FundTransaction() when $default != null:
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
case _FundTransaction():
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
case _FundTransaction() when $default != null:
return $default(_that.fundTransactionId,_that.fundId,_that.fundName,_that.transactionCost,_that.startDate,_that.endDate,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _FundTransaction implements FundTransaction {
  const _FundTransaction({required this.fundTransactionId, required this.fundId, required this.fundName, required this.transactionCost, required this.startDate, required this.endDate, required this.isActive});
  

@override final  int fundTransactionId;
@override final  int fundId;
@override final  String fundName;
@override final  double transactionCost;
@override final  String startDate;
@override final  String endDate;
@override final  bool isActive;

/// Create a copy of FundTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundTransactionCopyWith<_FundTransaction> get copyWith => __$FundTransactionCopyWithImpl<_FundTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundTransaction&&(identical(other.fundTransactionId, fundTransactionId) || other.fundTransactionId == fundTransactionId)&&(identical(other.fundId, fundId) || other.fundId == fundId)&&(identical(other.fundName, fundName) || other.fundName == fundName)&&(identical(other.transactionCost, transactionCost) || other.transactionCost == transactionCost)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,fundTransactionId,fundId,fundName,transactionCost,startDate,endDate,isActive);

@override
String toString() {
  return 'FundTransaction(fundTransactionId: $fundTransactionId, fundId: $fundId, fundName: $fundName, transactionCost: $transactionCost, startDate: $startDate, endDate: $endDate, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$FundTransactionCopyWith<$Res> implements $FundTransactionCopyWith<$Res> {
  factory _$FundTransactionCopyWith(_FundTransaction value, $Res Function(_FundTransaction) _then) = __$FundTransactionCopyWithImpl;
@override @useResult
$Res call({
 int fundTransactionId, int fundId, String fundName, double transactionCost, String startDate, String endDate, bool isActive
});




}
/// @nodoc
class __$FundTransactionCopyWithImpl<$Res>
    implements _$FundTransactionCopyWith<$Res> {
  __$FundTransactionCopyWithImpl(this._self, this._then);

  final _FundTransaction _self;
  final $Res Function(_FundTransaction) _then;

/// Create a copy of FundTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fundTransactionId = null,Object? fundId = null,Object? fundName = null,Object? transactionCost = null,Object? startDate = null,Object? endDate = null,Object? isActive = null,}) {
  return _then(_FundTransaction(
fundTransactionId: null == fundTransactionId ? _self.fundTransactionId : fundTransactionId // ignore: cast_nullable_to_non_nullable
as int,fundId: null == fundId ? _self.fundId : fundId // ignore: cast_nullable_to_non_nullable
as int,fundName: null == fundName ? _self.fundName : fundName // ignore: cast_nullable_to_non_nullable
as String,transactionCost: null == transactionCost ? _self.transactionCost : transactionCost // ignore: cast_nullable_to_non_nullable
as double,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
