package com.google.common.collect;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ImmutableTable<R, C, V> extends AbstractTable<R, C, V> implements Serializable {
    @Override // com.google.common.collect.Table
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractTable
    public abstract ImmutableSet<Table.Cell<R, C, V>> createCellSet();

    abstract SerializedForm createSerializedForm();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractTable
    public abstract ImmutableCollection<V> createValues();

    @Override // com.google.common.collect.Table
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return column((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@CheckForNull Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@CheckForNull Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    @CheckForNull
    public /* bridge */ /* synthetic */ Object get(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.AbstractTable
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) SparseImmutableTable.EMPTY;
    }

    public static <R, C, V> ImmutableTable<R, C, V> of(R r, C c, V v) {
        return new SingletonImmutableTable(r, c, v);
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(Table<? extends R, ? extends C, ? extends V> table) {
        if (table instanceof ImmutableTable) {
            return (ImmutableTable) table;
        }
        return copyOf(table.cellSet());
    }

    static <R, C, V> ImmutableTable<R, C, V> copyOf(Iterable<? extends Table.Cell<? extends R, ? extends C, ? extends V>> iterable) {
        Builder builder = builder();
        Iterator<? extends Table.Cell<? extends R, ? extends C, ? extends V>> it = iterable.iterator();
        while (it.hasNext()) {
            builder.put(it.next());
        }
        return builder.build();
    }

    public static <R, C, V> Builder<R, C, V> builder() {
        return new Builder<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> Table.Cell<R, C, V> cellOf(R r, C c, V v) {
        return Tables.immutableCell(Preconditions.checkNotNull(r, "rowKey"), Preconditions.checkNotNull(c, "columnKey"), Preconditions.checkNotNull(v, "value"));
    }

    @DoNotMock
    /* loaded from: classes3.dex */
    public static final class Builder<R, C, V> {
        private final List<Table.Cell<R, C, V>> cells = Lists.newArrayList();

        @CheckForNull
        private Comparator<? super C> columnComparator;

        @CheckForNull
        private Comparator<? super R> rowComparator;

        public Builder<R, C, V> orderRowsBy(Comparator<? super R> comparator) {
            this.rowComparator = (Comparator) Preconditions.checkNotNull(comparator, "rowComparator");
            return this;
        }

        public Builder<R, C, V> orderColumnsBy(Comparator<? super C> comparator) {
            this.columnComparator = (Comparator) Preconditions.checkNotNull(comparator, "columnComparator");
            return this;
        }

        public Builder<R, C, V> put(R r, C c, V v) {
            this.cells.add(ImmutableTable.cellOf(r, c, v));
            return this;
        }

        public Builder<R, C, V> put(Table.Cell<? extends R, ? extends C, ? extends V> cell) {
            if (cell instanceof Tables.ImmutableCell) {
                Preconditions.checkNotNull(cell.getRowKey(), "row");
                Preconditions.checkNotNull(cell.getColumnKey(), "column");
                Preconditions.checkNotNull(cell.getValue(), "value");
                this.cells.add(cell);
            } else {
                put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            }
            return this;
        }

        public Builder<R, C, V> putAll(Table<? extends R, ? extends C, ? extends V> table) {
            Iterator<Table.Cell<? extends R, ? extends C, ? extends V>> it = table.cellSet().iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        Builder<R, C, V> combine(Builder<R, C, V> builder) {
            this.cells.addAll(builder.cells);
            return this;
        }

        public ImmutableTable<R, C, V> build() {
            return buildOrThrow();
        }

        public ImmutableTable<R, C, V> buildOrThrow() {
            int size = this.cells.size();
            if (size == 0) {
                return ImmutableTable.of();
            }
            if (size == 1) {
                return new SingletonImmutableTable((Table.Cell) Iterables.getOnlyElement(this.cells));
            }
            return RegularImmutableTable.forCells(this.cells, this.rowComparator, this.columnComparator);
        }
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public ImmutableSet<Table.Cell<R, C, V>> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractTable
    public final UnmodifiableIterator<Table.Cell<R, C, V>> cellIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    @Override // com.google.common.collect.AbstractTable
    final Iterator<V> valuesIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Table
    public ImmutableMap<R, V> column(C c) {
        Preconditions.checkNotNull(c, "columnKey");
        return (ImmutableMap) MoreObjects.firstNonNull((ImmutableMap) columnMap().get(c), ImmutableMap.of());
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public ImmutableMap<C, V> row(R r) {
        Preconditions.checkNotNull(r, "rowKey");
        return (ImmutableMap) MoreObjects.firstNonNull((ImmutableMap) rowMap().get(r), ImmutableMap.of());
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    @CheckForNull
    @Deprecated
    public final V put(R r, C c, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    @Deprecated
    public final void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    @CheckForNull
    @Deprecated
    public final V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* loaded from: classes3.dex */
    static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final int[] cellColumnIndices;
        private final int[] cellRowIndices;
        private final Object[] cellValues;
        private final Object[] columnKeys;
        private final Object[] rowKeys;

        private SerializedForm(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.rowKeys = objArr;
            this.columnKeys = objArr2;
            this.cellValues = objArr3;
            this.cellRowIndices = iArr;
            this.cellColumnIndices = iArr2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static SerializedForm create(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new SerializedForm(immutableTable.rowKeySet().toArray(), immutableTable.columnKeySet().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        Object readResolve() {
            Object[] objArr = this.cellValues;
            if (objArr.length == 0) {
                return ImmutableTable.of();
            }
            int i = 0;
            if (objArr.length == 1) {
                return ImmutableTable.of(this.rowKeys[0], this.columnKeys[0], objArr[0]);
            }
            ImmutableList.Builder builder = new ImmutableList.Builder(this.cellValues.length);
            while (true) {
                Object[] objArr2 = this.cellValues;
                if (i < objArr2.length) {
                    builder.add((ImmutableList.Builder) ImmutableTable.cellOf(this.rowKeys[this.cellRowIndices[i]], this.columnKeys[this.cellColumnIndices[i]], objArr2[i]));
                    i++;
                } else {
                    return RegularImmutableTable.forOrderedComponents(builder.build(), ImmutableSet.copyOf(this.rowKeys), ImmutableSet.copyOf(this.columnKeys));
                }
            }
        }
    }

    final Object writeReplace() {
        return createSerializedForm();
    }
}
