package androidx.media3.extractor.flac;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacMetadataReader;
import androidx.media3.extractor.FlacSeekTableSeekMap;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class FlacExtractor implements Extractor {
    private static final int BUFFER_LENGTH = 32768;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.flac.FlacExtractor$$ExternalSyntheticLambda0
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return FlacExtractor.lambda$static$0();
        }
    };
    public static final int FLAG_DISABLE_ID3_METADATA = 1;
    private static final int SAMPLE_NUMBER_UNKNOWN = -1;
    private static final int STATE_GET_FRAME_START_MARKER = 4;
    private static final int STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES = 1;
    private static final int STATE_READ_FRAMES = 5;
    private static final int STATE_READ_ID3_METADATA = 0;
    private static final int STATE_READ_METADATA_BLOCKS = 3;
    private static final int STATE_READ_STREAM_MARKER = 2;
    private FlacBinarySearchSeeker binarySearchSeeker;
    private final ParsableByteArray buffer;
    private int currentFrameBytesWritten;
    private long currentFrameFirstSampleNumber;
    private ExtractorOutput extractorOutput;
    private FlacStreamMetadata flacStreamMetadata;
    private int frameStartMarker;
    private Metadata id3Metadata;
    private final boolean id3MetadataDisabled;
    private int minFrameSize;
    private final FlacFrameReader.SampleNumberHolder sampleNumberHolder;
    private int state;
    private final byte[] streamMarkerAndInfoBlock;
    private TrackOutput trackOutput;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Flags {
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new FlacExtractor()};
    }

    public FlacExtractor() {
        this(0);
    }

    public FlacExtractor(int i) {
        this.streamMarkerAndInfoBlock = new byte[42];
        this.buffer = new ParsableByteArray(new byte[32768], 0);
        this.id3MetadataDisabled = (i & 1) != 0;
        this.sampleNumberHolder = new FlacFrameReader.SampleNumberHolder();
        this.state = 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.peekId3Metadata(extractorInput, false);
        return FlacMetadataReader.checkAndPeekStreamMarker(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i = this.state;
        if (i == 0) {
            readId3Metadata(extractorInput);
            return 0;
        }
        if (i == 1) {
            getStreamMarkerAndInfoBlockBytes(extractorInput);
            return 0;
        }
        if (i == 2) {
            readStreamMarker(extractorInput);
            return 0;
        }
        if (i == 3) {
            readMetadataBlocks(extractorInput);
            return 0;
        }
        if (i == 4) {
            getFrameStartMarker(extractorInput);
            return 0;
        }
        if (i == 5) {
            return readFrames(extractorInput, positionHolder);
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.state = 0;
        } else {
            FlacBinarySearchSeeker flacBinarySearchSeeker = this.binarySearchSeeker;
            if (flacBinarySearchSeeker != null) {
                flacBinarySearchSeeker.setSeekTargetUs(j2);
            }
        }
        this.currentFrameFirstSampleNumber = j2 != 0 ? -1L : 0L;
        this.currentFrameBytesWritten = 0;
        this.buffer.reset(0);
    }

    private void readId3Metadata(ExtractorInput extractorInput) throws IOException {
        this.id3Metadata = FlacMetadataReader.readId3Metadata(extractorInput, !this.id3MetadataDisabled);
        this.state = 1;
    }

    private void getStreamMarkerAndInfoBlockBytes(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = this.streamMarkerAndInfoBlock;
        extractorInput.peekFully(bArr, 0, bArr.length);
        extractorInput.resetPeekPosition();
        this.state = 2;
    }

    private void readStreamMarker(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.readStreamMarker(extractorInput);
        this.state = 3;
    }

    private void readMetadataBlocks(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.FlacStreamMetadataHolder flacStreamMetadataHolder = new FlacMetadataReader.FlacStreamMetadataHolder(this.flacStreamMetadata);
        boolean z = false;
        while (!z) {
            z = FlacMetadataReader.readMetadataBlock(extractorInput, flacStreamMetadataHolder);
            this.flacStreamMetadata = (FlacStreamMetadata) Util.castNonNull(flacStreamMetadataHolder.flacStreamMetadata);
        }
        Assertions.checkNotNull(this.flacStreamMetadata);
        this.minFrameSize = Math.max(this.flacStreamMetadata.minFrameSize, 6);
        ((TrackOutput) Util.castNonNull(this.trackOutput)).format(this.flacStreamMetadata.getFormat(this.streamMarkerAndInfoBlock, this.id3Metadata));
        this.state = 4;
    }

    private void getFrameStartMarker(ExtractorInput extractorInput) throws IOException {
        this.frameStartMarker = FlacMetadataReader.getFrameStartMarker(extractorInput);
        ((ExtractorOutput) Util.castNonNull(this.extractorOutput)).seekMap(getSeekMap(extractorInput.getPosition(), extractorInput.getLength()));
        this.state = 5;
    }

    private int readFrames(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z;
        Assertions.checkNotNull(this.trackOutput);
        Assertions.checkNotNull(this.flacStreamMetadata);
        FlacBinarySearchSeeker flacBinarySearchSeeker = this.binarySearchSeeker;
        if (flacBinarySearchSeeker != null && flacBinarySearchSeeker.isSeeking()) {
            return this.binarySearchSeeker.handlePendingSeek(extractorInput, positionHolder);
        }
        if (this.currentFrameFirstSampleNumber == -1) {
            this.currentFrameFirstSampleNumber = FlacFrameReader.getFirstSampleNumber(extractorInput, this.flacStreamMetadata);
            return 0;
        }
        int limit = this.buffer.limit();
        if (limit < 32768) {
            int read = extractorInput.read(this.buffer.getData(), limit, 32768 - limit);
            z = read == -1;
            if (!z) {
                this.buffer.setLimit(limit + read);
            } else if (this.buffer.bytesLeft() == 0) {
                outputSampleMetadata();
                return -1;
            }
        } else {
            z = false;
        }
        int position = this.buffer.getPosition();
        int i = this.currentFrameBytesWritten;
        int i2 = this.minFrameSize;
        if (i < i2) {
            ParsableByteArray parsableByteArray = this.buffer;
            parsableByteArray.skipBytes(Math.min(i2 - i, parsableByteArray.bytesLeft()));
        }
        long findFrame = findFrame(this.buffer, z);
        int position2 = this.buffer.getPosition() - position;
        this.buffer.setPosition(position);
        this.trackOutput.sampleData(this.buffer, position2);
        this.currentFrameBytesWritten += position2;
        if (findFrame != -1) {
            outputSampleMetadata();
            this.currentFrameBytesWritten = 0;
            this.currentFrameFirstSampleNumber = findFrame;
        }
        if (this.buffer.bytesLeft() < 16) {
            int bytesLeft = this.buffer.bytesLeft();
            System.arraycopy(this.buffer.getData(), this.buffer.getPosition(), this.buffer.getData(), 0, bytesLeft);
            this.buffer.setPosition(0);
            this.buffer.setLimit(bytesLeft);
        }
        return 0;
    }

    private SeekMap getSeekMap(long j, long j2) {
        Assertions.checkNotNull(this.flacStreamMetadata);
        if (this.flacStreamMetadata.seekTable != null) {
            return new FlacSeekTableSeekMap(this.flacStreamMetadata, j);
        }
        if (j2 != -1 && this.flacStreamMetadata.totalSamples > 0) {
            FlacBinarySearchSeeker flacBinarySearchSeeker = new FlacBinarySearchSeeker(this.flacStreamMetadata, this.frameStartMarker, j, j2);
            this.binarySearchSeeker = flacBinarySearchSeeker;
            return flacBinarySearchSeeker.getSeekMap();
        }
        return new SeekMap.Unseekable(this.flacStreamMetadata.getDurationUs());
    }

    private long findFrame(ParsableByteArray parsableByteArray, boolean z) {
        boolean z2;
        Assertions.checkNotNull(this.flacStreamMetadata);
        int position = parsableByteArray.getPosition();
        while (position <= parsableByteArray.limit() - 16) {
            parsableByteArray.setPosition(position);
            if (FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {
                parsableByteArray.setPosition(position);
                return this.sampleNumberHolder.sampleNumber;
            }
            position++;
        }
        if (z) {
            while (position <= parsableByteArray.limit() - this.minFrameSize) {
                parsableByteArray.setPosition(position);
                try {
                    z2 = FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder);
                } catch (IndexOutOfBoundsException unused) {
                    z2 = false;
                }
                if (parsableByteArray.getPosition() <= parsableByteArray.limit() && z2) {
                    parsableByteArray.setPosition(position);
                    return this.sampleNumberHolder.sampleNumber;
                }
                position++;
            }
            parsableByteArray.setPosition(parsableByteArray.limit());
            return -1L;
        }
        parsableByteArray.setPosition(position);
        return -1L;
    }

    private void outputSampleMetadata() {
        ((TrackOutput) Util.castNonNull(this.trackOutput)).sampleMetadata((this.currentFrameFirstSampleNumber * 1000000) / ((FlacStreamMetadata) Util.castNonNull(this.flacStreamMetadata)).sampleRate, 1, this.currentFrameBytesWritten, 0, null);
    }
}
