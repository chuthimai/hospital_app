// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_report_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDiagnosisReportDbModelCollection on Isar {
  IsarCollection<DiagnosisReportDbModel> get diagnosisReportDbModels =>
      this.collection();
}

const DiagnosisReportDbModelSchema = CollectionSchema(
  name: r'DiagnosisReportDbModel',
  id: 561250485072875049,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.string,
    ),
    r'conclusion': PropertySchema(
      id: 1,
      name: r'conclusion',
      type: IsarType.string,
    ),
    r'effectiveTime': PropertySchema(
      id: 2,
      name: r'effectiveTime',
      type: IsarType.dateTime,
    ),
    r'method': PropertySchema(
      id: 3,
      name: r'method',
      type: IsarType.string,
    ),
    r'recordedTime': PropertySchema(
      id: 4,
      name: r'recordedTime',
      type: IsarType.dateTime,
    ),
    r'severity': PropertySchema(
      id: 5,
      name: r'severity',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 6,
      name: r'status',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 7,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _diagnosisReportDbModelEstimateSize,
  serialize: _diagnosisReportDbModelSerialize,
  deserialize: _diagnosisReportDbModelDeserialize,
  deserializeProp: _diagnosisReportDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'service': LinkSchema(
      id: 7308179860826907603,
      name: r'service',
      target: r'ServiceDbModel',
      single: true,
    ),
    r'requester': LinkSchema(
      id: 4151214246929191748,
      name: r'requester',
      target: r'PhysicianDbModel',
      single: true,
    ),
    r'performer': LinkSchema(
      id: 4006995902410786458,
      name: r'performer',
      target: r'PhysicianDbModel',
      single: true,
    ),
    r'assessmentResults': LinkSchema(
      id: -4082388939015902612,
      name: r'assessmentResults',
      target: r'AssessmentResultDbModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _diagnosisReportDbModelGetId,
  getLinks: _diagnosisReportDbModelGetLinks,
  attach: _diagnosisReportDbModelAttach,
  version: '3.1.0+1',
);

int _diagnosisReportDbModelEstimateSize(
  DiagnosisReportDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.conclusion.length * 3;
  bytesCount += 3 + object.method.length * 3;
  bytesCount += 3 + object.severity.length * 3;
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _diagnosisReportDbModelSerialize(
  DiagnosisReportDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category);
  writer.writeString(offsets[1], object.conclusion);
  writer.writeDateTime(offsets[2], object.effectiveTime);
  writer.writeString(offsets[3], object.method);
  writer.writeDateTime(offsets[4], object.recordedTime);
  writer.writeString(offsets[5], object.severity);
  writer.writeString(offsets[6], object.status);
  writer.writeString(offsets[7], object.type);
}

DiagnosisReportDbModel _diagnosisReportDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DiagnosisReportDbModel(
    category: reader.readString(offsets[0]),
    conclusion: reader.readString(offsets[1]),
    effectiveTime: reader.readDateTimeOrNull(offsets[2]),
    id: id,
    method: reader.readString(offsets[3]),
    recordedTime: reader.readDateTimeOrNull(offsets[4]),
    severity: reader.readString(offsets[5]),
    status: reader.readString(offsets[6]),
    type: reader.readString(offsets[7]),
  );
  return object;
}

