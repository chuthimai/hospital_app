// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_indicator_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMeasurementIndicatorDbModelCollection on Isar {
  IsarCollection<MeasurementIndicatorDbModel>
      get measurementIndicatorDbModels => this.collection();
}

const MeasurementIndicatorDbModelSchema = CollectionSchema(
  name: r'MeasurementIndicatorDbModel',
  id: 3554376863041365703,
  properties: {
    r'maximum': PropertySchema(
      id: 0,
      name: r'maximum',
      type: IsarType.double,
    ),
    r'minimum': PropertySchema(
      id: 1,
      name: r'minimum',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 3,
      name: r'type',
      type: IsarType.string,
    ),
    r'unit': PropertySchema(
      id: 4,
      name: r'unit',
      type: IsarType.string,
    )
  },
  estimateSize: _measurementIndicatorDbModelEstimateSize,
  serialize: _measurementIndicatorDbModelSerialize,
  deserialize: _measurementIndicatorDbModelDeserialize,
  deserializeProp: _measurementIndicatorDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'parentAssessmentItem': LinkSchema(
      id: -445910824125370430,
      name: r'parentAssessmentItem',
      target: r'AssessmentItemDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _measurementIndicatorDbModelGetId,
  getLinks: _measurementIndicatorDbModelGetLinks,
  attach: _measurementIndicatorDbModelAttach,
  version: '3.1.0+1',
);

int _measurementIndicatorDbModelEstimateSize(
  MeasurementIndicatorDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.type.length * 3;
  bytesCount += 3 + object.unit.length * 3;
  return bytesCount;
}

void _measurementIndicatorDbModelSerialize(
  MeasurementIndicatorDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.maximum);
  writer.writeDouble(offsets[1], object.minimum);
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.type);
  writer.writeString(offsets[4], object.unit);
}

MeasurementIndicatorDbModel _measurementIndicatorDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeasurementIndicatorDbModel(
    id: id,
    maximum: reader.readDoubleOrNull(offsets[0]),
    minimum: reader.readDoubleOrNull(offsets[1]),
    name: reader.readString(offsets[2]),
    type: reader.readString(offsets[3]),
    unit: reader.readString(offsets[4]),
  );
  return object;
}

P _measurementIndicatorDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _measurementIndicatorDbModelGetId(MeasurementIndicatorDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _measurementIndicatorDbModelGetLinks(
    MeasurementIndicatorDbModel object) {
  return [object.parentAssessmentItem];
}

void _measurementIndicatorDbModelAttach(
    IsarCollection<dynamic> col, Id id, MeasurementIndicatorDbModel object) {
  object.id = id;
  object.parentAssessmentItem.attach(
      col,
      col.isar.collection<AssessmentItemDbModel>(),
      r'parentAssessmentItem',
      id);
}

extension MeasurementIndicatorDbModelQueryWhereSort on QueryBuilder<
    MeasurementIndicatorDbModel, MeasurementIndicatorDbModel, QWhere> {
  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeasurementIndicatorDbModelQueryWhere on QueryBuilder<
    MeasurementIndicatorDbModel, MeasurementIndicatorDbModel, QWhereClause> {
  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

extension MeasurementIndicatorDbModelQueryFilter on QueryBuilder<
    MeasurementIndicatorDbModel,
    MeasurementIndicatorDbModel,
    QFilterCondition> {
  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> maximumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maximum',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> maximumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maximum',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> maximumEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maximum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> maximumGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maximum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> maximumLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maximum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> maximumBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maximum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> minimumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minimum',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> minimumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minimum',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> minimumEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minimum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> minimumGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minimum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> minimumLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minimum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> minimumBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minimum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameBetween(
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
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

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
          QAfterFilterCondition>
      unitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
          QAfterFilterCondition>
      unitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unit',
        value: '',
      ));
    });
  }
}

extension MeasurementIndicatorDbModelQueryObject on QueryBuilder<
    MeasurementIndicatorDbModel,
    MeasurementIndicatorDbModel,
    QFilterCondition> {}

extension MeasurementIndicatorDbModelQueryLinks on QueryBuilder<
    MeasurementIndicatorDbModel,
    MeasurementIndicatorDbModel,
    QFilterCondition> {
  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
          QAfterFilterCondition>
      parentAssessmentItem(FilterQuery<AssessmentItemDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'parentAssessmentItem');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterFilterCondition> parentAssessmentItemIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'parentAssessmentItem', 0, true, 0, true);
    });
  }
}

extension MeasurementIndicatorDbModelQuerySortBy on QueryBuilder<
    MeasurementIndicatorDbModel, MeasurementIndicatorDbModel, QSortBy> {
  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByMaximum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximum', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByMaximumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximum', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByMinimum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimum', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByMinimumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimum', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension MeasurementIndicatorDbModelQuerySortThenBy on QueryBuilder<
    MeasurementIndicatorDbModel, MeasurementIndicatorDbModel, QSortThenBy> {
  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByMaximum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximum', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByMaximumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximum', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByMinimum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimum', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByMinimumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimum', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension MeasurementIndicatorDbModelQueryWhereDistinct on QueryBuilder<
    MeasurementIndicatorDbModel, MeasurementIndicatorDbModel, QDistinct> {
  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QDistinct> distinctByMaximum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maximum');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QDistinct> distinctByMinimum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minimum');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QDistinct> distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, MeasurementIndicatorDbModel,
      QDistinct> distinctByUnit({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit', caseSensitive: caseSensitive);
    });
  }
}

extension MeasurementIndicatorDbModelQueryProperty on QueryBuilder<
    MeasurementIndicatorDbModel, MeasurementIndicatorDbModel, QQueryProperty> {
  QueryBuilder<MeasurementIndicatorDbModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, double?, QQueryOperations>
      maximumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maximum');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, double?, QQueryOperations>
      minimumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minimum');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, String, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<MeasurementIndicatorDbModel, String, QQueryOperations>
      unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}
