// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInvoiceDbModelCollection on Isar {
  IsarCollection<InvoiceDbModel> get invoiceDbModels => this.collection();
}

const InvoiceDbModelSchema = CollectionSchema(
  name: r'InvoiceDbModel',
  id: -3824178908423095414,
  properties: {
    r'createdTime': PropertySchema(
      id: 0,
      name: r'createdTime',
      type: IsarType.dateTime,
    ),
    r'currency': PropertySchema(
      id: 1,
      name: r'currency',
      type: IsarType.byte,
      enumMap: _InvoiceDbModelcurrencyEnumValueMap,
    ),
    r'status': PropertySchema(
      id: 2,
      name: r'status',
      type: IsarType.byte,
      enumMap: _InvoiceDbModelstatusEnumValueMap,
    )
  },
  estimateSize: _invoiceDbModelEstimateSize,
  serialize: _invoiceDbModelSerialize,
  deserialize: _invoiceDbModelDeserialize,
  deserializeProp: _invoiceDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'serviceInvoices': LinkSchema(
      id: -7864042263804389478,
      name: r'serviceInvoices',
      target: r'ServiceInvoiceDbModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _invoiceDbModelGetId,
  getLinks: _invoiceDbModelGetLinks,
  attach: _invoiceDbModelAttach,
  version: '3.1.0+1',
);

int _invoiceDbModelEstimateSize(
  InvoiceDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _invoiceDbModelSerialize(
  InvoiceDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdTime);
  writer.writeByte(offsets[1], object.currency.index);
  writer.writeByte(offsets[2], object.status.index);
}

InvoiceDbModel _invoiceDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InvoiceDbModel(
    createdTime: reader.readDateTimeOrNull(offsets[0]),
    currency: _InvoiceDbModelcurrencyValueEnumMap[
            reader.readByteOrNull(offsets[1])] ??
        Currencies.VND,
    id: id,
    status:
        _InvoiceDbModelstatusValueEnumMap[reader.readByteOrNull(offsets[2])] ??
            InvoiceStatus.draft,
  );
  return object;
}

P _invoiceDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (_InvoiceDbModelcurrencyValueEnumMap[
              reader.readByteOrNull(offset)] ??
          Currencies.VND) as P;
    case 2:
      return (_InvoiceDbModelstatusValueEnumMap[
              reader.readByteOrNull(offset)] ??
          InvoiceStatus.draft) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _InvoiceDbModelcurrencyEnumValueMap = {
  'VND': 0,
  'USD': 1,
};
const _InvoiceDbModelcurrencyValueEnumMap = {
  0: Currencies.VND,
  1: Currencies.USD,
};
const _InvoiceDbModelstatusEnumValueMap = {
  'draft': 0,
  'issued': 1,
  'balanced': 2,
  'cancelled': 3,
  'enteredInError': 4,
};
const _InvoiceDbModelstatusValueEnumMap = {
  0: InvoiceStatus.draft,
  1: InvoiceStatus.issued,
  2: InvoiceStatus.balanced,
  3: InvoiceStatus.cancelled,
  4: InvoiceStatus.enteredInError,
};

Id _invoiceDbModelGetId(InvoiceDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _invoiceDbModelGetLinks(InvoiceDbModel object) {
  return [object.serviceInvoices];
}

void _invoiceDbModelAttach(
    IsarCollection<dynamic> col, Id id, InvoiceDbModel object) {
  object.id = id;
  object.serviceInvoices.attach(col,
      col.isar.collection<ServiceInvoiceDbModel>(), r'serviceInvoices', id);
}

extension InvoiceDbModelQueryWhereSort
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QWhere> {
  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InvoiceDbModelQueryWhere
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QWhereClause> {
  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterWhereClause> idBetween(
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

extension InvoiceDbModelQueryFilter
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QFilterCondition> {
  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      createdTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdTime',
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      createdTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdTime',
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      createdTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdTime',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      createdTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdTime',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      createdTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdTime',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      createdTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      currencyEqualTo(Currencies value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      currencyGreaterThan(
    Currencies value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currency',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      currencyLessThan(
    Currencies value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currency',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      currencyBetween(
    Currencies lower,
    Currencies upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
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

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      statusEqualTo(InvoiceStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      statusGreaterThan(
    InvoiceStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      statusLessThan(
    InvoiceStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      statusBetween(
    InvoiceStatus lower,
    InvoiceStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InvoiceDbModelQueryObject
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QFilterCondition> {}

extension InvoiceDbModelQueryLinks
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QFilterCondition> {
  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      serviceInvoices(FilterQuery<ServiceInvoiceDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'serviceInvoices');
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      serviceInvoicesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceInvoices', length, true, length, true);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      serviceInvoicesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceInvoices', 0, true, 0, true);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      serviceInvoicesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceInvoices', 0, false, 999999, true);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      serviceInvoicesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'serviceInvoices', 0, true, length, include);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      serviceInvoicesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'serviceInvoices', length, include, 999999, true);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterFilterCondition>
      serviceInvoicesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'serviceInvoices', lower, includeLower, upper, includeUpper);
    });
  }
}

extension InvoiceDbModelQuerySortBy
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QSortBy> {
  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      sortByCreatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.asc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      sortByCreatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.desc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy> sortByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      sortByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension InvoiceDbModelQuerySortThenBy
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QSortThenBy> {
  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      thenByCreatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.asc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      thenByCreatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.desc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy> thenByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      thenByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension InvoiceDbModelQueryWhereDistinct
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QDistinct> {
  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QDistinct>
      distinctByCreatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdTime');
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QDistinct> distinctByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currency');
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceDbModel, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }
}

extension InvoiceDbModelQueryProperty
    on QueryBuilder<InvoiceDbModel, InvoiceDbModel, QQueryProperty> {
  QueryBuilder<InvoiceDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InvoiceDbModel, DateTime?, QQueryOperations>
      createdTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdTime');
    });
  }

  QueryBuilder<InvoiceDbModel, Currencies, QQueryOperations>
      currencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currency');
    });
  }

  QueryBuilder<InvoiceDbModel, InvoiceStatus, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
