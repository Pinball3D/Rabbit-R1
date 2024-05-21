package io.sentry;

/* loaded from: classes3.dex */
public final class MemoryCollectionData {
    final long timestampMillis;
    final long usedHeapMemory;
    final long usedNativeMemory;

    public long getTimestampMillis() {
        return this.timestampMillis;
    }

    public long getUsedHeapMemory() {
        return this.usedHeapMemory;
    }

    public long getUsedNativeMemory() {
        return this.usedNativeMemory;
    }

    public MemoryCollectionData(long j, long j2, long j3) {
        this.timestampMillis = j;
        this.usedHeapMemory = j2;
        this.usedNativeMemory = j3;
    }

    public MemoryCollectionData(long j, long j2) {
        this(j, j2, -1L);
    }
}
