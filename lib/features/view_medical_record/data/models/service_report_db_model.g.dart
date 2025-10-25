// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_report_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetServiceReportDbModelCollection on Isar {
  IsarCollection<ServiceReportDbModel> get serviceReportDbModels =>
      this.collection();
}

const ServiceReportDbModelSchema = CollectionSchema(
  name: r'ServiceReportDbModel',
  id: -5425427314202112952,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.string,
    ),
    r'effectiveTime': PropertySchema(
      id: 1,
      name: r'effectiveTime',
      type: IsarType.dateTime,
    ),
    r'method': PropertySchema(
      id: 2,
      name: r'method',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 3,
      name: r'status',
      type: IsarType.string,
    )
  },
  estimateSize: _serviceReportDbModelEstimateSize,
  serialize: _serviceReportDbModelSerialize,
  deserialize: _serviceReportDbModelDeserialize,
  deserializeProp: _serviceReportDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'service': LinkSchema(
      id: -395413450247308914,
      name: r'service',
      target: r'ServiceDbModel',
      single: true,
    ),
    r'requester': LinkSchema(
      id: 1783431274983057366,
      name: r'requester',
      target: r'PhysicianDbModel',
      single: true,
    ),
    r'performer': LinkSchema(
      id: -7409022960950385225,
      name: r'performer',
      target: r'PhysicianDbModel',
      single: true,
    ),
    r'assessmentResults': LinkSchema(
      id: 5543668006260672386,
      name: r'assessmentResults',
      target: r'AssessmentResultDbModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _serviceReportDbModelGetId,
  getLinks: _serviceReportDbModelGetLinks,
  attach: _serviceReportDbModelAttach,
  version: '3.1.0+1',
);

int _serviceReportDbModelEstimateSize(
  ServiceReportDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.method.length * 3;
  bytesCount += 3 + object.status.length * 3;
  return bytesCount;
}

void _serviceReportDbModelSerialize(
  ServiceReportDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category);
  writer.writeDateTime(offsets[1], object.effectiveTime);
  writer.writeString(offsets[2], object.method);
  writer.writeString(offsets[3], object.status);
}

ServiceReportDbModel _serviceReportDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ServiceReportDbModel(
    category: reader.readString(offsets[0]),
    effectiveTime: reader.readDateTimeOrNull(offsets[1]),
    id: id,
    method: reader.readString(offsets[2]),
    status: reader.readString(offsets[3]),
  );
  return object;
}

P _serviceReportDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _serviceReportDbModelGetId(ServiceReportDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _serviceReportDbModelGetLinks(
    ServiceReportDbModel object) {
  return [
    object.service,
    object.requester,
    object.performer,
    object.assessmentResults
  ];
}

void _serviceReportDbModelAttach(
    IsarCollection<dynamic> col, Id id, ServiceReportDbModel object) {
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

extension ServiceReportDbModelQueryWhereSort
    on QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QWhere> {
  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ServiceReportDbModelQueryWhere
    on QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QWhereClause> {
  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterWhereClause>
      idBetween(
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

extension ServiceReportDbModelQueryFilter on QueryBuilder<ServiceReportDbModel,
    ServiceReportDbModel, QFilterCondition> {
  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> effectiveTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'effectiveTime',
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> effectiveTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'effectiveTime',
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> effectiveTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'effectiveTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> methodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> methodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension ServiceReportDbModelQueryObject on QueryBuilder<ServiceReportDbModel,
    ServiceReportDbModel, QFilterCondition> {}

extension ServiceReportDbModelQueryLinks on QueryBuilder<ServiceReportDbModel,
    ServiceReportDbModel, QFilterCondition> {
  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> service(FilterQuery<ServiceDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'service');
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> serviceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'service', 0, true, 0, true);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> requester(FilterQuery<PhysicianDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'requester');
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> requesterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'requester', 0, true, 0, true);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> performer(FilterQuery<PhysicianDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'performer');
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> performerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'performer', 0, true, 0, true);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
          QAfterFilterCondition>
      assessmentResults(FilterQuery<AssessmentResultDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'assessmentResults');
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> assessmentResultsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', length, true, length, true);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> assessmentResultsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, true, 0, true);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> assessmentResultsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, false, 999999, true);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> assessmentResultsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, true, length, include);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
      QAfterFilterCondition> assessmentResultsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'assessmentResults', length, include, 999999, true);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel,
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

extension ServiceReportDbModelQuerySortBy
    on QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QSortBy> {
  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByEffectiveTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.desc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension ServiceReportDbModelQuerySortThenBy
    on QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QSortThenBy> {
  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByEffectiveTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.desc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension ServiceReportDbModelQueryWhereDistinct
    on QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QDistinct> {
  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QDistinct>
      distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QDistinct>
      distinctByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'effectiveTime');
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QDistinct>
      distinctByMethod({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'method', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ServiceReportDbModel, ServiceReportDbModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension ServiceReportDbModelQueryProperty on QueryBuilder<
    ServiceReportDbModel, ServiceReportDbModel, QQueryProperty> {
  QueryBuilder<ServiceReportDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ServiceReportDbModel, String, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<ServiceReportDbModel, DateTime?, QQueryOperations>
      effectiveTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'effectiveTime');
    });
  }

  QueryBuilder<ServiceReportDbModel, String, QQueryOperations>
      methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'method');
    });
  }

  QueryBuilder<ServiceReportDbModel, String, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
