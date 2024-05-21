package com.google.common.escape;

import com.google.common.base.Preconditions;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class ArrayBasedEscaperMap {
    private static final char[][] EMPTY_REPLACEMENT_ARRAY = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 0, 0);
    private final char[][] replacementArray;

    /* JADX INFO: Access modifiers changed from: package-private */
    public char[][] getReplacementArray() {
        return this.replacementArray;
    }

    public static ArrayBasedEscaperMap create(Map<Character, String> map) {
        return new ArrayBasedEscaperMap(createReplacementArray(map));
    }

    private ArrayBasedEscaperMap(char[][] cArr) {
        this.replacementArray = cArr;
    }

    static char[][] createReplacementArray(Map<Character, String> map) {
        Preconditions.checkNotNull(map);
        if (map.isEmpty()) {
            return EMPTY_REPLACEMENT_ARRAY;
        }
        char[][] cArr = new char[((Character) Collections.max(map.keySet())).charValue() + 1];
        for (Character ch : map.keySet()) {
            cArr[ch.charValue()] = map.get(ch).toCharArray();
        }
        return cArr;
    }
}
