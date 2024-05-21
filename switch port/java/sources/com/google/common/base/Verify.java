package com.google.common.base;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Verify {
    public static void verify(boolean z) {
        if (!z) {
            throw new VerifyException();
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object... objArr) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, objArr));
        }
    }

    public static void verify(boolean z, String str, char c) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c)));
        }
    }

    public static void verify(boolean z, String str, int i) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i)));
        }
    }

    public static void verify(boolean z, String str, long j) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j)));
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object obj) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, obj));
        }
    }

    public static void verify(boolean z, String str, char c, char c2) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), Character.valueOf(c2)));
        }
    }

    public static void verify(boolean z, String str, int i, char c) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i), Character.valueOf(c)));
        }
    }

    public static void verify(boolean z, String str, long j, char c) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j), Character.valueOf(c)));
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object obj, char c) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, obj, Character.valueOf(c)));
        }
    }

    public static void verify(boolean z, String str, char c, int i) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), Integer.valueOf(i)));
        }
    }

    public static void verify(boolean z, String str, int i, int i2) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    public static void verify(boolean z, String str, long j, int i) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j), Integer.valueOf(i)));
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object obj, int i) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, obj, Integer.valueOf(i)));
        }
    }

    public static void verify(boolean z, String str, char c, long j) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), Long.valueOf(j)));
        }
    }

    public static void verify(boolean z, String str, int i, long j) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i), Long.valueOf(j)));
        }
    }

    public static void verify(boolean z, String str, long j, long j2) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object obj, long j) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, obj, Long.valueOf(j)));
        }
    }

    public static void verify(boolean z, String str, char c, @CheckForNull Object obj) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), obj));
        }
    }

    public static void verify(boolean z, String str, int i, @CheckForNull Object obj) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i), obj));
        }
    }

    public static void verify(boolean z, String str, long j, @CheckForNull Object obj) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j), obj));
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object obj, @CheckForNull Object obj2) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, obj, obj2));
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object obj, @CheckForNull Object obj2, @CheckForNull Object obj3) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, obj, obj2, obj3));
        }
    }

    public static void verify(boolean z, String str, @CheckForNull Object obj, @CheckForNull Object obj2, @CheckForNull Object obj3, @CheckForNull Object obj4) {
        if (!z) {
            throw new VerifyException(Strings.lenientFormat(str, obj, obj2, obj3, obj4));
        }
    }

    public static <T> T verifyNotNull(@CheckForNull T t) {
        return (T) verifyNotNull(t, "expected a non-null reference", new Object[0]);
    }

    public static <T> T verifyNotNull(@CheckForNull T t, String str, @CheckForNull Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new VerifyException(Strings.lenientFormat(str, objArr));
    }

    private Verify() {
    }
}
