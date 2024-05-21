package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.util.Log;

/* loaded from: classes2.dex */
public final class BaseMediaChunkOutput implements ChunkExtractor.TrackOutputProvider {
    private static final String TAG = "BaseMediaChunkOutput";
    private final SampleQueue[] sampleQueues;
    private final int[] trackTypes;

    public BaseMediaChunkOutput(int[] iArr, SampleQueue[] sampleQueueArr) {
        this.trackTypes = iArr;
        this.sampleQueues = sampleQueueArr;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider
    public TrackOutput track(int i, int i2) {
        int i3 = 0;
        while (true) {
            int[] iArr = this.trackTypes;
            if (i3 < iArr.length) {
                if (i2 == iArr[i3]) {
                    return this.sampleQueues[i3];
                }
                i3++;
            } else {
                Log.e(TAG, "Unmatched track of type: " + i2);
                return new DummyTrackOutput();
            }
        }
    }

    public int[] getWriteIndices() {
        int[] iArr = new int[this.sampleQueues.length];
        int i = 0;
        while (true) {
            SampleQueue[] sampleQueueArr = this.sampleQueues;
            if (i >= sampleQueueArr.length) {
                return iArr;
            }
            iArr[i] = sampleQueueArr[i].getWriteIndex();
            i++;
        }
    }

    public void setSampleOffsetUs(long j) {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.setSampleOffsetUs(j);
        }
    }
}
