// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_invoice_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetServiceInvoiceDbModelCollection on Isar {
  IsarCollection<ServiceInvoiceDbModel> get serviceInvoiceDbModels =>
      this.collection();
}

const ServiceInvoiceDbModelSchema = CollectionSchema(
  name: r'ServiceInvoiceDbModel',
  id: 8280770309811258386,
  properties: {
    r'price': PropertySchema(
      id: 0,
      name: r'price',
      type: IsarType.double,
    )
  },
  estimateSize: _serviceInvoiceDbModelEstimateSize,
  serialize: _serviceInvoiceDbModelSerialize,
  deserialize: _serviceInvoiceDbModelDeserialize,
  deserializeProp: _serviceInvoiceDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'service': LinkSchema(
      id: -551435035899811187,
      name: r'service',
      target: r'ServiceDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _serviceInvoiceDbModelGetId,
  getLinks: _serviceInvoiceDbModelGetLinks,
  attach: _serviceInvoiceDbModelAttach,
  version: '3.1.0+1',
);

int _serviceInvoiceDbModelEstimateSize(
  ServiceInvoiceDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _serviceInvoiceDbModelSerialize(
  ServiceInvoiceDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.price);
}

ServiceInvoiceDbModel _serviceInvoiceDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ServiceInvoiceDbModel(
    id: id,
    price: reader.readDoubleOrNull(offsets[0]) ?? 0.0,
  );
  return object;
}

P _serviceInvoiceDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _serviceInvoiceDbModelGetId(ServiceInvoiceDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _serviceInvoiceDbModelGetLinks(
    ServiceInvoiceDbModel object) {
  return [object.service];
}

void _serviceInvoiceDbModelAttach(
    IsarCollection<dynamic> col, Id id, ServiceInvoiceDbModel object) {
  object.id = id;
  object.service
      .attach(col, col.isar.collection<ServiceDbModel>(), r'service', id);
}

extension ServiceInvoiceDbModelQueryWhereSort
    on QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QWhere> {
  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ServiceInvoiceDbModelQueryWhere on QueryBuilder<ServiceInvoiceDbModel,
    ServiceInvoiceDbModel, QWhereClause> {
  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterWhereClause>
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

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterWhereClause>
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

extension ServiceInvoiceDbModelQueryFilter on QueryBuilder<
    ServiceInvoiceDbModel, ServiceInvoiceDbModel, QFilterCondition> {
  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
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

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
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

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
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

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
      QAfterFilterCondition> priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
      QAfterFilterCondition> priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
      QAfterFilterCondition> priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
      QAfterFilterCondition> priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ServiceInvoiceDbModelQueryObject on QueryBuilder<
    ServiceInvoiceDbModel, ServiceInvoiceDbModel, QFilterCondition> {}

extension ServiceInvoiceDbModelQueryLinks on QueryBuilder<ServiceInvoiceDbModel,
    ServiceInvoiceDbModel, QFilterCondition> {
  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
      QAfterFilterCondition> service(FilterQuery<ServiceDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'service');
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel,
      QAfterFilterCondition> serviceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'service', 0, true, 0, true);
    });
  }
}

extension ServiceInvoiceDbModelQuerySortBy
    on QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QSortBy> {
  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }
}

extension ServiceInvoiceDbModelQuerySortThenBy
    on QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QSortThenBy> {
  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }
}

extension ServiceInvoiceDbModelQueryWhereDistinct
    on QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QDistinct> {
  QueryBuilder<ServiceInvoiceDbModel, ServiceInvoiceDbModel, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }
}

extension ServiceInvoiceDbModelQueryProperty on QueryBuilder<
    ServiceInvoiceDbModel, ServiceInvoiceDbModel, QQueryProperty> {
  QueryBuilder<ServiceInvoiceDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ServiceInvoiceDbModel, double, QQueryOperations>
      priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }
}
