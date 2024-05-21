package com.google.common.base;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class NullnessCasts {
    /* JADX INFO: Access modifiers changed from: package-private */
    @ParametricNullness
    public static <T> T uncheckedCastNullableTToT(@CheckForNull T t) {
        return t;
    }

    private NullnessCasts() {
    }
}