P _diagnosisReportDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _diagnosisReportDbModelGetId(DiagnosisReportDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _diagnosisReportDbModelGetLinks(
    DiagnosisReportDbModel object) {
  return [
    object.service,
    object.requester,
    object.performer,
    object.assessmentResults
  ];
}

void _diagnosisReportDbModelAttach(
    IsarCollection<dynamic> col, Id id, DiagnosisReportDbModel object) {
  object.id = id;
  object.service
      .attach(col, col.isar.collection<ServiceDbModel>(), r'service', id);
  object.requester
      .attach(col, col.isar.collection<PhysicianDbModel>(), r'requester', id);
  object.performer
      .attach(col, col.isar.collection<PhysicianDbModel>(), r'performer', id);
  object.assessmentResults.attach(col,
      col.isar.collection<AssessmentResultDbModel>(), r'assessmentResults', id);
}

extension DiagnosisReportDbModelQueryWhereSort
    on QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QWhere> {
  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DiagnosisReportDbModelQueryWhere on QueryBuilder<
    DiagnosisReportDbModel, DiagnosisReportDbModel, QWhereClause> {
  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DiagnosisReportDbModelQueryFilter on QueryBuilder<
    DiagnosisReportDbModel, DiagnosisReportDbModel, QFilterCondition> {
  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conclusion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'conclusion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'conclusion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'conclusion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'conclusion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'conclusion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      conclusionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'conclusion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      conclusionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'conclusion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conclusion',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> conclusionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'conclusion',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> effectiveTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'effectiveTime',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> effectiveTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'effectiveTime',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> effectiveTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'effectiveTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> effectiveTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'effectiveTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> effectiveTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'effectiveTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> effectiveTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'effectiveTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'method',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      methodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      methodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'method',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> methodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> recordedTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recordedTime',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> recordedTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recordedTime',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> recordedTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recordedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> recordedTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recordedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> recordedTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recordedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> recordedTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recordedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'severity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'severity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'severity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'severity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'severity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'severity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      severityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'severity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      severityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'severity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'severity',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> severityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'severity',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension DiagnosisReportDbModelQueryObject on QueryBuilder<
    DiagnosisReportDbModel, DiagnosisReportDbModel, QFilterCondition> {}

extension DiagnosisReportDbModelQueryLinks on QueryBuilder<
    DiagnosisReportDbModel, DiagnosisReportDbModel, QFilterCondition> {
  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> service(FilterQuery<ServiceDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'service');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> serviceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'service', 0, true, 0, true);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> requester(FilterQuery<PhysicianDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'requester');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> requesterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'requester', 0, true, 0, true);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> performer(FilterQuery<PhysicianDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'performer');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> performerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'performer', 0, true, 0, true);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
          QAfterFilterCondition>
      assessmentResults(FilterQuery<AssessmentResultDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'assessmentResults');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> assessmentResultsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', length, true, length, true);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> assessmentResultsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, true, 0, true);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> assessmentResultsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, false, 999999, true);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> assessmentResultsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, true, length, include);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> assessmentResultsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'assessmentResults', length, include, 999999, true);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel,
      QAfterFilterCondition> assessmentResultsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'assessmentResults', lower, includeLower, upper, includeUpper);
    });
  }
}

extension DiagnosisReportDbModelQuerySortBy
    on QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QSortBy> {
  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByConclusion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conclusion', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByConclusionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conclusion', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByEffectiveTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByRecordedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedTime', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByRecordedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedTime', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortBySeverity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortBySeverityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension DiagnosisReportDbModelQuerySortThenBy on QueryBuilder<
    DiagnosisReportDbModel, DiagnosisReportDbModel, QSortThenBy> {
  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByConclusion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conclusion', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByConclusionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conclusion', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByEffectiveTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByRecordedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedTime', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByRecordedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedTime', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenBySeverity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenBySeverityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension DiagnosisReportDbModelQueryWhereDistinct
    on QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct> {
  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctByConclusion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conclusion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'effectiveTime');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctByMethod({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'method', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctByRecordedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recordedTime');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctBySeverity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'severity', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DiagnosisReportDbModel, QDistinct>
      distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension DiagnosisReportDbModelQueryProperty on QueryBuilder<
    DiagnosisReportDbModel, DiagnosisReportDbModel, QQueryProperty> {
  QueryBuilder<DiagnosisReportDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, String, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, String, QQueryOperations>
      conclusionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conclusion');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DateTime?, QQueryOperations>
      effectiveTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'effectiveTime');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, String, QQueryOperations>
      methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'method');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, DateTime?, QQueryOperations>
      recordedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recordedTime');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, String, QQueryOperations>
      severityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'severity');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, String, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<DiagnosisReportDbModel, String, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
