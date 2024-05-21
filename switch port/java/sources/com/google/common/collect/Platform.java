package com.google.common.collect;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Platform {
    static void checkGwtRpcEnabled() {
    }

    static int reduceExponentIfGwt(int i) {
        return i;
    }

    static int reduceIterationsIfGwt(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> newHashMapWithExpectedSize(int i) {
        return CompactHashMap.createWithExpectedSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> newLinkedHashMapWithExpectedSize(int i) {
        return CompactLinkedHashMap.createWithExpectedSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> newHashSetWithExpectedSize(int i) {
        return CompactHashSet.createWithExpectedSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> newLinkedHashSetWithExpectedSize(int i) {
        return CompactLinkedHashSet.createWithExpectedSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> preservesInsertionOrderOnPutsMap() {
        return CompactHashMap.create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> preservesInsertionOrderOnAddsSet() {
        return CompactHashSet.create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] newArray(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] copy(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MapMaker tryWeakKeys(MapMaker mapMaker) {
        return mapMaker.weakKeys();
    }

    private Platform() {
    }
}
