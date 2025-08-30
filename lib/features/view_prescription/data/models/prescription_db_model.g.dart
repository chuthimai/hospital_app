// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPrescriptionDbModelCollection on Isar {
  IsarCollection<PrescriptionDbModel> get prescriptionDbModels =>
      this.collection();
}

const PrescriptionDbModelSchema = CollectionSchema(
  name: r'PrescriptionDbModel',
  id: 6427974844464927153,
  properties: {
    r'createTime': PropertySchema(
      id: 0,
      name: r'createTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _prescriptionDbModelEstimateSize,
  serialize: _prescriptionDbModelSerialize,
  deserialize: _prescriptionDbModelDeserialize,
  deserializeProp: _prescriptionDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'prescribedMedications': LinkSchema(
      id: 73411836064018507,
      name: r'prescribedMedications',
      target: r'PrescribedMedicationDbModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _prescriptionDbModelGetId,
  getLinks: _prescriptionDbModelGetLinks,
  attach: _prescriptionDbModelAttach,
  version: '3.1.0+1',
);

int _prescriptionDbModelEstimateSize(
  PrescriptionDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _prescriptionDbModelSerialize(
  PrescriptionDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createTime);
}

PrescriptionDbModel _prescriptionDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PrescriptionDbModel(
    createTime: reader.readDateTime(offsets[0]),
    id: id,
  );
  return object;
}

P _prescriptionDbModelDeserializeProp<P>(
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

Id _prescriptionDbModelGetId(PrescriptionDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _prescriptionDbModelGetLinks(
    PrescriptionDbModel object) {
  return [object.prescribedMedications];
}

void _prescriptionDbModelAttach(
    IsarCollection<dynamic> col, Id id, PrescriptionDbModel object) {
  object.id = id;
  object.prescribedMedications.attach(
      col,
      col.isar.collection<PrescribedMedicationDbModel>(),
      r'prescribedMedications',
      id);
}

extension PrescriptionDbModelQueryWhereSort
    on QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QWhere> {
  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PrescriptionDbModelQueryWhere
    on QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QWhereClause> {
  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterWhereClause>
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

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterWhereClause>
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

extension PrescriptionDbModelQueryFilter on QueryBuilder<PrescriptionDbModel,
    PrescriptionDbModel, QFilterCondition> {
  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      createTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      createTimeGreaterThan(
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

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      createTimeLessThan(
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

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      createTimeBetween(
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

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
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

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
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

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
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

extension PrescriptionDbModelQueryObject on QueryBuilder<PrescriptionDbModel,
    PrescriptionDbModel, QFilterCondition> {}

extension PrescriptionDbModelQueryLinks on QueryBuilder<PrescriptionDbModel,
    PrescriptionDbModel, QFilterCondition> {
  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      prescribedMedications(FilterQuery<PrescribedMedicationDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'prescribedMedications');
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      prescribedMedicationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'prescribedMedications', length, true, length, true);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      prescribedMedicationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'prescribedMedications', 0, true, 0, true);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      prescribedMedicationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'prescribedMedications', 0, false, 999999, true);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      prescribedMedicationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'prescribedMedications', 0, true, length, include);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      prescribedMedicationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'prescribedMedications', length, include, 999999, true);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterFilterCondition>
      prescribedMedicationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'prescribedMedications', lower, includeLower, upper, includeUpper);
    });
  }
}

extension PrescriptionDbModelQuerySortBy
    on QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QSortBy> {
  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterSortBy>
      sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }
}

extension PrescriptionDbModelQuerySortThenBy
    on QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QSortThenBy> {
  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterSortBy>
      thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension PrescriptionDbModelQueryWhereDistinct
    on QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QDistinct> {
  QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QDistinct>
      distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }
}

extension PrescriptionDbModelQueryProperty
    on QueryBuilder<PrescriptionDbModel, PrescriptionDbModel, QQueryProperty> {
  QueryBuilder<PrescriptionDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PrescriptionDbModel, DateTime, QQueryOperations>
      createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }
}
