package com.google.common.collect;

import com.google.errorprone.annotations.DoNotMock;
import java.lang.Comparable;
import java.util.Map;
import javax.annotation.CheckForNull;

@DoNotMock("Use ImmutableRangeMap or TreeRangeMap")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface RangeMap<K extends Comparable, V> {
    Map<Range<K>, V> asDescendingMapOfRanges();

    Map<Range<K>, V> asMapOfRanges();

    void clear();

    boolean equals(@CheckForNull Object obj);

    @CheckForNull
    V get(K k);

    @CheckForNull
    Map.Entry<Range<K>, V> getEntry(K k);

    int hashCode();

    void put(Range<K> range, V v);

    void putAll(RangeMap<K, V> rangeMap);

    void putCoalescing(Range<K> range, V v);

    void remove(Range<K> range);

    Range<K> span();

    RangeMap<K, V> subRangeMap(Range<K> range);

    String toString();
}
