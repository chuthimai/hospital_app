// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMedicationDbModelCollection on Isar {
  IsarCollection<MedicationDbModel> get medicationDbModels => this.collection();
}

const MedicationDbModelSchema = CollectionSchema(
  name: r'MedicationDbModel',
  id: 5450011237937004861,
  properties: {
    r'doseForm': PropertySchema(
      id: 0,
      name: r'doseForm',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _medicationDbModelEstimateSize,
  serialize: _medicationDbModelSerialize,
  deserialize: _medicationDbModelDeserialize,
  deserializeProp: _medicationDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _medicationDbModelGetId,
  getLinks: _medicationDbModelGetLinks,
  attach: _medicationDbModelAttach,
  version: '3.1.0+1',
);

int _medicationDbModelEstimateSize(
  MedicationDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.doseForm.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _medicationDbModelSerialize(
  MedicationDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.doseForm);
  writer.writeString(offsets[1], object.name);
}

MedicationDbModel _medicationDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedicationDbModel(
    doseForm: reader.readString(offsets[0]),
    id: id,
    name: reader.readString(offsets[1]),
  );
  return object;
}

P _medicationDbModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medicationDbModelGetId(MedicationDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _medicationDbModelGetLinks(
    MedicationDbModel object) {
  return [];
}

void _medicationDbModelAttach(
    IsarCollection<dynamic> col, Id id, MedicationDbModel object) {
  object.id = id;
}

extension MedicationDbModelQueryWhereSort
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QWhere> {
  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MedicationDbModelQueryWhere
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QWhereClause> {
  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterWhereClause>
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

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterWhereClause>
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

extension MedicationDbModelQueryFilter
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QFilterCondition> {
  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doseForm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doseForm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doseForm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doseForm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doseForm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doseForm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doseForm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doseForm',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doseForm',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      doseFormIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doseForm',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
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

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
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

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
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

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension MedicationDbModelQueryObject
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QFilterCondition> {}

extension MedicationDbModelQueryLinks
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QFilterCondition> {}

extension MedicationDbModelQuerySortBy
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QSortBy> {
  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      sortByDoseForm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doseForm', Sort.asc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      sortByDoseFormDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doseForm', Sort.desc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension MedicationDbModelQuerySortThenBy
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QSortThenBy> {
  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      thenByDoseForm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doseForm', Sort.asc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      thenByDoseFormDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doseForm', Sort.desc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension MedicationDbModelQueryWhereDistinct
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QDistinct> {
  QueryBuilder<MedicationDbModel, MedicationDbModel, QDistinct>
      distinctByDoseForm({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doseForm', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicationDbModel, MedicationDbModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension MedicationDbModelQueryProperty
    on QueryBuilder<MedicationDbModel, MedicationDbModel, QQueryProperty> {
  QueryBuilder<MedicationDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MedicationDbModel, String, QQueryOperations> doseFormProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doseForm');
    });
  }

  QueryBuilder<MedicationDbModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
