package com.google.common.collect;

import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface RowSortedTable<R, C, V> extends Table<R, C, V> {
    @Override // com.google.common.collect.Table
    SortedSet<R> rowKeySet();

    @Override // com.google.common.collect.Table
    SortedMap<R, Map<C, V>> rowMap();
}
