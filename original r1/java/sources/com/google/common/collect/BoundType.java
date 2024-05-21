package com.google.common.collect;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public enum BoundType {
    OPEN(false),
    CLOSED(true);

    final boolean inclusive;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BoundType forBoolean(boolean z) {
        return z ? CLOSED : OPEN;
    }

    BoundType(boolean z) {
        this.inclusive = z;
    }
}
