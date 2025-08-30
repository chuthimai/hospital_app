// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescribed_medication_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPrescribedMedicationDbModelCollection on Isar {
  IsarCollection<PrescribedMedicationDbModel>
      get prescribedMedicationDbModels => this.collection();
}

const PrescribedMedicationDbModelSchema = CollectionSchema(
  name: r'PrescribedMedicationDbModel',
  id: 3784705764624905780,
  properties: {
    r'dosageInstruction': PropertySchema(
      id: 0,
      name: r'dosageInstruction',
      type: IsarType.string,
    ),
    r'note': PropertySchema(
      id: 1,
      name: r'note',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 2,
      name: r'quantity',
      type: IsarType.long,
    )
  },
  estimateSize: _prescribedMedicationDbModelEstimateSize,
  serialize: _prescribedMedicationDbModelSerialize,
  deserialize: _prescribedMedicationDbModelDeserialize,
  deserializeProp: _prescribedMedicationDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'medication': LinkSchema(
      id: 7738576235542023913,
      name: r'medication',
      target: r'MedicationDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _prescribedMedicationDbModelGetId,
  getLinks: _prescribedMedicationDbModelGetLinks,
  attach: _prescribedMedicationDbModelAttach,
  version: '3.1.0+1',
);

int _prescribedMedicationDbModelEstimateSize(
  PrescribedMedicationDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dosageInstruction.length * 3;
  {
    final value = object.note;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _prescribedMedicationDbModelSerialize(
  PrescribedMedicationDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dosageInstruction);
  writer.writeString(offsets[1], object.note);
  writer.writeLong(offsets[2], object.quantity);
}

PrescribedMedicationDbModel _prescribedMedicationDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PrescribedMedicationDbModel(
    dosageInstruction: reader.readString(offsets[0]),
    id: id,
    note: reader.readStringOrNull(offsets[1]),
    quantity: reader.readLong(offsets[2]),
  );
  return object;
}

P _prescribedMedicationDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _prescribedMedicationDbModelGetId(PrescribedMedicationDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _prescribedMedicationDbModelGetLinks(
    PrescribedMedicationDbModel object) {
  return [object.medication];
}

void _prescribedMedicationDbModelAttach(
    IsarCollection<dynamic> col, Id id, PrescribedMedicationDbModel object) {
  object.id = id;
  object.medication
      .attach(col, col.isar.collection<MedicationDbModel>(), r'medication', id);
}

extension PrescribedMedicationDbModelQueryWhereSort on QueryBuilder<
    PrescribedMedicationDbModel, PrescribedMedicationDbModel, QWhere> {
  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PrescribedMedicationDbModelQueryWhere on QueryBuilder<
    PrescribedMedicationDbModel, PrescribedMedicationDbModel, QWhereClause> {
  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
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

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
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

extension PrescribedMedicationDbModelQueryFilter on QueryBuilder<
    PrescribedMedicationDbModel,
    PrescribedMedicationDbModel,
    QFilterCondition> {
  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosageInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dosageInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dosageInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dosageInstruction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dosageInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dosageInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
          QAfterFilterCondition>
      dosageInstructionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dosageInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
          QAfterFilterCondition>
      dosageInstructionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dosageInstruction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosageInstruction',
        value: '',
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> dosageInstructionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dosageInstruction',
        value: '',
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
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

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
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

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
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

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'note',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
          QAfterFilterCondition>
      noteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
          QAfterFilterCondition>
      noteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'note',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> noteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> quantityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PrescribedMedicationDbModelQueryObject on QueryBuilder<
    PrescribedMedicationDbModel,
    PrescribedMedicationDbModel,
    QFilterCondition> {}

extension PrescribedMedicationDbModelQueryLinks on QueryBuilder<
    PrescribedMedicationDbModel,
    PrescribedMedicationDbModel,
    QFilterCondition> {
  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> medication(FilterQuery<MedicationDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'medication');
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterFilterCondition> medicationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'medication', 0, true, 0, true);
    });
  }
}

extension PrescribedMedicationDbModelQuerySortBy on QueryBuilder<
    PrescribedMedicationDbModel, PrescribedMedicationDbModel, QSortBy> {
  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> sortByDosageInstruction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosageInstruction', Sort.asc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> sortByDosageInstructionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosageInstruction', Sort.desc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> sortByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> sortByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }
}

extension PrescribedMedicationDbModelQuerySortThenBy on QueryBuilder<
    PrescribedMedicationDbModel, PrescribedMedicationDbModel, QSortThenBy> {
  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenByDosageInstruction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosageInstruction', Sort.asc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenByDosageInstructionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosageInstruction', Sort.desc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }
}

extension PrescribedMedicationDbModelQueryWhereDistinct on QueryBuilder<
    PrescribedMedicationDbModel, PrescribedMedicationDbModel, QDistinct> {
  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QDistinct> distinctByDosageInstruction({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dosageInstruction',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QDistinct> distinctByNote({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'note', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, PrescribedMedicationDbModel,
      QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }
}

extension PrescribedMedicationDbModelQueryProperty on QueryBuilder<
    PrescribedMedicationDbModel, PrescribedMedicationDbModel, QQueryProperty> {
  QueryBuilder<PrescribedMedicationDbModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, String, QQueryOperations>
      dosageInstructionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dosageInstruction');
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, String?, QQueryOperations>
      noteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'note');
    });
  }

  QueryBuilder<PrescribedMedicationDbModel, int, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }
}
