// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_report_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetImageReportDbModelCollection on Isar {
  IsarCollection<ImageReportDbModel> get imageReportDbModels =>
      this.collection();
}

const ImageReportDbModelSchema = CollectionSchema(
  name: r'ImageReportDbModel',
  id: -3226621981470507366,
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
    r'focus': PropertySchema(
      id: 2,
      name: r'focus',
      type: IsarType.string,
    ),
    r'interpretation': PropertySchema(
      id: 3,
      name: r'interpretation',
      type: IsarType.string,
    ),
    r'method': PropertySchema(
      id: 4,
      name: r'method',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 5,
      name: r'status',
      type: IsarType.string,
    )
  },
  estimateSize: _imageReportDbModelEstimateSize,
  serialize: _imageReportDbModelSerialize,
  deserialize: _imageReportDbModelDeserialize,
  deserializeProp: _imageReportDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'service': LinkSchema(
      id: -6746169367428269879,
      name: r'service',
      target: r'ServiceDbModel',
      single: true,
    ),
    r'requester': LinkSchema(
      id: -2512107205167157033,
      name: r'requester',
      target: r'PhysicianDbModel',
      single: true,
    ),
    r'performer': LinkSchema(
      id: -3318086066849122720,
      name: r'performer',
      target: r'PhysicianDbModel',
      single: true,
    ),
    r'assessmentResults': LinkSchema(
      id: 8029893845094799655,
      name: r'assessmentResults',
      target: r'AssessmentResultDbModel',
      single: false,
    ),
    r'imageStudies': LinkSchema(
      id: -6930985165898993229,
      name: r'imageStudies',
      target: r'ImageStudyDbModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _imageReportDbModelGetId,
  getLinks: _imageReportDbModelGetLinks,
  attach: _imageReportDbModelAttach,
  version: '3.1.0+1',
);

int _imageReportDbModelEstimateSize(
  ImageReportDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.focus.length * 3;
  bytesCount += 3 + object.interpretation.length * 3;
  bytesCount += 3 + object.method.length * 3;
  bytesCount += 3 + object.status.length * 3;
  return bytesCount;
}

void _imageReportDbModelSerialize(
  ImageReportDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category);
  writer.writeDateTime(offsets[1], object.effectiveTime);
  writer.writeString(offsets[2], object.focus);
  writer.writeString(offsets[3], object.interpretation);
  writer.writeString(offsets[4], object.method);
  writer.writeString(offsets[5], object.status);
}

ImageReportDbModel _imageReportDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ImageReportDbModel(
    category: reader.readString(offsets[0]),
    effectiveTime: reader.readDateTimeOrNull(offsets[1]),
    focus: reader.readString(offsets[2]),
    id: id,
    interpretation: reader.readString(offsets[3]),
    method: reader.readString(offsets[4]),
    status: reader.readString(offsets[5]),
  );
  return object;
}

