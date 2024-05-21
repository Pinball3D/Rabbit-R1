package com.google.common.util.concurrent;

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
    public static <T> T uncheckedNull() {
        return null;
    }

    private NullnessCasts() {
    }
}
