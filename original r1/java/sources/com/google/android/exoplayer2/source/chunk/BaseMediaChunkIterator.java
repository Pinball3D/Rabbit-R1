package com.google.android.exoplayer2.source.chunk;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class BaseMediaChunkIterator implements MediaChunkIterator {
    private long currentIndex;
    private final long fromIndex;
    private final long toIndex;

    /* JADX INFO: Access modifiers changed from: protected */
    public final long getCurrentIndex() {
        return this.currentIndex;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
    public boolean isEnded() {
        return this.currentIndex > this.toIndex;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
    public void reset() {
        this.currentIndex = this.fromIndex - 1;
    }

    public BaseMediaChunkIterator(long j, long j2) {
        this.fromIndex = j;
        this.toIndex = j2;
        reset();
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
    public boolean next() {
        this.currentIndex++;
        return !isEnded();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkInBounds() {
        long j = this.currentIndex;
        if (j < this.fromIndex || j > this.toIndex) {
            throw new NoSuchElementException();
        }
    }
}
