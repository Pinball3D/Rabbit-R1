package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class H262Reader implements ElementaryStreamReader {
    private static final double[] FRAME_RATE_VALUES = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private static final int START_EXTENSION = 181;
    private static final int START_GROUP = 184;
    private static final int START_PICTURE = 0;
    private static final int START_SEQUENCE_HEADER = 179;
    private static final int START_USER_DATA = 178;
    private final CsdBuffer csdBuffer;
    private String formatId;
    private long frameDurationUs;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private long pesTimeUs;
    private final boolean[] prefixFlags;
    private boolean sampleHasPicture;
    private boolean sampleIsKeyframe;
    private long samplePosition;
    private long sampleTimeUs;
    private boolean startedFirstSample;
    private long totalBytesWritten;
    private final NalUnitTargetBuffer userData;
    private final ParsableByteArray userDataParsable;
    private final UserDataReader userDataReader;

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        this.pesTimeUs = j;
    }

    public H262Reader() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public H262Reader(UserDataReader userDataReader) {
        this.userDataReader = userDataReader;
        this.prefixFlags = new boolean[4];
        this.csdBuffer = new CsdBuffer(128);
        if (userDataReader != null) {
            this.userData = new NalUnitTargetBuffer(START_USER_DATA, 128);
            this.userDataParsable = new ParsableByteArray();
        } else {
            this.userData = null;
            this.userDataParsable = null;
        }
        this.pesTimeUs = -9223372036854775807L;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.csdBuffer.reset();
        NalUnitTargetBuffer nalUnitTargetBuffer = this.userData;
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.reset();
        }
        this.totalBytesWritten = 0L;
        this.startedFirstSample = false;
        this.pesTimeUs = -9223372036854775807L;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        UserDataReader userDataReader = this.userDataReader;
        if (userDataReader != null) {
            userDataReader.createTracks(extractorOutput, trackIdGenerator);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012e  */
    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray r21) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.H262Reader.consume(com.google.android.exoplayer2.util.ParsableByteArray):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.google.android.exoplayer2.Format, java.lang.Long> parseCsdBuffer(com.google.android.exoplayer2.extractor.ts.H262Reader.CsdBuffer r8, java.lang.String r9) {
        /*
            byte[] r0 = r8.data
            int r1 = r8.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r1 = 4
            r2 = r0[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 5
            r4 = r0[r3]
            r5 = r4 & 255(0xff, float:3.57E-43)
            r6 = 6
            r6 = r0[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r1
            int r5 = r5 >> r1
            r2 = r2 | r5
            r4 = r4 & 15
            int r4 = r4 << 8
            r4 = r4 | r6
            r5 = 7
            r6 = r0[r5]
            r6 = r6 & 240(0xf0, float:3.36E-43)
            int r6 = r6 >> r1
            r7 = 2
            if (r6 == r7) goto L3c
            r7 = 3
            if (r6 == r7) goto L36
            if (r6 == r1) goto L30
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L43
        L30:
            int r1 = r4 * 121
            float r1 = (float) r1
            int r6 = r2 * 100
            goto L41
        L36:
            int r1 = r4 * 16
            float r1 = (float) r1
            int r6 = r2 * 9
            goto L41
        L3c:
            int r1 = r4 * 4
            float r1 = (float) r1
            int r6 = r2 * 3
        L41:
            float r6 = (float) r6
            float r1 = r1 / r6
        L43:
            com.google.android.exoplayer2.Format$Builder r6 = new com.google.android.exoplayer2.Format$Builder
            r6.<init>()
            com.google.android.exoplayer2.Format$Builder r9 = r6.setId(r9)
            java.lang.String r6 = "video/mpeg2"
            com.google.android.exoplayer2.Format$Builder r9 = r9.setSampleMimeType(r6)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setWidth(r2)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setHeight(r4)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setPixelWidthHeightRatio(r1)
            java.util.List r1 = java.util.Collections.singletonList(r0)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setInitializationData(r1)
            com.google.android.exoplayer2.Format r9 = r9.build()
            r1 = r0[r5]
            r1 = r1 & 15
            int r1 = r1 + (-1)
            if (r1 < 0) goto L97
            double[] r2 = com.google.android.exoplayer2.extractor.ts.H262Reader.FRAME_RATE_VALUES
            int r4 = r2.length
            if (r1 >= r4) goto L97
            r1 = r2[r1]
            int r8 = r8.sequenceExtensionPosition
            int r8 = r8 + 9
            r8 = r0[r8]
            r0 = r8 & 96
            int r0 = r0 >> r3
            r8 = r8 & 31
            if (r0 == r8) goto L8f
            double r3 = (double) r0
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            int r8 = r8 + 1
            double r5 = (double) r8
            double r3 = r3 / r5
            double r1 = r1 * r3
        L8f:
            r3 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r3 = r3 / r1
            long r0 = (long) r3
            goto L99
        L97:
            r0 = 0
        L99:
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.H262Reader.parseCsdBuffer(com.google.android.exoplayer2.extractor.ts.H262Reader$CsdBuffer, java.lang.String):android.util.Pair");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class CsdBuffer {
        private static final byte[] START_CODE = {0, 0, 1};
        public byte[] data;
        private boolean isFilling;
        public int length;
        public int sequenceExtensionPosition;

        public void reset() {
            this.isFilling = false;
            this.length = 0;
            this.sequenceExtensionPosition = 0;
        }

        public CsdBuffer(int i) {
            this.data = new byte[i];
        }

        public boolean onStartCode(int i, int i2) {
            if (this.isFilling) {
                int i3 = this.length - i2;
                this.length = i3;
                if (this.sequenceExtensionPosition != 0 || i != H262Reader.START_EXTENSION) {
                    this.isFilling = false;
                    return true;
                }
                this.sequenceExtensionPosition = i3;
            } else if (i == H262Reader.START_SEQUENCE_HEADER) {
                this.isFilling = true;
            }
            byte[] bArr = START_CODE;
            onData(bArr, 0, bArr.length);
            return false;
        }

        public void onData(byte[] bArr, int i, int i2) {
            if (this.isFilling) {
                int i3 = i2 - i;
                byte[] bArr2 = this.data;
                int length = bArr2.length;
                int i4 = this.length;
                if (length < i4 + i3) {
                    this.data = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.data, this.length, i3);
                this.length += i3;
            }
        }
    }
}
