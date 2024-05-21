package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ChunkReader {
    private static final int CHUNK_TYPE_AUDIO = 1651965952;
    private static final int CHUNK_TYPE_VIDEO_COMPRESSED = 1667497984;
    private static final int CHUNK_TYPE_VIDEO_UNCOMPRESSED = 1650720768;
    private static final int INITIAL_INDEX_SIZE = 512;
    private final int alternativeChunkId;
    private int bytesRemainingInCurrentChunk;
    private final int chunkId;
    private int currentChunkIndex;
    private int currentChunkSize;
    private final long durationUs;
    private int indexChunkCount;
    private int indexSize;
    private int[] keyFrameIndices;
    private long[] keyFrameOffsets;
    private final int streamHeaderChunkCount;
    protected final TrackOutput trackOutput;

    public void advanceCurrentChunk() {
        this.currentChunkIndex++;
    }

    public boolean handlesChunkId(int i) {
        return this.chunkId == i || this.alternativeChunkId == i;
    }

    public void incrementIndexChunkCount() {
        this.indexChunkCount++;
    }

    public boolean isAudio() {
        return (this.chunkId & CHUNK_TYPE_AUDIO) == CHUNK_TYPE_AUDIO;
    }

    public boolean isVideo() {
        return (this.chunkId & CHUNK_TYPE_VIDEO_COMPRESSED) == CHUNK_TYPE_VIDEO_COMPRESSED;
    }

    public void onChunkStart(int i) {
        this.currentChunkSize = i;
        this.bytesRemainingInCurrentChunk = i;
    }

    public ChunkReader(int i, int i2, long j, int i3, TrackOutput trackOutput) {
        boolean z = true;
        if (i2 != 1 && i2 != 2) {
            z = false;
        }
        Assertions.checkArgument(z);
        this.durationUs = j;
        this.streamHeaderChunkCount = i3;
        this.trackOutput = trackOutput;
        this.chunkId = getChunkIdFourCc(i, i2 == 2 ? CHUNK_TYPE_VIDEO_COMPRESSED : CHUNK_TYPE_AUDIO);
        this.alternativeChunkId = i2 == 2 ? getChunkIdFourCc(i, CHUNK_TYPE_VIDEO_UNCOMPRESSED) : -1;
        this.keyFrameOffsets = new long[512];
        this.keyFrameIndices = new int[512];
    }

    public void appendKeyFrameToIndex(long j) {
        if (this.indexSize == this.keyFrameIndices.length) {
            long[] jArr = this.keyFrameOffsets;
            this.keyFrameOffsets = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.keyFrameIndices;
            this.keyFrameIndices = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.keyFrameOffsets;
        int i = this.indexSize;
        jArr2[i] = j;
        this.keyFrameIndices[i] = this.indexChunkCount;
        this.indexSize = i + 1;
    }

    public long getCurrentChunkTimestampUs() {
        return getChunkTimestampUs(this.currentChunkIndex);
    }

    public long getFrameDurationUs() {
        return getChunkTimestampUs(1);
    }

    public void compactIndex() {
        this.keyFrameOffsets = Arrays.copyOf(this.keyFrameOffsets, this.indexSize);
        this.keyFrameIndices = Arrays.copyOf(this.keyFrameIndices, this.indexSize);
    }

    public boolean isCurrentFrameAKeyFrame() {
        return Arrays.binarySearch(this.keyFrameIndices, this.currentChunkIndex) >= 0;
    }

    public boolean onChunkData(ExtractorInput extractorInput) throws IOException {
        int i = this.bytesRemainingInCurrentChunk;
        int sampleData = i - this.trackOutput.sampleData((DataReader) extractorInput, i, false);
        this.bytesRemainingInCurrentChunk = sampleData;
        boolean z = sampleData == 0;
        if (z) {
            if (this.currentChunkSize > 0) {
                this.trackOutput.sampleMetadata(getCurrentChunkTimestampUs(), isCurrentFrameAKeyFrame() ? 1 : 0, this.currentChunkSize, 0, null);
            }
            advanceCurrentChunk();
        }
        return z;
    }

    public void seekToPosition(long j) {
        if (this.indexSize == 0) {
            this.currentChunkIndex = 0;
        } else {
            this.currentChunkIndex = this.keyFrameIndices[Util.binarySearchFloor(this.keyFrameOffsets, j, true, true)];
        }
    }

    public SeekMap.SeekPoints getSeekPoints(long j) {
        int frameDurationUs = (int) (j / getFrameDurationUs());
        int binarySearchFloor = Util.binarySearchFloor(this.keyFrameIndices, frameDurationUs, true, true);
        if (this.keyFrameIndices[binarySearchFloor] == frameDurationUs) {
            return new SeekMap.SeekPoints(getSeekPoint(binarySearchFloor));
        }
        SeekPoint seekPoint = getSeekPoint(binarySearchFloor);
        int i = binarySearchFloor + 1;
        if (i < this.keyFrameOffsets.length) {
            return new SeekMap.SeekPoints(seekPoint, getSeekPoint(i));
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    private long getChunkTimestampUs(int i) {
        return (this.durationUs * i) / this.streamHeaderChunkCount;
    }

    private SeekPoint getSeekPoint(int i) {
        return new SeekPoint(this.keyFrameIndices[i] * getFrameDurationUs(), this.keyFrameOffsets[i]);
    }

    private static int getChunkIdFourCc(int i, int i2) {
        return (((i % 10) + 48) << 8) | ((i / 10) + 48) | i2;
    }
}
