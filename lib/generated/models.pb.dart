///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'timestamp.pb.dart' as $0;

import 'models.pbenum.dart';

export 'models.pbenum.dart';

class ExampleData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExampleData', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName', protoName: 'displayName')
    ..e<ExampleEnum>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enum', $pb.PbFieldType.OE, defaultOrMaker: ExampleEnum.SUCCESS, valueOf: ExampleEnum.valueOf, enumValues: ExampleEnum.values)
    ..aOM<$0.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issueDate', protoName: 'issueDate', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ExampleData._() : super();
  factory ExampleData() => create();
  factory ExampleData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExampleData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExampleData clone() => ExampleData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExampleData copyWith(void Function(ExampleData) updates) => super.copyWith((message) => updates(message as ExampleData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExampleData create() => ExampleData._();
  ExampleData createEmptyInstance() => create();
  static $pb.PbList<ExampleData> createRepeated() => $pb.PbList<ExampleData>();
  @$core.pragma('dart2js:noInline')
  static ExampleData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExampleData>(create);
  static ExampleData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  ExampleEnum get enum_2 => $_getN(1);
  @$pb.TagNumber(2)
  set enum_2(ExampleEnum v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnum_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnum_2() => clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get issueDate => $_getN(2);
  @$pb.TagNumber(3)
  set issueDate($0.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIssueDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearIssueDate() => clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureIssueDate() => $_ensure(2);
}

class ExampleDataList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExampleDataList', createEmptyInstance: create)
    ..pc<ExampleData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'virtualKeys', $pb.PbFieldType.PM, protoName: 'virtualKeys', subBuilder: ExampleData.create)
    ..hasRequiredFields = false
  ;

  ExampleDataList._() : super();
  factory ExampleDataList() => create();
  factory ExampleDataList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExampleDataList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExampleDataList clone() => ExampleDataList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExampleDataList copyWith(void Function(ExampleDataList) updates) => super.copyWith((message) => updates(message as ExampleDataList)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExampleDataList create() => ExampleDataList._();
  ExampleDataList createEmptyInstance() => create();
  static $pb.PbList<ExampleDataList> createRepeated() => $pb.PbList<ExampleDataList>();
  @$core.pragma('dart2js:noInline')
  static ExampleDataList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExampleDataList>(create);
  static ExampleDataList _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExampleData> get virtualKeys => $_getList(0);
}

