package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
final class XingSeeker implements Seeker {
    private static final String TAG = "XingSeeker";
    private final long dataEndPosition;
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;
    private final long[] tableOfContents;
    private final int xingFrameSize;

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }

    public static XingSeeker create(long j, long j2, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt;
        int i = header.samplesPerFrame;
        int i2 = header.sampleRate;
        int readInt = parsableByteArray.readInt();
        if ((readInt & 1) != 1 || (readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) == 0) {
            return null;
        }
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(readUnsignedIntToInt, i * 1000000, i2);
        if ((readInt & 6) != 6) {
            return new XingSeeker(j2, header.frameSize, scaleLargeTimestamp);
        }
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = parsableByteArray.readUnsignedByte();
        }
        if (j != -1) {
            long j3 = j2 + readUnsignedInt;
            if (j != j3) {
                Log.w(TAG, "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new XingSeeker(j2, header.frameSize, scaleLargeTimestamp, readUnsignedInt, jArr);
    }

    private XingSeeker(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    private XingSeeker(long j, int i, long j2, long j3, long[] jArr) {
        this.dataStartPosition = j;
        this.xingFrameSize = i;
        this.durationUs = j2;
        this.tableOfContents = jArr;
        this.dataSize = j3;
        this.dataEndPosition = j3 != -1 ? j + j3 : -1L;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + this.xingFrameSize));
        }
        long constrainValue = Util.constrainValue(j, 0L, this.durationUs);
        double d = (constrainValue * 100.0d) / this.durationUs;
        double d2 = BuildConfig.SENTRY_SAMPLE_RATE;
        if (d > BuildConfig.SENTRY_SAMPLE_RATE) {
            if (d >= 100.0d) {
                d2 = 256.0d;
            } else {
                int i = (int) d;
                double d3 = ((long[]) Assertions.checkStateNotNull(this.tableOfContents))[i];
                d2 = d3 + ((d - i) * ((i == 99 ? 256.0d : r3[i + 1]) - d3));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(constrainValue, this.dataStartPosition + Util.constrainValue(Math.round((d2 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        long j2 = j - this.dataStartPosition;
        if (!isSeekable() || j2 <= this.xingFrameSize) {
            return 0L;
        }
        long[] jArr = (long[]) Assertions.checkStateNotNull(this.tableOfContents);
        double d = (j2 * 256.0d) / this.dataSize;
        int binarySearchFloor = Util.binarySearchFloor(jArr, (long) d, true, true);
        long timeUsForTableIndex = getTimeUsForTableIndex(binarySearchFloor);
        long j3 = jArr[binarySearchFloor];
        int i = binarySearchFloor + 1;
        long timeUsForTableIndex2 = getTimeUsForTableIndex(i);
        return timeUsForTableIndex + Math.round((j3 == (binarySearchFloor == 99 ? 256L : jArr[i]) ? BuildConfig.SENTRY_SAMPLE_RATE : (d - j3) / (r0 - j3)) * (timeUsForTableIndex2 - timeUsForTableIndex));
    }

    private long getTimeUsForTableIndex(int i) {
        return (this.durationUs * i) / 100;
    }
}
