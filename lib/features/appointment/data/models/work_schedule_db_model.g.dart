// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_schedule_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkScheduleDbModelCollection on Isar {
  IsarCollection<WorkScheduleDbModel> get workScheduleDbModels =>
      this.collection();
}

const WorkScheduleDbModelSchema = CollectionSchema(
  name: r'WorkScheduleDbModel',
  id: 5112368260444215211,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _workScheduleDbModelEstimateSize,
  serialize: _workScheduleDbModelSerialize,
  deserialize: _workScheduleDbModelDeserialize,
  deserializeProp: _workScheduleDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'shift': LinkSchema(
      id: 6751929154146558287,
      name: r'shift',
      target: r'ShiftDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _workScheduleDbModelGetId,
  getLinks: _workScheduleDbModelGetLinks,
  attach: _workScheduleDbModelAttach,
  version: '3.1.0+1',
);

int _workScheduleDbModelEstimateSize(
  WorkScheduleDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _workScheduleDbModelSerialize(
  WorkScheduleDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
}

WorkScheduleDbModel _workScheduleDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkScheduleDbModel(
    date: reader.readDateTime(offsets[0]),
    id: id,
  );
  return object;
}

P _workScheduleDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _workScheduleDbModelGetId(WorkScheduleDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _workScheduleDbModelGetLinks(
    WorkScheduleDbModel object) {
  return [object.shift];
}

void _workScheduleDbModelAttach(
    IsarCollection<dynamic> col, Id id, WorkScheduleDbModel object) {
  object.id = id;
  object.shift.attach(col, col.isar.collection<ShiftDbModel>(), r'shift', id);
}

extension WorkScheduleDbModelQueryWhereSort
    on QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QWhere> {
  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkScheduleDbModelQueryWhere
    on QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QWhereClause> {
  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterWhereClause>
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

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterWhereClause>
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

extension WorkScheduleDbModelQueryFilter on QueryBuilder<WorkScheduleDbModel,
    WorkScheduleDbModel, QFilterCondition> {
  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
      dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
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

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
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

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
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
}

extension WorkScheduleDbModelQueryObject on QueryBuilder<WorkScheduleDbModel,
    WorkScheduleDbModel, QFilterCondition> {}

extension WorkScheduleDbModelQueryLinks on QueryBuilder<WorkScheduleDbModel,
    WorkScheduleDbModel, QFilterCondition> {
  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
      shift(FilterQuery<ShiftDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'shift');
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterFilterCondition>
      shiftIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shift', 0, true, 0, true);
    });
  }
}

extension WorkScheduleDbModelQuerySortBy
    on QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QSortBy> {
  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }
}

extension WorkScheduleDbModelQuerySortThenBy
    on QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QSortThenBy> {
  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension WorkScheduleDbModelQueryWhereDistinct
    on QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QDistinct> {
  QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }
}

extension WorkScheduleDbModelQueryProperty
    on QueryBuilder<WorkScheduleDbModel, WorkScheduleDbModel, QQueryProperty> {
  QueryBuilder<WorkScheduleDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WorkScheduleDbModel, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }
}
