package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
final class FixedSampleSizeRechunker {
    private static final int MAX_SAMPLE_SIZE = 8192;

    /* loaded from: classes2.dex */
    public static final class Results {
        public final long duration;
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;

        private Results(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.offsets = jArr;
            this.sizes = iArr;
            this.maximumSize = i;
            this.timestamps = jArr2;
            this.flags = iArr2;
            this.duration = j;
        }
    }

    public static Results rechunk(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += Util.ceilDivide(i4, i2);
        }
        long[] jArr2 = new long[i3];
        int[] iArr2 = new int[i3];
        long[] jArr3 = new long[i3];
        int[] iArr3 = new int[i3];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < iArr.length; i8++) {
            int i9 = iArr[i8];
            long j2 = jArr[i8];
            while (i9 > 0) {
                int min = Math.min(i2, i9);
                jArr2[i6] = j2;
                int i10 = i * min;
                iArr2[i6] = i10;
                i7 = Math.max(i7, i10);
                jArr3[i6] = i5 * j;
                iArr3[i6] = 1;
                j2 += iArr2[i6];
                i5 += min;
                i9 -= min;
                i6++;
            }
        }
        return new Results(jArr2, iArr2, i7, jArr3, iArr3, j * i5);
    }

    private FixedSampleSizeRechunker() {
    }
}
