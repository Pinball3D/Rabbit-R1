package com.google.common.collect;

import com.google.common.collect.MapDifference;
import java.util.SortedMap;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface SortedMapDifference<K, V> extends MapDifference<K, V> {
    @Override // com.google.common.collect.MapDifference
    SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering();

    @Override // com.google.common.collect.MapDifference
    SortedMap<K, V> entriesInCommon();

    @Override // com.google.common.collect.MapDifference
    SortedMap<K, V> entriesOnlyOnLeft();

    @Override // com.google.common.collect.MapDifference
    SortedMap<K, V> entriesOnlyOnRight();
}
