package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class TsExtractor implements Extractor {
    private static final long AC3_FORMAT_IDENTIFIER = 1094921523;
    private static final long AC4_FORMAT_IDENTIFIER = 1094921524;
    private static final int BUFFER_SIZE = 9400;
    public static final int DEFAULT_TIMESTAMP_SEARCH_BYTES = 112800;
    private static final long E_AC3_FORMAT_IDENTIFIER = 1161904947;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.ts.TsExtractor$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return TsExtractor.lambda$static$0();
        }
    };
    private static final long HEVC_FORMAT_IDENTIFIER = 1212503619;
    private static final int MAX_PID_PLUS_ONE = 8192;
    public static final int MODE_HLS = 2;
    public static final int MODE_MULTI_PMT = 0;
    public static final int MODE_SINGLE_PMT = 1;
    private static final int SNIFF_TS_PACKET_COUNT = 5;
    public static final int TS_PACKET_SIZE = 188;
    private static final int TS_PAT_PID = 0;
    public static final int TS_STREAM_TYPE_AAC_ADTS = 15;
    public static final int TS_STREAM_TYPE_AAC_LATM = 17;
    public static final int TS_STREAM_TYPE_AC3 = 129;
    public static final int TS_STREAM_TYPE_AC4 = 172;
    public static final int TS_STREAM_TYPE_AIT = 257;
    public static final int TS_STREAM_TYPE_DC2_H262 = 128;
    public static final int TS_STREAM_TYPE_DTS = 138;
    public static final int TS_STREAM_TYPE_DVBSUBS = 89;
    public static final int TS_STREAM_TYPE_E_AC3 = 135;
    public static final int TS_STREAM_TYPE_H262 = 2;
    public static final int TS_STREAM_TYPE_H263 = 16;
    public static final int TS_STREAM_TYPE_H264 = 27;
    public static final int TS_STREAM_TYPE_H265 = 36;
    public static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    public static final int TS_STREAM_TYPE_ID3 = 21;
    public static final int TS_STREAM_TYPE_MPA = 3;
    public static final int TS_STREAM_TYPE_MPA_LSF = 4;
    public static final int TS_STREAM_TYPE_SPLICE_INFO = 134;
    public static final int TS_SYNC_BYTE = 71;
    private int bytesSinceLastSync;
    private final SparseIntArray continuityCounters;
    private final TsDurationReader durationReader;
    private boolean hasOutputSeekMap;
    private TsPayloadReader id3Reader;
    private final int mode;
    private ExtractorOutput output;
    private final TsPayloadReader.Factory payloadReaderFactory;
    private int pcrPid;
    private boolean pendingSeekToStart;
    private int remainingPmts;
    private final List<TimestampAdjuster> timestampAdjusters;
    private final int timestampSearchBytes;
    private final SparseBooleanArray trackIds;
    private final SparseBooleanArray trackPids;
    private boolean tracksEnded;
    private TsBinarySearchSeeker tsBinarySearchSeeker;
    private final ParsableByteArray tsPacketBuffer;
    private final SparseArray<TsPayloadReader> tsPayloadReaders;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Mode {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    static /* synthetic */ int access$108(TsExtractor tsExtractor) {
        int i = tsExtractor.remainingPmts;
        tsExtractor.remainingPmts = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new TsExtractor()};
    }

    public TsExtractor() {
        this(0);
    }

    public TsExtractor(int i) {
        this(1, i, 112800);
    }

    public TsExtractor(int i, int i2, int i3) {
        this(i, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(i2), i3);
    }

    public TsExtractor(int i, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory) {
        this(i, timestampAdjuster, factory, 112800);
    }

    public TsExtractor(int i, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory, int i2) {
        this.payloadReaderFactory = (TsPayloadReader.Factory) Assertions.checkNotNull(factory);
        this.timestampSearchBytes = i2;
        this.mode = i;
        if (i == 1 || i == 2) {
            this.timestampAdjusters = Collections.singletonList(timestampAdjuster);
        } else {
            ArrayList arrayList = new ArrayList();
            this.timestampAdjusters = arrayList;
            arrayList.add(timestampAdjuster);
        }
        this.tsPacketBuffer = new ParsableByteArray(new byte[BUFFER_SIZE], 0);
        this.trackIds = new SparseBooleanArray();
        this.trackPids = new SparseBooleanArray();
        this.tsPayloadReaders = new SparseArray<>();
        this.continuityCounters = new SparseIntArray();
        this.durationReader = new TsDurationReader(i2);
        this.output = ExtractorOutput.PLACEHOLDER;
        this.pcrPid = -1;
        resetPayloadReaders();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r0 = r0 + 1;
     */
    @Override // com.google.android.exoplayer2.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput r6) throws java.io.IOException {
        /*
            r5 = this;
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r5.tsPacketBuffer
            byte[] r5 = r5.getData()
            r0 = 940(0x3ac, float:1.317E-42)
            r1 = 0
            r6.peekFully(r5, r1, r0)
            r0 = r1
        Ld:
            r2 = 188(0xbc, float:2.63E-43)
            if (r0 >= r2) goto L29
            r2 = r1
        L12:
            r3 = 5
            if (r2 >= r3) goto L24
            int r3 = r2 * 188
            int r3 = r3 + r0
            r3 = r5[r3]
            r4 = 71
            if (r3 == r4) goto L21
            int r0 = r0 + 1
            goto Ld
        L21:
            int r2 = r2 + 1
            goto L12
        L24:
            r6.skipFully(r0)
            r5 = 1
            return r5
        L29:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.TsExtractor.sniff(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        int i;
        TsBinarySearchSeeker tsBinarySearchSeeker;
        Assertions.checkState(this.mode != 2);
        int size = this.timestampAdjusters.size();
        for (0; i < size; i + 1) {
            TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i);
            boolean z = timestampAdjuster.getTimestampOffsetUs() == -9223372036854775807L;
            if (!z) {
                long firstSampleTimestampUs = timestampAdjuster.getFirstSampleTimestampUs();
                if (firstSampleTimestampUs != -9223372036854775807L) {
                    if (firstSampleTimestampUs != 0) {
                        if (firstSampleTimestampUs == j2) {
                        }
                        timestampAdjuster.reset(j2);
                    }
                }
            } else {
                i = z ? 0 : i + 1;
                timestampAdjuster.reset(j2);
            }
        }
        if (j2 != 0 && (tsBinarySearchSeeker = this.tsBinarySearchSeeker) != null) {
            tsBinarySearchSeeker.setSeekTargetUs(j2);
        }
        this.tsPacketBuffer.reset(0);
        this.continuityCounters.clear();
        for (int i2 = 0; i2 < this.tsPayloadReaders.size(); i2++) {
            this.tsPayloadReaders.valueAt(i2).seek();
        }
        this.bytesSinceLastSync = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long length = extractorInput.getLength();
        if (this.tracksEnded) {
            if (length != -1 && this.mode != 2 && !this.durationReader.isDurationReadFinished()) {
                return this.durationReader.readDuration(extractorInput, positionHolder, this.pcrPid);
            }
            maybeOutputSeekMap(length);
            if (this.pendingSeekToStart) {
                this.pendingSeekToStart = false;
                seek(0L, 0L);
                if (extractorInput.getPosition() != 0) {
                    positionHolder.position = 0L;
                    return 1;
                }
            }
            TsBinarySearchSeeker tsBinarySearchSeeker = this.tsBinarySearchSeeker;
            if (tsBinarySearchSeeker != null && tsBinarySearchSeeker.isSeeking()) {
                return this.tsBinarySearchSeeker.handlePendingSeek(extractorInput, positionHolder);
            }
        }
        if (!fillBufferWithAtLeastOnePacket(extractorInput)) {
            return -1;
        }
        int findEndOfFirstTsPacketInBuffer = findEndOfFirstTsPacketInBuffer();
        int limit = this.tsPacketBuffer.limit();
        if (findEndOfFirstTsPacketInBuffer > limit) {
            return 0;
        }
        int readInt = this.tsPacketBuffer.readInt();
        if ((8388608 & readInt) != 0) {
            this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
            return 0;
        }
        int i = (4194304 & readInt) != 0 ? 1 : 0;
        int i2 = (2096896 & readInt) >> 8;
        boolean z = (readInt & 32) != 0;
        TsPayloadReader tsPayloadReader = (readInt & 16) != 0 ? this.tsPayloadReaders.get(i2) : null;
        if (tsPayloadReader == null) {
            this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
            return 0;
        }
        if (this.mode != 2) {
            int i3 = readInt & 15;
            int i4 = this.continuityCounters.get(i2, i3 - 1);
            this.continuityCounters.put(i2, i3);
            if (i4 == i3) {
                this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
                return 0;
            }
            if (i3 != ((i4 + 1) & 15)) {
                tsPayloadReader.seek();
            }
        }
        if (z) {
            int readUnsignedByte = this.tsPacketBuffer.readUnsignedByte();
            i |= (this.tsPacketBuffer.readUnsignedByte() & 64) != 0 ? 2 : 0;
            this.tsPacketBuffer.skipBytes(readUnsignedByte - 1);
        }
        boolean z2 = this.tracksEnded;
        if (shouldConsumePacketPayload(i2)) {
            this.tsPacketBuffer.setLimit(findEndOfFirstTsPacketInBuffer);
            tsPayloadReader.consume(this.tsPacketBuffer, i);
            this.tsPacketBuffer.setLimit(limit);
        }
        if (this.mode != 2 && !z2 && this.tracksEnded && length != -1) {
            this.pendingSeekToStart = true;
        }
        this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
        return 0;
    }

    private void maybeOutputSeekMap(long j) {
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.getDurationUs() != -9223372036854775807L) {
            TsBinarySearchSeeker tsBinarySearchSeeker = new TsBinarySearchSeeker(this.durationReader.getPcrTimestampAdjuster(), this.durationReader.getDurationUs(), j, this.pcrPid, this.timestampSearchBytes);
            this.tsBinarySearchSeeker = tsBinarySearchSeeker;
            this.output.seekMap(tsBinarySearchSeeker.getSeekMap());
            return;
        }
        this.output.seekMap(new SeekMap.Unseekable(this.durationReader.getDurationUs()));
    }

    private boolean fillBufferWithAtLeastOnePacket(ExtractorInput extractorInput) throws IOException {
        byte[] data = this.tsPacketBuffer.getData();
        if (9400 - this.tsPacketBuffer.getPosition() < 188) {
            int bytesLeft = this.tsPacketBuffer.bytesLeft();
            if (bytesLeft > 0) {
                System.arraycopy(data, this.tsPacketBuffer.getPosition(), data, 0, bytesLeft);
            }
            this.tsPacketBuffer.reset(data, bytesLeft);
        }
        while (this.tsPacketBuffer.bytesLeft() < 188) {
            int limit = this.tsPacketBuffer.limit();
            int read = extractorInput.read(data, limit, 9400 - limit);
            if (read == -1) {
                return false;
            }
            this.tsPacketBuffer.setLimit(limit + read);
        }
        return true;
    }

    private int findEndOfFirstTsPacketInBuffer() throws ParserException {
        int position = this.tsPacketBuffer.getPosition();
        int limit = this.tsPacketBuffer.limit();
        int findSyncBytePosition = TsUtil.findSyncBytePosition(this.tsPacketBuffer.getData(), position, limit);
        this.tsPacketBuffer.setPosition(findSyncBytePosition);
        int i = findSyncBytePosition + 188;
        if (i > limit) {
            int i2 = this.bytesSinceLastSync + (findSyncBytePosition - position);
            this.bytesSinceLastSync = i2;
            if (this.mode == 2 && i2 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.bytesSinceLastSync = 0;
        }
        return i;
    }

    private boolean shouldConsumePacketPayload(int i) {
        return this.mode == 2 || this.tracksEnded || !this.trackPids.get(i, false);
    }

    private void resetPayloadReaders() {
        this.trackIds.clear();
        this.tsPayloadReaders.clear();
        SparseArray<TsPayloadReader> createInitialPayloadReaders = this.payloadReaderFactory.createInitialPayloadReaders();
        int size = createInitialPayloadReaders.size();
        for (int i = 0; i < size; i++) {
            this.tsPayloadReaders.put(createInitialPayloadReaders.keyAt(i), createInitialPayloadReaders.valueAt(i));
        }
        this.tsPayloadReaders.put(0, new SectionReader(new PatReader()));
        this.id3Reader = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class PatReader implements SectionPayloadReader {
        private final ParsableBitArray patScratch = new ParsableBitArray(new byte[4]);

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }

        public PatReader() {
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.readUnsignedByte() == 0 && (parsableByteArray.readUnsignedByte() & 128) != 0) {
                parsableByteArray.skipBytes(6);
                int bytesLeft = parsableByteArray.bytesLeft() / 4;
                for (int i = 0; i < bytesLeft; i++) {
                    parsableByteArray.readBytes(this.patScratch, 4);
                    int readBits = this.patScratch.readBits(16);
                    this.patScratch.skipBits(3);
                    if (readBits == 0) {
                        this.patScratch.skipBits(13);
                    } else {
                        int readBits2 = this.patScratch.readBits(13);
                        if (TsExtractor.this.tsPayloadReaders.get(readBits2) == null) {
                            TsExtractor.this.tsPayloadReaders.put(readBits2, new SectionReader(new PmtReader(readBits2)));
                            TsExtractor.access$108(TsExtractor.this);
                        }
                    }
                }
                if (TsExtractor.this.mode != 2) {
                    TsExtractor.this.tsPayloadReaders.remove(0);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private class PmtReader implements SectionPayloadReader {
        private static final int TS_PMT_DESC_AC3 = 106;
        private static final int TS_PMT_DESC_AIT = 111;
        private static final int TS_PMT_DESC_DTS = 123;
        private static final int TS_PMT_DESC_DVBSUBS = 89;
        private static final int TS_PMT_DESC_DVB_EXT = 127;
        private static final int TS_PMT_DESC_DVB_EXT_AC4 = 21;
        private static final int TS_PMT_DESC_EAC3 = 122;
        private static final int TS_PMT_DESC_ISO639_LANG = 10;
        private static final int TS_PMT_DESC_REGISTRATION = 5;
        private final int pid;
        private final ParsableBitArray pmtScratch = new ParsableBitArray(new byte[5]);
        private final SparseArray<TsPayloadReader> trackIdToReaderScratch = new SparseArray<>();
        private final SparseIntArray trackIdToPidScratch = new SparseIntArray();

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }

        public PmtReader(int i) {
            this.pid = i;
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            TimestampAdjuster timestampAdjuster;
            if (parsableByteArray.readUnsignedByte() != 2) {
                return;
            }
            if (TsExtractor.this.mode == 1 || TsExtractor.this.mode == 2 || TsExtractor.this.remainingPmts == 1) {
                timestampAdjuster = (TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0);
            } else {
                timestampAdjuster = new TimestampAdjuster(((TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0)).getFirstSampleTimestampUs());
                TsExtractor.this.timestampAdjusters.add(timestampAdjuster);
            }
            if ((parsableByteArray.readUnsignedByte() & 128) == 0) {
                return;
            }
            parsableByteArray.skipBytes(1);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            int i = 3;
            parsableByteArray.skipBytes(3);
            parsableByteArray.readBytes(this.pmtScratch, 2);
            this.pmtScratch.skipBits(3);
            int i2 = 13;
            TsExtractor.this.pcrPid = this.pmtScratch.readBits(13);
            parsableByteArray.readBytes(this.pmtScratch, 2);
            int i3 = 4;
            this.pmtScratch.skipBits(4);
            parsableByteArray.skipBytes(this.pmtScratch.readBits(12));
            if (TsExtractor.this.mode == 2 && TsExtractor.this.id3Reader == null) {
                TsPayloadReader.EsInfo esInfo = new TsPayloadReader.EsInfo(21, null, null, Util.EMPTY_BYTE_ARRAY);
                TsExtractor tsExtractor = TsExtractor.this;
                tsExtractor.id3Reader = tsExtractor.payloadReaderFactory.createPayloadReader(21, esInfo);
                if (TsExtractor.this.id3Reader != null) {
                    TsExtractor.this.id3Reader.init(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(readUnsignedShort, 21, 8192));
                }
            }
            this.trackIdToReaderScratch.clear();
            this.trackIdToPidScratch.clear();
            int bytesLeft = parsableByteArray.bytesLeft();
            while (bytesLeft > 0) {
                parsableByteArray.readBytes(this.pmtScratch, 5);
                int readBits = this.pmtScratch.readBits(8);
                this.pmtScratch.skipBits(i);
                int readBits2 = this.pmtScratch.readBits(i2);
                this.pmtScratch.skipBits(i3);
                int readBits3 = this.pmtScratch.readBits(12);
                TsPayloadReader.EsInfo readEsInfo = readEsInfo(parsableByteArray, readBits3);
                if (readBits == 6 || readBits == 5) {
                    readBits = readEsInfo.streamType;
                }
                bytesLeft -= readBits3 + 5;
                int i4 = TsExtractor.this.mode == 2 ? readBits : readBits2;
                if (!TsExtractor.this.trackIds.get(i4)) {
                    TsPayloadReader createPayloadReader = (TsExtractor.this.mode == 2 && readBits == 21) ? TsExtractor.this.id3Reader : TsExtractor.this.payloadReaderFactory.createPayloadReader(readBits, readEsInfo);
                    if (TsExtractor.this.mode != 2 || readBits2 < this.trackIdToPidScratch.get(i4, 8192)) {
                        this.trackIdToPidScratch.put(i4, readBits2);
                        this.trackIdToReaderScratch.put(i4, createPayloadReader);
                    }
                }
                i = 3;
                i3 = 4;
                i2 = 13;
            }
            int size = this.trackIdToPidScratch.size();
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt = this.trackIdToPidScratch.keyAt(i5);
                int valueAt = this.trackIdToPidScratch.valueAt(i5);
                TsExtractor.this.trackIds.put(keyAt, true);
                TsExtractor.this.trackPids.put(valueAt, true);
                TsPayloadReader valueAt2 = this.trackIdToReaderScratch.valueAt(i5);
                if (valueAt2 != null) {
                    if (valueAt2 != TsExtractor.this.id3Reader) {
                        valueAt2.init(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(readUnsignedShort, keyAt, 8192));
                    }
                    TsExtractor.this.tsPayloadReaders.put(valueAt, valueAt2);
                }
            }
            if (TsExtractor.this.mode == 2) {
                if (TsExtractor.this.tracksEnded) {
                    return;
                }
                TsExtractor.this.output.endTracks();
                TsExtractor.this.remainingPmts = 0;
                TsExtractor.this.tracksEnded = true;
                return;
            }
            TsExtractor.this.tsPayloadReaders.remove(this.pid);
            TsExtractor tsExtractor2 = TsExtractor.this;
            tsExtractor2.remainingPmts = tsExtractor2.mode == 1 ? 0 : TsExtractor.this.remainingPmts - 1;
            if (TsExtractor.this.remainingPmts == 0) {
                TsExtractor.this.output.endTracks();
                TsExtractor.this.tracksEnded = true;
            }
        }

        private TsPayloadReader.EsInfo readEsInfo(ParsableByteArray parsableByteArray, int i) {
            int position = parsableByteArray.getPosition();
            int i2 = i + position;
            int i3 = -1;
            String str = null;
            ArrayList arrayList = null;
            while (parsableByteArray.getPosition() < i2) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                int position2 = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
                if (position2 > i2) {
                    break;
                }
                if (readUnsignedByte == 5) {
                    long readUnsignedInt = parsableByteArray.readUnsignedInt();
                    if (readUnsignedInt != TsExtractor.AC3_FORMAT_IDENTIFIER) {
                        if (readUnsignedInt != TsExtractor.E_AC3_FORMAT_IDENTIFIER) {
                            if (readUnsignedInt != TsExtractor.AC4_FORMAT_IDENTIFIER) {
                                if (readUnsignedInt == TsExtractor.HEVC_FORMAT_IDENTIFIER) {
                                    i3 = 36;
                                }
                            }
                            i3 = 172;
                        }
                        i3 = 135;
                    }
                    i3 = 129;
                } else {
                    if (readUnsignedByte != TS_PMT_DESC_AC3) {
                        if (readUnsignedByte != TS_PMT_DESC_EAC3) {
                            if (readUnsignedByte == 127) {
                                if (parsableByteArray.readUnsignedByte() != 21) {
                                }
                                i3 = 172;
                            } else if (readUnsignedByte == TS_PMT_DESC_DTS) {
                                i3 = 138;
                            } else if (readUnsignedByte == 10) {
                                str = parsableByteArray.readString(3).trim();
                            } else if (readUnsignedByte == 89) {
                                ArrayList arrayList2 = new ArrayList();
                                while (parsableByteArray.getPosition() < position2) {
                                    String trim = parsableByteArray.readString(3).trim();
                                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                                    byte[] bArr = new byte[4];
                                    parsableByteArray.readBytes(bArr, 0, 4);
                                    arrayList2.add(new TsPayloadReader.DvbSubtitleInfo(trim, readUnsignedByte2, bArr));
                                }
                                arrayList = arrayList2;
                                i3 = 89;
                            } else if (readUnsignedByte == TS_PMT_DESC_AIT) {
                                i3 = 257;
                            }
                        }
                        i3 = 135;
                    }
                    i3 = 129;
                }
                parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
            }
            parsableByteArray.setPosition(i2);
            return new TsPayloadReader.EsInfo(i3, str, arrayList, Arrays.copyOfRange(parsableByteArray.getData(), position, i2));
        }
    }
}
