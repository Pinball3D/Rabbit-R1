package com.google.common.collect;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@ElementTypesAreNonnullByDefault
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
@interface GwtTransient {
}
