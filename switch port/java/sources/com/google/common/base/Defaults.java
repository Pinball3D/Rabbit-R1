package com.google.common.base;

import javax.annotation.CheckForNull;
import tech.rabbit.r1launcher.BuildConfig;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Defaults {
    private static final Double DOUBLE_DEFAULT = Double.valueOf(BuildConfig.SENTRY_SAMPLE_RATE);
    private static final Float FLOAT_DEFAULT = Float.valueOf(0.0f);

    private Defaults() {
    }

    @CheckForNull
    public static <T> T defaultValue(Class<T> cls) {
        Preconditions.checkNotNull(cls);
        if (!cls.isPrimitive()) {
            return null;
        }
        if (cls == Boolean.TYPE) {
            return (T) Boolean.FALSE;
        }
        if (cls == Character.TYPE) {
            return (T) (char) 0;
        }
        if (cls == Byte.TYPE) {
            return (T) (byte) 0;
        }
        if (cls == Short.TYPE) {
            return (T) (short) 0;
        }
        if (cls == Integer.TYPE) {
            return (T) 0;
        }
        if (cls == Long.TYPE) {
            return (T) 0L;
        }
        if (cls == Float.TYPE) {
            return (T) FLOAT_DEFAULT;
        }
        if (cls == Double.TYPE) {
            return (T) DOUBLE_DEFAULT;
        }
        return null;
    }
}
