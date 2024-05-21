package com.google.android.exoplayer2.text.span;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class TextAnnotation {
    public static final int POSITION_AFTER = 2;
    public static final int POSITION_BEFORE = 1;
    public static final int POSITION_UNKNOWN = -1;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Position {
    }

    private TextAnnotation() {
    }
}
