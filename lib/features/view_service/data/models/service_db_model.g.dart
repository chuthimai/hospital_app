// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetServiceDbModelCollection on Isar {
  IsarCollection<ServiceDbModel> get serviceDbModels => this.collection();
}

const ServiceDbModelSchema = CollectionSchema(
  name: r'ServiceDbModel',
  id: -6862161250255055954,
  properties: {
    r'detailDescription': PropertySchema(
      id: 0,
      name: r'detailDescription',
      type: IsarType.string,
    ),
    r'isCompleted': PropertySchema(
      id: 1,
      name: r'isCompleted',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _serviceDbModelEstimateSize,
  serialize: _serviceDbModelSerialize,
  deserialize: _serviceDbModelDeserialize,
  deserializeProp: _serviceDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'location': LinkSchema(
      id: -9041962972606984259,
      name: r'location',
      target: r'LocationDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _serviceDbModelGetId,
  getLinks: _serviceDbModelGetLinks,
  attach: _serviceDbModelAttach,
  version: '3.1.0+1',
);

int _serviceDbModelEstimateSize(
  ServiceDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.detailDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _serviceDbModelSerialize(
  ServiceDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.detailDescription);
  writer.writeBool(offsets[1], object.isCompleted);
  writer.writeString(offsets[2], object.name);
}

ServiceDbModel _serviceDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ServiceDbModel();
  object.detailDescription = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.isCompleted = reader.readBool(offsets[1]);
  object.name = reader.readString(offsets[2]);
  return object;
}

P _serviceDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _serviceDbModelGetId(ServiceDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _serviceDbModelGetLinks(ServiceDbModel object) {
  return [object.location];
}

void _serviceDbModelAttach(
    IsarCollection<dynamic> col, Id id, ServiceDbModel object) {
  object.id = id;
  object.location
      .attach(col, col.isar.collection<LocationDbModel>(), r'location', id);
}

extension ServiceDbModelQueryWhereSort
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QWhere> {
  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ServiceDbModelQueryWhere
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QWhereClause> {
  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterWhereClause> idBetween(
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

extension ServiceDbModelQueryFilter
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QFilterCondition> {
  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'detailDescription',
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'detailDescription',
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'detailDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'detailDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'detailDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'detailDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'detailDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'detailDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'detailDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'detailDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'detailDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      detailDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'detailDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      isCompletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ServiceDbModelQueryObject
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QFilterCondition> {}

extension ServiceDbModelQueryLinks
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QFilterCondition> {
  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition> location(
      FilterQuery<LocationDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'location');
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterFilterCondition>
      locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'location', 0, true, 0, true);
    });
  }
}

extension ServiceDbModelQuerySortBy
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QSortBy> {
  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      sortByDetailDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detailDescription', Sort.asc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      sortByDetailDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detailDescription', Sort.desc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ServiceDbModelQuerySortThenBy
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QSortThenBy> {
  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      thenByDetailDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detailDescription', Sort.asc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      thenByDetailDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detailDescription', Sort.desc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy>
      thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ServiceDbModelQueryWhereDistinct
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QDistinct> {
  QueryBuilder<ServiceDbModel, ServiceDbModel, QDistinct>
      distinctByDetailDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'detailDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QDistinct>
      distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCompleted');
    });
  }

  QueryBuilder<ServiceDbModel, ServiceDbModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension ServiceDbModelQueryProperty
    on QueryBuilder<ServiceDbModel, ServiceDbModel, QQueryProperty> {
  QueryBuilder<ServiceDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ServiceDbModel, String?, QQueryOperations>
      detailDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'detailDescription');
    });
  }

  QueryBuilder<ServiceDbModel, bool, QQueryOperations> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCompleted');
    });
  }

  QueryBuilder<ServiceDbModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
