package com.google.common.util.concurrent;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class Partially {

    @Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    @interface GwtIncompatible {
        String value();
    }

    private Partially() {
    }
}
