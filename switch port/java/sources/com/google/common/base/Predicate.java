package com.google.common.base;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public interface Predicate<T> {
    boolean apply(@ParametricNullness T t);

    boolean equals(@CheckForNull Object obj);
}
