// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.31.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'types.freezed.dart';

// The type `AssetIdMapInt` is not used by any `pub` functions, thus it is ignored.
// The type `AssetIdMapUInt` is not used by any `pub` functions, thus it is ignored.

@freezed
class Address with _$Address {
  const Address._();
  const factory Address({
    required String standard,
    required String confidential,
    required int index,
  }) = _Address;
  static Future<Address> addressFromScript(
          {required Network network,
          required String script,
          required String blindingKey,
          dynamic hint}) =>
      LwkCore.instance.api.addressAddressFromScript(
          network: network,
          script: script,
          blindingKey: blindingKey,
          hint: hint);

  static Future<void> validate({required String addressString, dynamic hint}) =>
      LwkCore.instance.api
          .addressValidate(addressString: addressString, hint: hint);
}

@freezed
class Balance with _$Balance {
  const factory Balance({
    required String assetId,
    required int value,
  }) = _Balance;
}

class Blockchain {
  const Blockchain();

  Future<void> test({required String electrumUrl, dynamic hint}) =>
      LwkCore.instance.api
          .blockchainTest(that: this, electrumUrl: electrumUrl, hint: hint);

  @override
  int get hashCode => 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Blockchain && runtimeType == other.runtimeType;
}

enum Network {
  mainnet,
  testnet,
}

@freezed
class OutPoint with _$OutPoint {
  const factory OutPoint({
    required String txid,
    required int vout,
  }) = _OutPoint;
}

class PsetAmounts {
  final int absoluteFees;
  final List<Balance> balances;

  const PsetAmounts({
    required this.absoluteFees,
    required this.balances,
  });

  @override
  int get hashCode => absoluteFees.hashCode ^ balances.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PsetAmounts &&
          runtimeType == other.runtimeType &&
          absoluteFees == other.absoluteFees &&
          balances == other.balances;
}

@freezed
class Tx with _$Tx {
  const factory Tx({
    required int timestamp,
    required String kind,
    required List<Balance> balances,
    required String txid,
    required List<TxOut> outputs,
    required List<TxOut> inputs,
    required int fee,
    required int height,
  }) = _Tx;
}

@freezed
class TxOut with _$TxOut {
  const factory TxOut({
    required String scriptPubkey,
    required OutPoint outpoint,
    int? height,
    required TxOutSecrets unblinded,
  }) = _TxOut;
}

@freezed
class TxOutSecrets with _$TxOutSecrets {
  const factory TxOutSecrets({
    required int value,
    required String valueBf,
    required String asset,
    required String assetBf,
  }) = _TxOutSecrets;
}
