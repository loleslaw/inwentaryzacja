// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Item extends DataClass implements Insertable<Item> {
  final int seq;
  final int id;
  final String name;
  final String barcode;
  final int onStock;
  final int counted;
  final bool scanned;
  final bool isDeleted;
  Item(
      {@required this.seq,
      @required this.id,
      @required this.name,
      @required this.barcode,
      @required this.onStock,
      @required this.counted,
      @required this.scanned,
      @required this.isDeleted});
  factory Item.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Item(
      seq: intType.mapFromDatabaseResponse(data['${effectivePrefix}seq']),
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      barcode:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}barcode']),
      onStock:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}on_stock']),
      counted:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}counted']),
      scanned:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}scanned']),
      isDeleted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
    );
  }
  factory Item.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Item(
      seq: serializer.fromJson<int>(json['seq']),
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      barcode: serializer.fromJson<String>(json['barcode']),
      onStock: serializer.fromJson<int>(json['onStock']),
      counted: serializer.fromJson<int>(json['counted']),
      scanned: serializer.fromJson<bool>(json['scanned']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'seq': serializer.toJson<int>(seq),
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'barcode': serializer.toJson<String>(barcode),
      'onStock': serializer.toJson<int>(onStock),
      'counted': serializer.toJson<int>(counted),
      'scanned': serializer.toJson<bool>(scanned),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  @override
  ItemsCompanion createCompanion(bool nullToAbsent) {
    return ItemsCompanion(
      seq: seq == null && nullToAbsent ? const Value.absent() : Value(seq),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      barcode: barcode == null && nullToAbsent
          ? const Value.absent()
          : Value(barcode),
      onStock: onStock == null && nullToAbsent
          ? const Value.absent()
          : Value(onStock),
      counted: counted == null && nullToAbsent
          ? const Value.absent()
          : Value(counted),
      scanned: scanned == null && nullToAbsent
          ? const Value.absent()
          : Value(scanned),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
    );
  }

  Item copyWith(
          {int seq,
          int id,
          String name,
          String barcode,
          int onStock,
          int counted,
          bool scanned,
          bool isDeleted}) =>
      Item(
        seq: seq ?? this.seq,
        id: id ?? this.id,
        name: name ?? this.name,
        barcode: barcode ?? this.barcode,
        onStock: onStock ?? this.onStock,
        counted: counted ?? this.counted,
        scanned: scanned ?? this.scanned,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('seq: $seq, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('barcode: $barcode, ')
          ..write('onStock: $onStock, ')
          ..write('counted: $counted, ')
          ..write('scanned: $scanned, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      seq.hashCode,
      $mrjc(
          id.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  barcode.hashCode,
                  $mrjc(
                      onStock.hashCode,
                      $mrjc(counted.hashCode,
                          $mrjc(scanned.hashCode, isDeleted.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Item &&
          other.seq == this.seq &&
          other.id == this.id &&
          other.name == this.name &&
          other.barcode == this.barcode &&
          other.onStock == this.onStock &&
          other.counted == this.counted &&
          other.scanned == this.scanned &&
          other.isDeleted == this.isDeleted);
}

class ItemsCompanion extends UpdateCompanion<Item> {
  final Value<int> seq;
  final Value<int> id;
  final Value<String> name;
  final Value<String> barcode;
  final Value<int> onStock;
  final Value<int> counted;
  final Value<bool> scanned;
  final Value<bool> isDeleted;
  const ItemsCompanion({
    this.seq = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.barcode = const Value.absent(),
    this.onStock = const Value.absent(),
    this.counted = const Value.absent(),
    this.scanned = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  ItemsCompanion.insert({
    this.seq = const Value.absent(),
    @required int id,
    @required String name,
    @required String barcode,
    @required int onStock,
    @required int counted,
    this.scanned = const Value.absent(),
    this.isDeleted = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        barcode = Value(barcode),
        onStock = Value(onStock),
        counted = Value(counted);
  ItemsCompanion copyWith(
      {Value<int> seq,
      Value<int> id,
      Value<String> name,
      Value<String> barcode,
      Value<int> onStock,
      Value<int> counted,
      Value<bool> scanned,
      Value<bool> isDeleted}) {
    return ItemsCompanion(
      seq: seq ?? this.seq,
      id: id ?? this.id,
      name: name ?? this.name,
      barcode: barcode ?? this.barcode,
      onStock: onStock ?? this.onStock,
      counted: counted ?? this.counted,
      scanned: scanned ?? this.scanned,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }
}

class $ItemsTable extends Items with TableInfo<$ItemsTable, Item> {
  final GeneratedDatabase _db;
  final String _alias;
  $ItemsTable(this._db, [this._alias]);
  final VerificationMeta _seqMeta = const VerificationMeta('seq');
  GeneratedIntColumn _seq;
  @override
  GeneratedIntColumn get seq => _seq ??= _constructSeq();
  GeneratedIntColumn _constructSeq() {
    return GeneratedIntColumn('seq', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 1024);
  }

  final VerificationMeta _barcodeMeta = const VerificationMeta('barcode');
  GeneratedTextColumn _barcode;
  @override
  GeneratedTextColumn get barcode => _barcode ??= _constructBarcode();
  GeneratedTextColumn _constructBarcode() {
    return GeneratedTextColumn('barcode', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _onStockMeta = const VerificationMeta('onStock');
  GeneratedIntColumn _onStock;
  @override
  GeneratedIntColumn get onStock => _onStock ??= _constructOnStock();
  GeneratedIntColumn _constructOnStock() {
    return GeneratedIntColumn(
      'on_stock',
      $tableName,
      false,
    );
  }

  final VerificationMeta _countedMeta = const VerificationMeta('counted');
  GeneratedIntColumn _counted;
  @override
  GeneratedIntColumn get counted => _counted ??= _constructCounted();
  GeneratedIntColumn _constructCounted() {
    return GeneratedIntColumn(
      'counted',
      $tableName,
      false,
    );
  }

  final VerificationMeta _scannedMeta = const VerificationMeta('scanned');
  GeneratedBoolColumn _scanned;
  @override
  GeneratedBoolColumn get scanned => _scanned ??= _constructScanned();
  GeneratedBoolColumn _constructScanned() {
    return GeneratedBoolColumn('scanned', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  GeneratedBoolColumn _isDeleted;
  @override
  GeneratedBoolColumn get isDeleted => _isDeleted ??= _constructIsDeleted();
  GeneratedBoolColumn _constructIsDeleted() {
    return GeneratedBoolColumn('is_deleted', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [seq, id, name, barcode, onStock, counted, scanned, isDeleted];
  @override
  $ItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'items';
  @override
  final String actualTableName = 'items';
  @override
  VerificationContext validateIntegrity(ItemsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.seq.present) {
      context.handle(_seqMeta, seq.isAcceptableValue(d.seq.value, _seqMeta));
    } else if (seq.isRequired && isInserting) {
      context.missing(_seqMeta);
    }
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.barcode.present) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableValue(d.barcode.value, _barcodeMeta));
    } else if (barcode.isRequired && isInserting) {
      context.missing(_barcodeMeta);
    }
    if (d.onStock.present) {
      context.handle(_onStockMeta,
          onStock.isAcceptableValue(d.onStock.value, _onStockMeta));
    } else if (onStock.isRequired && isInserting) {
      context.missing(_onStockMeta);
    }
    if (d.counted.present) {
      context.handle(_countedMeta,
          counted.isAcceptableValue(d.counted.value, _countedMeta));
    } else if (counted.isRequired && isInserting) {
      context.missing(_countedMeta);
    }
    if (d.scanned.present) {
      context.handle(_scannedMeta,
          scanned.isAcceptableValue(d.scanned.value, _scannedMeta));
    } else if (scanned.isRequired && isInserting) {
      context.missing(_scannedMeta);
    }
    if (d.isDeleted.present) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableValue(d.isDeleted.value, _isDeletedMeta));
    } else if (isDeleted.isRequired && isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {seq};
  @override
  Item map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Item.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ItemsCompanion d) {
    final map = <String, Variable>{};
    if (d.seq.present) {
      map['seq'] = Variable<int, IntType>(d.seq.value);
    }
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.barcode.present) {
      map['barcode'] = Variable<String, StringType>(d.barcode.value);
    }
    if (d.onStock.present) {
      map['on_stock'] = Variable<int, IntType>(d.onStock.value);
    }
    if (d.counted.present) {
      map['counted'] = Variable<int, IntType>(d.counted.value);
    }
    if (d.scanned.present) {
      map['scanned'] = Variable<bool, BoolType>(d.scanned.value);
    }
    if (d.isDeleted.present) {
      map['is_deleted'] = Variable<bool, BoolType>(d.isDeleted.value);
    }
    return map;
  }

  @override
  $ItemsTable createAlias(String alias) {
    return $ItemsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ItemsTable _items;
  $ItemsTable get items => _items ??= $ItemsTable(this);
  @override
  List<TableInfo> get allTables => [items];
}
