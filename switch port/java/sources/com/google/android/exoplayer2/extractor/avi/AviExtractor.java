package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.DummyExtractorOutput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class AviExtractor implements Extractor {
    private static final int AVIIF_KEYFRAME = 16;
    public static final int FOURCC_AVI_ = 541677121;
    public static final int FOURCC_JUNK = 1263424842;
    public static final int FOURCC_LIST = 1414744396;
    public static final int FOURCC_RIFF = 1179011410;
    public static final int FOURCC_auds = 1935963489;
    public static final int FOURCC_avih = 1751742049;
    public static final int FOURCC_hdrl = 1819436136;
    public static final int FOURCC_idx1 = 829973609;
    public static final int FOURCC_movi = 1769369453;
    public static final int FOURCC_strf = 1718776947;
    public static final int FOURCC_strh = 1752331379;
    public static final int FOURCC_strl = 1819440243;
    public static final int FOURCC_strn = 1852994675;
    public static final int FOURCC_txts = 1937012852;
    public static final int FOURCC_vids = 1935960438;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_FINDING_IDX1_HEADER = 4;
    private static final int STATE_FINDING_MOVI_HEADER = 3;
    private static final int STATE_READING_HDRL_BODY = 2;
    private static final int STATE_READING_HDRL_HEADER = 1;
    private static final int STATE_READING_IDX1_BODY = 5;
    private static final int STATE_READING_SAMPLES = 6;
    private static final int STATE_SKIPPING_TO_HDRL = 0;
    private static final String TAG = "AviExtractor";
    private AviMainHeaderChunk aviHeader;
    private ChunkReader currentChunkReader;
    private int idx1BodySize;
    private long pendingReposition;
    private boolean seekMapHasBeenOutput;
    private int state;
    private final ParsableByteArray scratch = new ParsableByteArray(12);
    private final ChunkHeaderHolder chunkHeaderHolder = new ChunkHeaderHolder();
    private ExtractorOutput extractorOutput = new DummyExtractorOutput();
    private ChunkReader[] chunkReaders = new ChunkReader[0];
    private long moviStart = -1;
    private long moviEnd = -1;
    private int hdrlSize = -1;
    private long durationUs = -9223372036854775807L;

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.state = 0;
        this.extractorOutput = extractorOutput;
        this.pendingReposition = -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        extractorInput.peekFully(this.scratch.getData(), 0, 12);
        this.scratch.setPosition(0);
        if (this.scratch.readLittleEndianInt() != 1179011410) {
            return false;
        }
        this.scratch.skipBytes(4);
        return this.scratch.readLittleEndianInt() == 541677121;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        if (resolvePendingReposition(extractorInput, positionHolder)) {
            return 1;
        }
        switch (this.state) {
            case 0:
                if (sniff(extractorInput)) {
                    extractorInput.skipFully(12);
                    this.state = 1;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("AVI Header List not found", null);
            case 1:
                extractorInput.readFully(this.scratch.getData(), 0, 12);
                this.scratch.setPosition(0);
                this.chunkHeaderHolder.populateWithListHeaderFrom(this.scratch);
                if (this.chunkHeaderHolder.listType != 1819436136) {
                    throw ParserException.createForMalformedContainer("hdrl expected, found: " + this.chunkHeaderHolder.listType, null);
                }
                this.hdrlSize = this.chunkHeaderHolder.size;
                this.state = 2;
                return 0;
            case 2:
                int i = this.hdrlSize - 4;
                ParsableByteArray parsableByteArray = new ParsableByteArray(i);
                extractorInput.readFully(parsableByteArray.getData(), 0, i);
                parseHdrlBody(parsableByteArray);
                this.state = 3;
                return 0;
            case 3:
                if (this.moviStart != -1) {
                    long position = extractorInput.getPosition();
                    long j = this.moviStart;
                    if (position != j) {
                        this.pendingReposition = j;
                        return 0;
                    }
                }
                extractorInput.peekFully(this.scratch.getData(), 0, 12);
                extractorInput.resetPeekPosition();
                this.scratch.setPosition(0);
                this.chunkHeaderHolder.populateFrom(this.scratch);
                int readLittleEndianInt = this.scratch.readLittleEndianInt();
                if (this.chunkHeaderHolder.chunkType == 1179011410) {
                    extractorInput.skipFully(12);
                    return 0;
                }
                if (this.chunkHeaderHolder.chunkType != 1414744396 || readLittleEndianInt != 1769369453) {
                    this.pendingReposition = extractorInput.getPosition() + this.chunkHeaderHolder.size + 8;
                    return 0;
                }
                long position2 = extractorInput.getPosition();
                this.moviStart = position2;
                this.moviEnd = position2 + this.chunkHeaderHolder.size + 8;
                if (!this.seekMapHasBeenOutput) {
                    if (((AviMainHeaderChunk) Assertions.checkNotNull(this.aviHeader)).hasIndex()) {
                        this.state = 4;
                        this.pendingReposition = this.moviEnd;
                        return 0;
                    }
                    this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                    this.seekMapHasBeenOutput = true;
                }
                this.pendingReposition = extractorInput.getPosition() + 12;
                this.state = 6;
                return 0;
            case 4:
                extractorInput.readFully(this.scratch.getData(), 0, 8);
                this.scratch.setPosition(0);
                int readLittleEndianInt2 = this.scratch.readLittleEndianInt();
                int readLittleEndianInt3 = this.scratch.readLittleEndianInt();
                if (readLittleEndianInt2 == 829973609) {
                    this.state = 5;
                    this.idx1BodySize = readLittleEndianInt3;
                } else {
                    this.pendingReposition = extractorInput.getPosition() + readLittleEndianInt3;
                }
                return 0;
            case 5:
                ParsableByteArray parsableByteArray2 = new ParsableByteArray(this.idx1BodySize);
                extractorInput.readFully(parsableByteArray2.getData(), 0, this.idx1BodySize);
                parseIdx1Body(parsableByteArray2);
                this.state = 6;
                this.pendingReposition = this.moviStart;
                return 0;
            case 6:
                return readMoviChunks(extractorInput);
            default:
                throw new AssertionError();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.pendingReposition = -1L;
        this.currentChunkReader = null;
        for (ChunkReader chunkReader : this.chunkReaders) {
            chunkReader.seekToPosition(j);
        }
        if (j != 0) {
            this.state = 6;
        } else if (this.chunkReaders.length == 0) {
            this.state = 0;
        } else {
            this.state = 3;
        }
    }

    private boolean resolvePendingReposition(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z;
        if (this.pendingReposition != -1) {
            long position = extractorInput.getPosition();
            long j = this.pendingReposition;
            if (j < position || j > RELOAD_MINIMUM_SEEK_DISTANCE + position) {
                positionHolder.position = j;
                z = true;
                this.pendingReposition = -1L;
                return z;
            }
            extractorInput.skipFully((int) (j - position));
        }
        z = false;
        this.pendingReposition = -1L;
        return z;
    }

    private void parseHdrlBody(ParsableByteArray parsableByteArray) throws IOException {
        ListChunk parseFrom = ListChunk.parseFrom(1819436136, parsableByteArray);
        if (parseFrom.getType() != 1819436136) {
            throw ParserException.createForMalformedContainer("Unexpected header list type " + parseFrom.getType(), null);
        }
        AviMainHeaderChunk aviMainHeaderChunk = (AviMainHeaderChunk) parseFrom.getChild(AviMainHeaderChunk.class);
        if (aviMainHeaderChunk == null) {
            throw ParserException.createForMalformedContainer("AviHeader not found", null);
        }
        this.aviHeader = aviMainHeaderChunk;
        this.durationUs = aviMainHeaderChunk.totalFrames * aviMainHeaderChunk.frameDurationUs;
        ArrayList arrayList = new ArrayList();
        UnmodifiableIterator<AviChunk> it = parseFrom.children.iterator();
        int i = 0;
        while (it.hasNext()) {
            AviChunk next = it.next();
            if (next.getType() == 1819440243) {
                int i2 = i + 1;
                ChunkReader processStreamList = processStreamList((ListChunk) next, i);
                if (processStreamList != null) {
                    arrayList.add(processStreamList);
                }
                i = i2;
            }
        }
        this.chunkReaders = (ChunkReader[]) arrayList.toArray(new ChunkReader[0]);
        this.extractorOutput.endTracks();
    }

    private void parseIdx1Body(ParsableByteArray parsableByteArray) {
        long peekSeekOffset = peekSeekOffset(parsableByteArray);
        while (parsableByteArray.bytesLeft() >= 16) {
            int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
            int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
            long readLittleEndianInt3 = parsableByteArray.readLittleEndianInt() + peekSeekOffset;
            parsableByteArray.readLittleEndianInt();
            ChunkReader chunkReader = getChunkReader(readLittleEndianInt);
            if (chunkReader != null) {
                if ((readLittleEndianInt2 & 16) == 16) {
                    chunkReader.appendKeyFrameToIndex(readLittleEndianInt3);
                }
                chunkReader.incrementIndexChunkCount();
            }
        }
        for (ChunkReader chunkReader2 : this.chunkReaders) {
            chunkReader2.compactIndex();
        }
        this.seekMapHasBeenOutput = true;
        this.extractorOutput.seekMap(new AviSeekMap(this.durationUs));
    }

    private long peekSeekOffset(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() < 16) {
            return 0L;
        }
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(8);
        long readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        long j = this.moviStart;
        long j2 = readLittleEndianInt <= j ? j + 8 : 0L;
        parsableByteArray.setPosition(position);
        return j2;
    }

    private ChunkReader getChunkReader(int i) {
        for (ChunkReader chunkReader : this.chunkReaders) {
            if (chunkReader.handlesChunkId(i)) {
                return chunkReader;
            }
        }
        return null;
    }

    private int readMoviChunks(ExtractorInput extractorInput) throws IOException {
        if (extractorInput.getPosition() >= this.moviEnd) {
            return -1;
        }
        ChunkReader chunkReader = this.currentChunkReader;
        if (chunkReader != null) {
            if (chunkReader.onChunkData(extractorInput)) {
                this.currentChunkReader = null;
            }
        } else {
            alignInputToEvenPosition(extractorInput);
            extractorInput.peekFully(this.scratch.getData(), 0, 12);
            this.scratch.setPosition(0);
            int readLittleEndianInt = this.scratch.readLittleEndianInt();
            if (readLittleEndianInt == 1414744396) {
                this.scratch.setPosition(8);
                extractorInput.skipFully(this.scratch.readLittleEndianInt() != 1769369453 ? 8 : 12);
                extractorInput.resetPeekPosition();
                return 0;
            }
            int readLittleEndianInt2 = this.scratch.readLittleEndianInt();
            if (readLittleEndianInt == 1263424842) {
                this.pendingReposition = extractorInput.getPosition() + readLittleEndianInt2 + 8;
                return 0;
            }
            extractorInput.skipFully(8);
            extractorInput.resetPeekPosition();
            ChunkReader chunkReader2 = getChunkReader(readLittleEndianInt);
            if (chunkReader2 == null) {
                this.pendingReposition = extractorInput.getPosition() + readLittleEndianInt2;
                return 0;
            }
            chunkReader2.onChunkStart(readLittleEndianInt2);
            this.currentChunkReader = chunkReader2;
        }
        return 0;
    }

    private ChunkReader processStreamList(ListChunk listChunk, int i) {
        AviStreamHeaderChunk aviStreamHeaderChunk = (AviStreamHeaderChunk) listChunk.getChild(AviStreamHeaderChunk.class);
        StreamFormatChunk streamFormatChunk = (StreamFormatChunk) listChunk.getChild(StreamFormatChunk.class);
        if (aviStreamHeaderChunk == null) {
            Log.w(TAG, "Missing Stream Header");
            return null;
        }
        if (streamFormatChunk == null) {
            Log.w(TAG, "Missing Stream Format");
            return null;
        }
        long durationUs = aviStreamHeaderChunk.getDurationUs();
        Format format = streamFormatChunk.format;
        Format.Builder buildUpon = format.buildUpon();
        buildUpon.setId(i);
        int i2 = aviStreamHeaderChunk.suggestedBufferSize;
        if (i2 != 0) {
            buildUpon.setMaxInputSize(i2);
        }
        StreamNameChunk streamNameChunk = (StreamNameChunk) listChunk.getChild(StreamNameChunk.class);
        if (streamNameChunk != null) {
            buildUpon.setLabel(streamNameChunk.name);
        }
        int trackType = MimeTypes.getTrackType(format.sampleMimeType);
        if (trackType != 1 && trackType != 2) {
            return null;
        }
        TrackOutput track = this.extractorOutput.track(i, trackType);
        track.format(buildUpon.build());
        ChunkReader chunkReader = new ChunkReader(i, trackType, durationUs, aviStreamHeaderChunk.length, track);
        this.durationUs = durationUs;
        return chunkReader;
    }

    private static void alignInputToEvenPosition(ExtractorInput extractorInput) throws IOException {
        if ((extractorInput.getPosition() & 1) == 1) {
            extractorInput.skipFully(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class AviSeekMap implements SeekMap {
        private final long durationUs;

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        public AviSeekMap(long j) {
            this.durationUs = j;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            SeekMap.SeekPoints seekPoints = AviExtractor.this.chunkReaders[0].getSeekPoints(j);
            for (int i = 1; i < AviExtractor.this.chunkReaders.length; i++) {
                SeekMap.SeekPoints seekPoints2 = AviExtractor.this.chunkReaders[i].getSeekPoints(j);
                if (seekPoints2.first.position < seekPoints.first.position) {
                    seekPoints = seekPoints2;
                }
            }
            return seekPoints;
        }
    }

    /* loaded from: classes2.dex */
    private static class ChunkHeaderHolder {
        public int chunkType;
        public int listType;
        public int size;

        private ChunkHeaderHolder() {
        }

        public void populateWithListHeaderFrom(ParsableByteArray parsableByteArray) throws ParserException {
            populateFrom(parsableByteArray);
            if (this.chunkType != 1414744396) {
                throw ParserException.createForMalformedContainer("LIST expected, found: " + this.chunkType, null);
            }
            this.listType = parsableByteArray.readLittleEndianInt();
        }

        public void populateFrom(ParsableByteArray parsableByteArray) {
            this.chunkType = parsableByteArray.readLittleEndianInt();
            this.size = parsableByteArray.readLittleEndianInt();
            this.listType = 0;
        }
    }
}
