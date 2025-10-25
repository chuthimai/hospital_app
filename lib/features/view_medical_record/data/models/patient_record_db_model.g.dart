// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_record_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPatientRecordDbModelCollection on Isar {
  IsarCollection<PatientRecordDbModel> get patientRecordDbModels =>
      this.collection();
}

const PatientRecordDbModelSchema = CollectionSchema(
  name: r'PatientRecordDbModel',
  id: -4577667555804751938,
  properties: {
    r'createTime': PropertySchema(
      id: 0,
      name: r'createTime',
      type: IsarType.dateTime,
    ),
    r'status': PropertySchema(
      id: 1,
      name: r'status',
      type: IsarType.string,
    )
  },
  estimateSize: _patientRecordDbModelEstimateSize,
  serialize: _patientRecordDbModelSerialize,
  deserialize: _patientRecordDbModelDeserialize,
  deserializeProp: _patientRecordDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'serviceReports': LinkSchema(
      id: 5552644059414417515,
      name: r'serviceReports',
      target: r'ServiceReportDbModel',
      single: false,
    ),
    r'prescription': LinkSchema(
      id: -1149732698534851352,
      name: r'prescription',
      target: r'PrescriptionDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _patientRecordDbModelGetId,
  getLinks: _patientRecordDbModelGetLinks,
  attach: _patientRecordDbModelAttach,
  version: '3.1.0+1',
);

int _patientRecordDbModelEstimateSize(
  PatientRecordDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.status.length * 3;
  return bytesCount;
}

void _patientRecordDbModelSerialize(
  PatientRecordDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createTime);
  writer.writeString(offsets[1], object.status);
}

PatientRecordDbModel _patientRecordDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PatientRecordDbModel(
    createTime: reader.readDateTime(offsets[0]),
    id: id,
    status: reader.readString(offsets[1]),
  );
  return object;
}

P _patientRecordDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _patientRecordDbModelGetId(PatientRecordDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _patientRecordDbModelGetLinks(
    PatientRecordDbModel object) {
  return [object.serviceReports, object.prescription];
}

void _patientRecordDbModelAttach(
    IsarCollection<dynamic> col, Id id, PatientRecordDbModel object) {
  object.id = id;
  object.serviceReports.attach(
      col, col.isar.collection<ServiceReportDbModel>(), r'serviceReports', id);
  object.prescription.attach(
      col, col.isar.collection<PrescriptionDbModel>(), r'prescription', id);
}

extension PatientRecordDbModelQueryWhereSort
    on QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QWhere> {
  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PatientRecordDbModelQueryWhere
    on QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QWhereClause> {
  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterWhereClause>
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterWhereClause>
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

extension PatientRecordDbModelQueryFilter on QueryBuilder<PatientRecordDbModel,
    PatientRecordDbModel, QFilterCondition> {
  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> createTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> createTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> createTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> createTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
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

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension PatientRecordDbModelQueryObject on QueryBuilder<PatientRecordDbModel,
    PatientRecordDbModel, QFilterCondition> {}

extension PatientRecordDbModelQueryLinks on QueryBuilder<PatientRecordDbModel,
    PatientRecordDbModel, QFilterCondition> {
  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
          QAfterFilterCondition>
      serviceReports(FilterQuery<ServiceReportDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'serviceReports');
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> serviceReportsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceReports', length, true, length, true);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> serviceReportsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceReports', 0, true, 0, true);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> serviceReportsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceReports', 0, false, 999999, true);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> serviceReportsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceReports', 0, true, length, include);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> serviceReportsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceReports', length, include, 999999, true);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> serviceReportsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'serviceReports', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> prescription(FilterQuery<PrescriptionDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'prescription');
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel,
      QAfterFilterCondition> prescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'prescription', 0, true, 0, true);
    });
  }
}

extension PatientRecordDbModelQuerySortBy
    on QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QSortBy> {
  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension PatientRecordDbModelQuerySortThenBy
    on QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QSortThenBy> {
  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension PatientRecordDbModelQueryWhereDistinct
    on QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QDistinct> {
  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QDistinct>
      distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }

  QueryBuilder<PatientRecordDbModel, PatientRecordDbModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension PatientRecordDbModelQueryProperty on QueryBuilder<
    PatientRecordDbModel, PatientRecordDbModel, QQueryProperty> {
  QueryBuilder<PatientRecordDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PatientRecordDbModel, DateTime, QQueryOperations>
      createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }

  QueryBuilder<PatientRecordDbModel, String, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
