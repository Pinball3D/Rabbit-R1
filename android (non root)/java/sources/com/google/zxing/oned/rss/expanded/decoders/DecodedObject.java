package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes3.dex */
abstract class DecodedObject {
    private final int newPosition;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getNewPosition() {
        return this.newPosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedObject(int i) {
        this.newPosition = i;
    }
}
