package com.google.errorprone.annotations.concurrent;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
@Deprecated
/* loaded from: classes3.dex */
public @interface UnlockMethod {
    String[] value();
}
