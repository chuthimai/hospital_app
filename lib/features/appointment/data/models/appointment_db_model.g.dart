// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppointmentDbModelCollection on Isar {
  IsarCollection<AppointmentDbModel> get appointmentDbModels =>
      this.collection();
}

const AppointmentDbModelSchema = CollectionSchema(
  name: r'AppointmentDbModel',
  id: -4356517074736649994,
  properties: {
    r'cancellationDate': PropertySchema(
      id: 0,
      name: r'cancellationDate',
      type: IsarType.dateTime,
    ),
    r'reason': PropertySchema(
      id: 1,
      name: r'reason',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 2,
      name: r'status',
      type: IsarType.string,
    )
  },
  estimateSize: _appointmentDbModelEstimateSize,
  serialize: _appointmentDbModelSerialize,
  deserialize: _appointmentDbModelDeserialize,
  deserializeProp: _appointmentDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'workSchedule': LinkSchema(
      id: 4582409195147719510,
      name: r'workSchedule',
      target: r'WorkScheduleDbModel',
      single: true,
    ),
    r'physician': LinkSchema(
      id: -7194859765476468933,
      name: r'physician',
      target: r'PhysicianDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _appointmentDbModelGetId,
  getLinks: _appointmentDbModelGetLinks,
  attach: _appointmentDbModelAttach,
  version: '3.1.0+1',
);

int _appointmentDbModelEstimateSize(
  AppointmentDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.reason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.length * 3;
  return bytesCount;
}

void _appointmentDbModelSerialize(
  AppointmentDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.cancellationDate);
  writer.writeString(offsets[1], object.reason);
  writer.writeString(offsets[2], object.status);
}

AppointmentDbModel _appointmentDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppointmentDbModel(
    cancellationDate: reader.readDateTimeOrNull(offsets[0]),
    id: id,
    reason: reader.readStringOrNull(offsets[1]),
    status: reader.readString(offsets[2]),
  );
  return object;
}

P _appointmentDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appointmentDbModelGetId(AppointmentDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appointmentDbModelGetLinks(
    AppointmentDbModel object) {
  return [object.workSchedule, object.physician];
}

void _appointmentDbModelAttach(
    IsarCollection<dynamic> col, Id id, AppointmentDbModel object) {
  object.id = id;
  object.workSchedule.attach(
      col, col.isar.collection<WorkScheduleDbModel>(), r'workSchedule', id);
  object.physician
      .attach(col, col.isar.collection<PhysicianDbModel>(), r'physician', id);
}

extension AppointmentDbModelQueryWhereSort
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QWhere> {
  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppointmentDbModelQueryWhere
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QWhereClause> {
  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterWhereClause>
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterWhereClause>
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

extension AppointmentDbModelQueryFilter
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QFilterCondition> {
  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      cancellationDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cancellationDate',
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      cancellationDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cancellationDate',
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      cancellationDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cancellationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      cancellationDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cancellationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      cancellationDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cancellationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      cancellationDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cancellationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reason',
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reason',
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      reasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusEqualTo(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusGreaterThan(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusLessThan(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusBetween(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusStartsWith(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusEndsWith(
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

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension AppointmentDbModelQueryObject
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QFilterCondition> {}

extension AppointmentDbModelQueryLinks
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QFilterCondition> {
  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      workSchedule(FilterQuery<WorkScheduleDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'workSchedule');
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      workScheduleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'workSchedule', 0, true, 0, true);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      physician(FilterQuery<PhysicianDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'physician');
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterFilterCondition>
      physicianIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'physician', 0, true, 0, true);
    });
  }
}

extension AppointmentDbModelQuerySortBy
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QSortBy> {
  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      sortByCancellationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancellationDate', Sort.asc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      sortByCancellationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancellationDate', Sort.desc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      sortByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      sortByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension AppointmentDbModelQuerySortThenBy
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QSortThenBy> {
  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenByCancellationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancellationDate', Sort.asc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenByCancellationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancellationDate', Sort.desc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension AppointmentDbModelQueryWhereDistinct
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QDistinct> {
  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QDistinct>
      distinctByCancellationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cancellationDate');
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QDistinct>
      distinctByReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reason', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppointmentDbModel, AppointmentDbModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension AppointmentDbModelQueryProperty
    on QueryBuilder<AppointmentDbModel, AppointmentDbModel, QQueryProperty> {
  QueryBuilder<AppointmentDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppointmentDbModel, DateTime?, QQueryOperations>
      cancellationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cancellationDate');
    });
  }

  QueryBuilder<AppointmentDbModel, String?, QQueryOperations> reasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reason');
    });
  }

  QueryBuilder<AppointmentDbModel, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
