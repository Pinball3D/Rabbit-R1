package com.google.common.io;

import java.nio.Buffer;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class Java8Compatibility {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clear(Buffer buffer) {
        buffer.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void flip(Buffer buffer) {
        buffer.flip();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void limit(Buffer buffer, int i) {
        buffer.limit(i);
    }

    static void mark(Buffer buffer) {
        buffer.mark();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void position(Buffer buffer, int i) {
        buffer.position(i);
    }

    static void reset(Buffer buffer) {
        buffer.reset();
    }

    private Java8Compatibility() {
    }
}
