package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class LatmReader implements ElementaryStreamReader {
    private static final int INITIAL_BUFFER_SIZE = 1024;
    private static final int STATE_FINDING_SYNC_1 = 0;
    private static final int STATE_FINDING_SYNC_2 = 1;
    private static final int STATE_READING_HEADER = 2;
    private static final int STATE_READING_SAMPLE = 3;
    private static final int SYNC_BYTE_FIRST = 86;
    private static final int SYNC_BYTE_SECOND = 224;
    private int audioMuxVersionA;
    private int bytesRead;
    private int channelCount;
    private String codecs;
    private Format format;
    private String formatId;
    private int frameLengthType;
    private final String language;
    private int numSubframes;
    private long otherDataLenBits;
    private boolean otherDataPresent;
    private TrackOutput output;
    private final ParsableBitArray sampleBitArray;
    private final ParsableByteArray sampleDataBuffer;
    private long sampleDurationUs;
    private int sampleRateHz;
    private int sampleSize;
    private int secondHeaderByte;
    private int state;
    private boolean streamMuxRead;
    private long timeUs;

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != -9223372036854775807L) {
            this.timeUs = j;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.timeUs = -9223372036854775807L;
        this.streamMuxRead = false;
    }

    public LatmReader(String str) {
        this.language = str;
        ParsableByteArray parsableByteArray = new ParsableByteArray(1024);
        this.sampleDataBuffer = parsableByteArray;
        this.sampleBitArray = new ParsableBitArray(parsableByteArray.getData());
        this.timeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
        this.formatId = trackIdGenerator.getFormatId();
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        Assertions.checkStateNotNull(this.output);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i != 0) {
                if (i == 1) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    if ((readUnsignedByte & 224) == 224) {
                        this.secondHeaderByte = readUnsignedByte;
                        this.state = 2;
                    } else if (readUnsignedByte != SYNC_BYTE_FIRST) {
                        this.state = 0;
                    }
                } else if (i == 2) {
                    int readUnsignedByte2 = ((this.secondHeaderByte & (-225)) << 8) | parsableByteArray.readUnsignedByte();
                    this.sampleSize = readUnsignedByte2;
                    if (readUnsignedByte2 > this.sampleDataBuffer.getData().length) {
                        resetBufferForSize(this.sampleSize);
                    }
                    this.bytesRead = 0;
                    this.state = 3;
                } else if (i == 3) {
                    int min = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
                    parsableByteArray.readBytes(this.sampleBitArray.data, this.bytesRead, min);
                    int i2 = this.bytesRead + min;
                    this.bytesRead = i2;
                    if (i2 == this.sampleSize) {
                        this.sampleBitArray.setPosition(0);
                        parseAudioMuxElement(this.sampleBitArray);
                        this.state = 0;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (parsableByteArray.readUnsignedByte() == SYNC_BYTE_FIRST) {
                this.state = 1;
            }
        }
    }

    @RequiresNonNull({"output"})
    private void parseAudioMuxElement(ParsableBitArray parsableBitArray) throws ParserException {
        if (!parsableBitArray.readBit()) {
            this.streamMuxRead = true;
            parseStreamMuxConfig(parsableBitArray);
        } else if (!this.streamMuxRead) {
            return;
        }
        if (this.audioMuxVersionA != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (this.numSubframes != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        parsePayloadMux(parsableBitArray, parsePayloadLengthInfo(parsableBitArray));
        if (this.otherDataPresent) {
            parsableBitArray.skipBits((int) this.otherDataLenBits);
        }
    }

    @RequiresNonNull({"output"})
    private void parseStreamMuxConfig(ParsableBitArray parsableBitArray) throws ParserException {
        boolean readBit;
        int readBits = parsableBitArray.readBits(1);
        int readBits2 = readBits == 1 ? parsableBitArray.readBits(1) : 0;
        this.audioMuxVersionA = readBits2;
        if (readBits2 == 0) {
            if (readBits == 1) {
                latmGetValue(parsableBitArray);
            }
            if (!parsableBitArray.readBit()) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            this.numSubframes = parsableBitArray.readBits(6);
            int readBits3 = parsableBitArray.readBits(4);
            int readBits4 = parsableBitArray.readBits(3);
            if (readBits3 != 0 || readBits4 != 0) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            if (readBits == 0) {
                int position = parsableBitArray.getPosition();
                int parseAudioSpecificConfig = parseAudioSpecificConfig(parsableBitArray);
                parsableBitArray.setPosition(position);
                byte[] bArr = new byte[(parseAudioSpecificConfig + 7) / 8];
                parsableBitArray.readBits(bArr, 0, parseAudioSpecificConfig);
                Format build = new Format.Builder().setId(this.formatId).setSampleMimeType("audio/mp4a-latm").setCodecs(this.codecs).setChannelCount(this.channelCount).setSampleRate(this.sampleRateHz).setInitializationData(Collections.singletonList(bArr)).setLanguage(this.language).build();
                if (!build.equals(this.format)) {
                    this.format = build;
                    this.sampleDurationUs = 1024000000 / build.sampleRate;
                    this.output.format(build);
                }
            } else {
                parsableBitArray.skipBits(((int) latmGetValue(parsableBitArray)) - parseAudioSpecificConfig(parsableBitArray));
            }
            parseFrameLength(parsableBitArray);
            boolean readBit2 = parsableBitArray.readBit();
            this.otherDataPresent = readBit2;
            this.otherDataLenBits = 0L;
            if (readBit2) {
                if (readBits == 1) {
                    this.otherDataLenBits = latmGetValue(parsableBitArray);
                }
                do {
                    readBit = parsableBitArray.readBit();
                    this.otherDataLenBits = (this.otherDataLenBits << 8) + parsableBitArray.readBits(8);
                } while (readBit);
            }
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(8);
                return;
            }
            return;
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    private void parseFrameLength(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(3);
        this.frameLengthType = readBits;
        if (readBits == 0) {
            parsableBitArray.skipBits(8);
            return;
        }
        if (readBits == 1) {
            parsableBitArray.skipBits(9);
            return;
        }
        if (readBits == 3 || readBits == 4 || readBits == 5) {
            parsableBitArray.skipBits(6);
        } else {
            if (readBits == 6 || readBits == 7) {
                parsableBitArray.skipBits(1);
                return;
            }
            throw new IllegalStateException();
        }
    }

    private int parseAudioSpecificConfig(ParsableBitArray parsableBitArray) throws ParserException {
        int bitsLeft = parsableBitArray.bitsLeft();
        AacUtil.Config parseAudioSpecificConfig = AacUtil.parseAudioSpecificConfig(parsableBitArray, true);
        this.codecs = parseAudioSpecificConfig.codecs;
        this.sampleRateHz = parseAudioSpecificConfig.sampleRateHz;
        this.channelCount = parseAudioSpecificConfig.channelCount;
        return bitsLeft - parsableBitArray.bitsLeft();
    }

    private int parsePayloadLengthInfo(ParsableBitArray parsableBitArray) throws ParserException {
        int readBits;
        if (this.frameLengthType != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        int i = 0;
        do {
            readBits = parsableBitArray.readBits(8);
            i += readBits;
        } while (readBits == 255);
        return i;
    }

    @RequiresNonNull({"output"})
    private void parsePayloadMux(ParsableBitArray parsableBitArray, int i) {
        int position = parsableBitArray.getPosition();
        if ((position & 7) == 0) {
            this.sampleDataBuffer.setPosition(position >> 3);
        } else {
            parsableBitArray.readBits(this.sampleDataBuffer.getData(), 0, i * 8);
            this.sampleDataBuffer.setPosition(0);
        }
        this.output.sampleData(this.sampleDataBuffer, i);
        long j = this.timeUs;
        if (j != -9223372036854775807L) {
            this.output.sampleMetadata(j, 1, i, 0, null);
            this.timeUs += this.sampleDurationUs;
        }
    }

    private void resetBufferForSize(int i) {
        this.sampleDataBuffer.reset(i);
        this.sampleBitArray.reset(this.sampleDataBuffer.getData());
    }

    private static long latmGetValue(ParsableBitArray parsableBitArray) {
        return parsableBitArray.readBits((parsableBitArray.readBits(2) + 1) * 8);
    }
}
