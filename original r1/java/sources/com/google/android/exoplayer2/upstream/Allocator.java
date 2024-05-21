package com.google.android.exoplayer2.upstream;

/* loaded from: classes2.dex */
public interface Allocator {

    /* loaded from: classes2.dex */
    public interface AllocationNode {
        Allocation getAllocation();

        AllocationNode next();
    }

    Allocation allocate();

    int getIndividualAllocationLength();

    int getTotalBytesAllocated();

    void release(Allocation allocation);

    void release(AllocationNode allocationNode);

    void trim();
}
