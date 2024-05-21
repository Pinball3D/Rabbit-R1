package com.google.common.collect;

import com.google.common.base.Preconditions;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class CollectPreconditions {
    CollectPreconditions() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkEntryNotNull(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            throw new NullPointerException(new StringBuilder(String.valueOf(valueOf).length() + 24).append("null key in entry: null=").append(valueOf).toString());
        }
        if (obj2 != null) {
            return;
        }
        String valueOf2 = String.valueOf(obj);
        throw new NullPointerException(new StringBuilder(String.valueOf(valueOf2).length() + 26).append("null value in entry: ").append(valueOf2).append("=null").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int checkNonnegative(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 40).append(str).append(" cannot be negative but was: ").append(i).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long checkNonnegative(long j, String str) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 49).append(str).append(" cannot be negative but was: ").append(j).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkPositive(int i, String str) {
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 38).append(str).append(" must be positive but was: ").append(i).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkRemove(boolean z) {
        Preconditions.checkState(z, "no calls to next() since the last call to remove()");
    }
}
