///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ExampleEnum extends $pb.ProtobufEnum {
  static const ExampleEnum SUCCESS = ExampleEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const ExampleEnum FAILED = ExampleEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED');

  static const $core.List<ExampleEnum> values = <ExampleEnum> [
    SUCCESS,
    FAILED,
  ];

  static final $core.Map<$core.int, ExampleEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExampleEnum valueOf($core.int value) => _byValue[value];

  const ExampleEnum._($core.int v, $core.String n) : super(v, n);
}

