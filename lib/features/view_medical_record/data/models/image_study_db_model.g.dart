// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_study_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetImageStudyDbModelCollection on Isar {
  IsarCollection<ImageStudyDbModel> get imageStudyDbModels => this.collection();
}

const ImageStudyDbModelSchema = CollectionSchema(
  name: r'ImageStudyDbModel',
  id: 8981786957955945833,
  properties: {
    r'endpoint': PropertySchema(
      id: 0,
      name: r'endpoint',
      type: IsarType.string,
    ),
    r'receivedTime': PropertySchema(
      id: 1,
      name: r'receivedTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _imageStudyDbModelEstimateSize,
  serialize: _imageStudyDbModelSerialize,
  deserialize: _imageStudyDbModelDeserialize,
  deserializeProp: _imageStudyDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _imageStudyDbModelGetId,
  getLinks: _imageStudyDbModelGetLinks,
  attach: _imageStudyDbModelAttach,
  version: '3.1.0+1',
);

int _imageStudyDbModelEstimateSize(
  ImageStudyDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.endpoint.length * 3;
  return bytesCount;
}

void _imageStudyDbModelSerialize(
  ImageStudyDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.endpoint);
  writer.writeDateTime(offsets[1], object.receivedTime);
}

ImageStudyDbModel _imageStudyDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ImageStudyDbModel(
    endpoint: reader.readString(offsets[0]),
    id: id,
    receivedTime: reader.readDateTimeOrNull(offsets[1]),
  );
  return object;
}

P _imageStudyDbModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _imageStudyDbModelGetId(ImageStudyDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _imageStudyDbModelGetLinks(
    ImageStudyDbModel object) {
  return [];
}

void _imageStudyDbModelAttach(
    IsarCollection<dynamic> col, Id id, ImageStudyDbModel object) {
  object.id = id;
}

extension ImageStudyDbModelQueryWhereSort
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QWhere> {
  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ImageStudyDbModelQueryWhere
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QWhereClause> {
  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterWhereClause>
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

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterWhereClause>
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

extension ImageStudyDbModelQueryFilter
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QFilterCondition> {
  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endpoint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endpoint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endpoint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endpoint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'endpoint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'endpoint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'endpoint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'endpoint',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endpoint',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      endpointIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'endpoint',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      receivedTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'receivedTime',
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      receivedTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'receivedTime',
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      receivedTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'receivedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      receivedTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'receivedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      receivedTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'receivedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterFilterCondition>
      receivedTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'receivedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ImageStudyDbModelQueryObject
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QFilterCondition> {}

extension ImageStudyDbModelQueryLinks
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QFilterCondition> {}

extension ImageStudyDbModelQuerySortBy
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QSortBy> {
  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      sortByEndpoint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endpoint', Sort.asc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      sortByEndpointDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endpoint', Sort.desc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      sortByReceivedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedTime', Sort.asc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      sortByReceivedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedTime', Sort.desc);
    });
  }
}

extension ImageStudyDbModelQuerySortThenBy
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QSortThenBy> {
  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      thenByEndpoint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endpoint', Sort.asc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      thenByEndpointDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endpoint', Sort.desc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      thenByReceivedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedTime', Sort.asc);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QAfterSortBy>
      thenByReceivedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedTime', Sort.desc);
    });
  }
}

extension ImageStudyDbModelQueryWhereDistinct
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QDistinct> {
  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QDistinct>
      distinctByEndpoint({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endpoint', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QDistinct>
      distinctByReceivedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'receivedTime');
    });
  }
}

extension ImageStudyDbModelQueryProperty
    on QueryBuilder<ImageStudyDbModel, ImageStudyDbModel, QQueryProperty> {
  QueryBuilder<ImageStudyDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ImageStudyDbModel, String, QQueryOperations> endpointProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endpoint');
    });
  }

  QueryBuilder<ImageStudyDbModel, DateTime?, QQueryOperations>
      receivedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'receivedTime');
    });
  }
}
