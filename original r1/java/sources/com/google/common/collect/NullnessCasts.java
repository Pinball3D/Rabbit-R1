package com.google.common.collect;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class NullnessCasts {
    /* JADX INFO: Access modifiers changed from: package-private */
    @ParametricNullness
    public static <T> T uncheckedCastNullableTToT(@CheckForNull T t) {
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ParametricNullness
    public static <T> T unsafeNull() {
        return null;
    }

    private NullnessCasts() {
    }
}
