package org.jetbrains.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes3.dex */
public final class Async {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.PARAMETER})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface Execute {
    }

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.PARAMETER})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface Schedule {
    }

    private Async() {
        throw new AssertionError("Async should not be instantiated");
    }
}
