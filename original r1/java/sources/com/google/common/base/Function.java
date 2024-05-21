package com.google.common.base;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public interface Function<F, T> {
    @ParametricNullness
    T apply(@ParametricNullness F f);

    boolean equals(@CheckForNull Object obj);
}
