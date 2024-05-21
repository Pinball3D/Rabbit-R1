package io.sentry.android.core;

import android.os.Debug;
import io.sentry.IPerformanceSnapshotCollector;
import io.sentry.MemoryCollectionData;
import io.sentry.PerformanceCollectionData;

/* loaded from: classes3.dex */
public class AndroidMemoryCollector implements IPerformanceSnapshotCollector {
    @Override // io.sentry.IPerformanceSnapshotCollector
    public void setup() {
    }

    @Override // io.sentry.IPerformanceSnapshotCollector
    public void collect(PerformanceCollectionData performanceCollectionData) {
        performanceCollectionData.addMemoryData(new MemoryCollectionData(System.currentTimeMillis(), Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory(), Debug.getNativeHeapSize() - Debug.getNativeHeapFreeSize()));
    }
}
