package com.google.android.exoplayer2.util;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.Nonnull;
import javax.annotation.meta.TypeQualifierDefault;
import javax.annotation.meta.When;

@TypeQualifierDefault({ElementType.TYPE_USE})
@Nonnull(when = When.UNKNOWN)
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes2.dex */
public @interface UnknownNull {
}
