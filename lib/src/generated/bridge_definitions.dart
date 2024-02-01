// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.6.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;

part 'bridge_definitions.freezed.dart';

abstract class LwkDart {
  Future<Wallet> newWalletStaticMethodApi(
      {required String mnemonic,
      required LiquidNetwork network,
      required String electrumUrl,
      required String dbPath,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewWalletStaticMethodApiConstMeta;

  Future<void> syncStaticMethodApi(
      {required String electrumUrl, required Wallet wallet, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSyncStaticMethodApiConstMeta;

  Future<String> addressStaticMethodApi({required Wallet wallet, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kAddressStaticMethodApiConstMeta;

  Future<Balance> balanceStaticMethodApi(
      {required Wallet wallet, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kBalanceStaticMethodApiConstMeta;

  Future<List<Tx>> txsStaticMethodApi({required Wallet wallet, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTxsStaticMethodApiConstMeta;

  Future<String> buildTxStaticMethodApi(
      {required Wallet wallet,
      required int sats,
      required String outAddress,
      double? absFee,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kBuildTxStaticMethodApiConstMeta;

  Future<PsetAmounts> decodeTxStaticMethodApi(
      {required Wallet wallet, required String pset, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDecodeTxStaticMethodApiConstMeta;

  Future<Uint8List> signTxStaticMethodApi(
      {required Wallet wallet,
      required String pset,
      required String mnemonic,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSignTxStaticMethodApiConstMeta;

  Future<String> broadcastTxStaticMethodApi(
      {required String electrumUrl, required Uint8List txBytes, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kBroadcastTxStaticMethodApiConstMeta;
}

class Balance {
  final int lbtc;

  const Balance({
    required this.lbtc,
  });
}

enum LiquidNetwork {
  Mainnet,
  Testnet,
}

@freezed
sealed class LwkError with _$LwkError implements FrbException {
  const factory LwkError.generic({
    required String msg,
  }) = LwkError_Generic;
  const factory LwkError.poisonError({
    required String msg,
  }) = LwkError_PoisonError;
}

class PsetAmounts {
  final int fee;
  final Balance balances;

  const PsetAmounts({
    required this.fee,
    required this.balances,
  });
}

class Tx {
  final String kind;
  final int amount;
  final String txid;
  final String address;
  final int fee;

  const Tx({
    required this.kind,
    required this.amount,
    required this.txid,
    required this.address,
    required this.fee,
  });
}

class Wallet {
  final LiquidNetwork network;
  final String dbpath;
  final String desc;

  const Wallet({
    required this.network,
    required this.dbpath,
    required this.desc,
  });
}
