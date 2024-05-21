package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes3.dex */
final class BlockParsedResult {
    private final DecodedInformation decodedInformation;
    private final boolean finished;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedInformation getDecodedInformation() {
        return this.decodedInformation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFinished() {
        return this.finished;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockParsedResult(boolean z) {
        this(null, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockParsedResult(DecodedInformation decodedInformation, boolean z) {
        this.finished = z;
        this.decodedInformation = decodedInformation;
    }
}