P _imageReportDbModelDeserializeProp<P>(
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
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _imageReportDbModelGetId(ImageReportDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _imageReportDbModelGetLinks(
    ImageReportDbModel object) {
  return [
    object.service,
    object.requester,
    object.performer,
    object.assessmentResults,
    object.imageStudies
  ];
}

void _imageReportDbModelAttach(
    IsarCollection<dynamic> col, Id id, ImageReportDbModel object) {
  object.id = id;
  object.service
      .attach(col, col.isar.collection<ServiceDbModel>(), r'service', id);
  object.requester
      .attach(col, col.isar.collection<PhysicianDbModel>(), r'requester', id);
  object.performer
      .attach(col, col.isar.collection<PhysicianDbModel>(), r'performer', id);
  object.assessmentResults.attach(col,
      col.isar.collection<AssessmentResultDbModel>(), r'assessmentResults', id);
  object.imageStudies.attach(
      col, col.isar.collection<ImageStudyDbModel>(), r'imageStudies', id);
}

extension ImageReportDbModelQueryWhereSort
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QWhere> {
  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ImageReportDbModelQueryWhere
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QWhereClause> {
  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterWhereClause>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterWhereClause>
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

extension ImageReportDbModelQueryFilter
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QFilterCondition> {
  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryEqualTo(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryGreaterThan(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryLessThan(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryBetween(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryStartsWith(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryEndsWith(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      effectiveTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'effectiveTime',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      effectiveTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'effectiveTime',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      effectiveTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'effectiveTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      effectiveTimeGreaterThan(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      effectiveTimeLessThan(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      effectiveTimeBetween(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'focus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'focus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'focus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'focus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'focus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'focus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'focus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'focus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'focus',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      focusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'focus',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'interpretation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'interpretation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'interpretation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'interpretation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'interpretation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'interpretation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'interpretation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'interpretation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'interpretation',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      interpretationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'interpretation',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodEqualTo(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodGreaterThan(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodLessThan(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodBetween(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodStartsWith(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodEndsWith(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'method',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      methodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension ImageReportDbModelQueryObject
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QFilterCondition> {}

extension ImageReportDbModelQueryLinks
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QFilterCondition> {
  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      service(FilterQuery<ServiceDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'service');
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      serviceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'service', 0, true, 0, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      requester(FilterQuery<PhysicianDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'requester');
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      requesterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'requester', 0, true, 0, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      performer(FilterQuery<PhysicianDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'performer');
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      performerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'performer', 0, true, 0, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      assessmentResults(FilterQuery<AssessmentResultDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'assessmentResults');
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      assessmentResultsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', length, true, length, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      assessmentResultsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, true, 0, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      assessmentResultsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, false, 999999, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      assessmentResultsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assessmentResults', 0, true, length, include);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      assessmentResultsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'assessmentResults', length, include, 999999, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      assessmentResultsLengthBetween(
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

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      imageStudies(FilterQuery<ImageStudyDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'imageStudies');
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      imageStudiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'imageStudies', length, true, length, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      imageStudiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'imageStudies', 0, true, 0, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      imageStudiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'imageStudies', 0, false, 999999, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      imageStudiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'imageStudies', 0, true, length, include);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      imageStudiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'imageStudies', length, include, 999999, true);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterFilterCondition>
      imageStudiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'imageStudies', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ImageReportDbModelQuerySortBy
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QSortBy> {
  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByEffectiveTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByFocus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focus', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByFocusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focus', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByInterpretation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interpretation', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByInterpretationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interpretation', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension ImageReportDbModelQuerySortThenBy
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QSortThenBy> {
  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByEffectiveTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'effectiveTime', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByFocus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focus', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByFocusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focus', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByInterpretation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interpretation', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByInterpretationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interpretation', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension ImageReportDbModelQueryWhereDistinct
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QDistinct> {
  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QDistinct>
      distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QDistinct>
      distinctByEffectiveTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'effectiveTime');
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QDistinct>
      distinctByFocus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'focus', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QDistinct>
      distinctByInterpretation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'interpretation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QDistinct>
      distinctByMethod({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'method', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageReportDbModel, ImageReportDbModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension ImageReportDbModelQueryProperty
    on QueryBuilder<ImageReportDbModel, ImageReportDbModel, QQueryProperty> {
  QueryBuilder<ImageReportDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ImageReportDbModel, String, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<ImageReportDbModel, DateTime?, QQueryOperations>
      effectiveTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'effectiveTime');
    });
  }

  QueryBuilder<ImageReportDbModel, String, QQueryOperations> focusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'focus');
    });
  }

  QueryBuilder<ImageReportDbModel, String, QQueryOperations>
      interpretationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'interpretation');
    });
  }

  QueryBuilder<ImageReportDbModel, String, QQueryOperations> methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'method');
    });
  }

  QueryBuilder<ImageReportDbModel, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
