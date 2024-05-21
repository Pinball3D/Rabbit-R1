package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class Ac4Extractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.ts.Ac4Extractor$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Ac4Extractor.lambda$static$0();
        }
    };
    private static final int FRAME_HEADER_SIZE = 7;
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int READ_BUFFER_SIZE = 16384;
    private final Ac4Reader reader = new Ac4Reader();
    private final ParsableByteArray sampleData = new ParsableByteArray(16384);
    private boolean startedPacket;

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new Ac4Extractor()};
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i = 0;
        while (true) {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 10);
            parsableByteArray.setPosition(0);
            if (parsableByteArray.readUnsignedInt24() != 4801587) {
                break;
            }
            parsableByteArray.skipBytes(3);
            int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
            i += readSynchSafeInt + 10;
            extractorInput.advancePeekPosition(readSynchSafeInt);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        int i2 = 0;
        int i3 = i;
        while (true) {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 7);
            parsableByteArray.setPosition(0);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            if (readUnsignedShort == 44096 || readUnsignedShort == 44097) {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int parseAc4SyncframeSize = Ac4Util.parseAc4SyncframeSize(parsableByteArray.getData(), readUnsignedShort);
                if (parseAc4SyncframeSize == -1) {
                    return false;
                }
                extractorInput.advancePeekPosition(parseAc4SyncframeSize - 7);
            } else {
                extractorInput.resetPeekPosition();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                extractorInput.advancePeekPosition(i3);
                i2 = 0;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.reader.createTracks(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
        extractorOutput.seekMap(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.startedPacket = false;
        this.reader.seek();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int read = extractorInput.read(this.sampleData.getData(), 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.sampleData.setPosition(0);
        this.sampleData.setLimit(read);
        if (!this.startedPacket) {
            this.reader.packetStarted(0L, 4);
            this.startedPacket = true;
        }
        this.reader.consume(this.sampleData);
        return 0;
    }
}
