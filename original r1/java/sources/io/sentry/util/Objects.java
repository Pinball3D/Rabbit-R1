package io.sentry.util;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class Objects {
    private Objects() {
    }

    public static <T> T requireNonNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException(str);
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hash(Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
