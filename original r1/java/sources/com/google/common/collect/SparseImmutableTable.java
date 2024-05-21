package com.google.common.collect;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.Immutable;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
@Immutable(containerOf = {"R", "C", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class SparseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    static final ImmutableTable<Object, Object, Object> EMPTY = new SparseImmutableTable(ImmutableList.of(), ImmutableSet.of(), ImmutableSet.of());
    private final int[] cellColumnInRowIndices;
    private final int[] cellRowIndices;
    private final ImmutableMap<C, ImmutableMap<R, V>> columnMap;
    private final ImmutableMap<R, ImmutableMap<C, V>> rowMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public SparseImmutableTable(ImmutableList<Table.Cell<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        ImmutableMap indexMap = Maps.indexMap(immutableSet);
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        UnmodifiableIterator<R> it = immutableSet.iterator();
        while (it.hasNext()) {
            newLinkedHashMap.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap newLinkedHashMap2 = Maps.newLinkedHashMap();
        UnmodifiableIterator<C> it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            newLinkedHashMap2.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            Table.Cell<R, C, V> cell = immutableList.get(i);
            R rowKey = cell.getRowKey();
            C columnKey = cell.getColumnKey();
            V value = cell.getValue();
            iArr[i] = ((Integer) Objects.requireNonNull((Integer) indexMap.get(rowKey))).intValue();
            Map map = (Map) Objects.requireNonNull((Map) newLinkedHashMap.get(rowKey));
            iArr2[i] = map.size();
            checkNoDuplicate(rowKey, columnKey, map.put(columnKey, value), value);
            ((Map) Objects.requireNonNull((Map) newLinkedHashMap2.get(columnKey))).put(rowKey, value);
        }
        this.cellRowIndices = iArr;
        this.cellColumnInRowIndices = iArr2;
        ImmutableMap.Builder builder = new ImmutableMap.Builder(newLinkedHashMap.size());
        for (Map.Entry entry : newLinkedHashMap.entrySet()) {
            builder.put(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
        }
        this.rowMap = builder.buildOrThrow();
        ImmutableMap.Builder builder2 = new ImmutableMap.Builder(newLinkedHashMap2.size());
        for (Map.Entry entry2 : newLinkedHashMap2.entrySet()) {
            builder2.put(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
        }
        this.columnMap = builder2.buildOrThrow();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.columnMap);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.rowMap);
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.cellRowIndices.length;
    }

    @Override // com.google.common.collect.RegularImmutableTable
    Table.Cell<R, C, V> getCell(int i) {
        Map.Entry<R, ImmutableMap<C, V>> entry = this.rowMap.entrySet().asList().get(this.cellRowIndices[i]);
        ImmutableMap<C, V> value = entry.getValue();
        Map.Entry<C, V> entry2 = value.entrySet().asList().get(this.cellColumnInRowIndices[i]);
        return cellOf(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.RegularImmutableTable
    V getValue(int i) {
        ImmutableMap<C, V> immutableMap = this.rowMap.values().asList().get(this.cellRowIndices[i]);
        return immutableMap.values().asList().get(this.cellColumnInRowIndices[i]);
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.SerializedForm createSerializedForm() {
        ImmutableMap indexMap = Maps.indexMap(columnKeySet());
        int[] iArr = new int[cellSet().size()];
        UnmodifiableIterator<Table.Cell<R, C, V>> it = cellSet().iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Integer) Objects.requireNonNull((Integer) indexMap.get(it.next().getColumnKey()))).intValue();
            i++;
        }
        return ImmutableTable.SerializedForm.create(this, this.cellRowIndices, iArr);
    }
}
