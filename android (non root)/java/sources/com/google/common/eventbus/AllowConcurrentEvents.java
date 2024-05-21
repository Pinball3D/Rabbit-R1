package com.google.common.eventbus;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@ElementTypesAreNonnullByDefault
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface AllowConcurrentEvents {
}
