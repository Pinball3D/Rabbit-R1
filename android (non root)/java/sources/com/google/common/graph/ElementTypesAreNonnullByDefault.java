package com.google.common.graph;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.annotation.Nonnull;
import javax.annotation.meta.TypeQualifierDefault;

@Target({ElementType.TYPE})
@TypeQualifierDefault({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Nonnull
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
@interface ElementTypesAreNonnullByDefault {
}
