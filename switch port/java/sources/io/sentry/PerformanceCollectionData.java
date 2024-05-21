package io.sentry;

/* loaded from: classes3.dex */
public final class PerformanceCollectionData {
    private MemoryCollectionData memoryData = null;
    private CpuCollectionData cpuData = null;

    public void addCpuData(CpuCollectionData cpuCollectionData) {
        if (cpuCollectionData != null) {
            this.cpuData = cpuCollectionData;
        }
    }

    public void addMemoryData(MemoryCollectionData memoryCollectionData) {
        if (memoryCollectionData != null) {
            this.memoryData = memoryCollectionData;
        }
    }

    public CpuCollectionData getCpuData() {
        return this.cpuData;
    }

    public MemoryCollectionData getMemoryData() {
        return this.memoryData;
    }
}
