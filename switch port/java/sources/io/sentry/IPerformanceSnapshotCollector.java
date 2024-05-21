package io.sentry;

/* loaded from: classes3.dex */
public interface IPerformanceSnapshotCollector extends IPerformanceCollector {
    void collect(PerformanceCollectionData performanceCollectionData);

    void setup();
}
