package com.google.common.collect;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@DoNotMock("Use ImmutableTable, HashBasedTable, or another implementation")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface Table<R, C, V> {

    /* loaded from: classes3.dex */
    public interface Cell<R, C, V> {
        boolean equals(@CheckForNull Object obj);

        @ParametricNullness
        C getColumnKey();

        @ParametricNullness
        R getRowKey();

        @ParametricNullness
        V getValue();

        int hashCode();
    }

    Set<Cell<R, C, V>> cellSet();

    void clear();

    Map<R, V> column(@ParametricNullness C c);

    Set<C> columnKeySet();

    Map<C, Map<R, V>> columnMap();

    boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2);

    boolean containsColumn(@CheckForNull Object obj);

    boolean containsRow(@CheckForNull Object obj);

    boolean containsValue(@CheckForNull Object obj);

    boolean equals(@CheckForNull Object obj);

    @CheckForNull
    V get(@CheckForNull Object obj, @CheckForNull Object obj2);

    int hashCode();

    boolean isEmpty();

    @CheckForNull
    V put(@ParametricNullness R r, @ParametricNullness C c, @ParametricNullness V v);

    void putAll(Table<? extends R, ? extends C, ? extends V> table);

    @CheckForNull
    V remove(@CheckForNull Object obj, @CheckForNull Object obj2);

    Map<C, V> row(@ParametricNullness R r);

    Set<R> rowKeySet();

    Map<R, Map<C, V>> rowMap();

    int size();

    Collection<V> values();
}
