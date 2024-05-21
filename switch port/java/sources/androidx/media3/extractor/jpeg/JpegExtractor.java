package androidx.media3.extractor.jpeg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class JpegExtractor implements Extractor {
    private static final long EXIF_HEADER = 1165519206;
    private static final int EXIF_ID_CODE_LENGTH = 6;
    private static final String HEADER_XMP_APP1 = "http://ns.adobe.com/xap/1.0/";
    private static final int IMAGE_TRACK_ID = 1024;
    private static final int MARKER_APP0 = 65504;
    private static final int MARKER_APP1 = 65505;
    private static final int MARKER_SOI = 65496;
    private static final int MARKER_SOS = 65498;
    private static final int STATE_ENDED = 6;
    private static final int STATE_READING_MARKER = 0;
    private static final int STATE_READING_MOTION_PHOTO_VIDEO = 5;
    private static final int STATE_READING_SEGMENT = 2;
    private static final int STATE_READING_SEGMENT_LENGTH = 1;
    private static final int STATE_SNIFFING_MOTION_PHOTO_VIDEO = 4;
    private ExtractorOutput extractorOutput;
    private ExtractorInput lastExtractorInput;
    private int marker;
    private MotionPhotoMetadata motionPhotoMetadata;
    private Mp4Extractor mp4Extractor;
    private StartOffsetExtractorInput mp4ExtractorStartOffsetExtractorInput;
    private int segmentLength;
    private int state;
    private final ParsableByteArray scratch = new ParsableByteArray(6);
    private long mp4StartPosition = -1;

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        if (peekMarker(extractorInput) != MARKER_SOI) {
            return false;
        }
        int peekMarker = peekMarker(extractorInput);
        this.marker = peekMarker;
        if (peekMarker == MARKER_APP0) {
            advancePeekPositionToNextSegment(extractorInput);
            this.marker = peekMarker(extractorInput);
        }
        if (this.marker != MARKER_APP1) {
            return false;
        }
        extractorInput.advancePeekPosition(2);
        this.scratch.reset(6);
        extractorInput.peekFully(this.scratch.getData(), 0, 6);
        return this.scratch.readUnsignedInt() == EXIF_HEADER && this.scratch.readUnsignedShort() == 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i = this.state;
        if (i == 0) {
            readMarker(extractorInput);
            return 0;
        }
        if (i == 1) {
            readSegmentLength(extractorInput);
            return 0;
        }
        if (i == 2) {
            readSegment(extractorInput);
            return 0;
        }
        if (i == 4) {
            long position = extractorInput.getPosition();
            long j = this.mp4StartPosition;
            if (position != j) {
                positionHolder.position = j;
                return 1;
            }
            sniffMotionPhotoVideo(extractorInput);
            return 0;
        }
        if (i != 5) {
            if (i == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.mp4ExtractorStartOffsetExtractorInput == null || extractorInput != this.lastExtractorInput) {
            this.lastExtractorInput = extractorInput;
            this.mp4ExtractorStartOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
        }
        int read = ((Mp4Extractor) Assertions.checkNotNull(this.mp4Extractor)).read(this.mp4ExtractorStartOffsetExtractorInput, positionHolder);
        if (read == 1) {
            positionHolder.position += this.mp4StartPosition;
        }
        return read;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.state = 0;
            this.mp4Extractor = null;
        } else if (this.state == 5) {
            ((Mp4Extractor) Assertions.checkNotNull(this.mp4Extractor)).seek(j, j2);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        Mp4Extractor mp4Extractor = this.mp4Extractor;
        if (mp4Extractor != null) {
            mp4Extractor.release();
        }
    }

    private int peekMarker(ExtractorInput extractorInput) throws IOException {
        this.scratch.reset(2);
        extractorInput.peekFully(this.scratch.getData(), 0, 2);
        return this.scratch.readUnsignedShort();
    }

    private void advancePeekPositionToNextSegment(ExtractorInput extractorInput) throws IOException {
        this.scratch.reset(2);
        extractorInput.peekFully(this.scratch.getData(), 0, 2);
        extractorInput.advancePeekPosition(this.scratch.readUnsignedShort() - 2);
    }

    private void readMarker(ExtractorInput extractorInput) throws IOException {
        this.scratch.reset(2);
        extractorInput.readFully(this.scratch.getData(), 0, 2);
        int readUnsignedShort = this.scratch.readUnsignedShort();
        this.marker = readUnsignedShort;
        if (readUnsignedShort == MARKER_SOS) {
            if (this.mp4StartPosition != -1) {
                this.state = 4;
                return;
            } else {
                endReadingWithImageTrack();
                return;
            }
        }
        if ((readUnsignedShort < 65488 || readUnsignedShort > 65497) && readUnsignedShort != 65281) {
            this.state = 1;
        }
    }

    private void readSegmentLength(ExtractorInput extractorInput) throws IOException {
        this.scratch.reset(2);
        extractorInput.readFully(this.scratch.getData(), 0, 2);
        this.segmentLength = this.scratch.readUnsignedShort() - 2;
        this.state = 2;
    }

    private void readSegment(ExtractorInput extractorInput) throws IOException {
        String readNullTerminatedString;
        if (this.marker == MARKER_APP1) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(this.segmentLength);
            extractorInput.readFully(parsableByteArray.getData(), 0, this.segmentLength);
            if (this.motionPhotoMetadata == null && HEADER_XMP_APP1.equals(parsableByteArray.readNullTerminatedString()) && (readNullTerminatedString = parsableByteArray.readNullTerminatedString()) != null) {
                MotionPhotoMetadata motionPhotoMetadata = getMotionPhotoMetadata(readNullTerminatedString, extractorInput.getLength());
                this.motionPhotoMetadata = motionPhotoMetadata;
                if (motionPhotoMetadata != null) {
                    this.mp4StartPosition = motionPhotoMetadata.videoStartPosition;
                }
            }
        } else {
            extractorInput.skipFully(this.segmentLength);
        }
        this.state = 0;
    }

    private void sniffMotionPhotoVideo(ExtractorInput extractorInput) throws IOException {
        if (!extractorInput.peekFully(this.scratch.getData(), 0, 1, true)) {
            endReadingWithImageTrack();
            return;
        }
        extractorInput.resetPeekPosition();
        if (this.mp4Extractor == null) {
            this.mp4Extractor = new Mp4Extractor();
        }
        StartOffsetExtractorInput startOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
        this.mp4ExtractorStartOffsetExtractorInput = startOffsetExtractorInput;
        if (this.mp4Extractor.sniff(startOffsetExtractorInput)) {
            this.mp4Extractor.init(new StartOffsetExtractorOutput(this.mp4StartPosition, (ExtractorOutput) Assertions.checkNotNull(this.extractorOutput)));
            startReadingMotionPhoto();
        } else {
            endReadingWithImageTrack();
        }
    }

    private void startReadingMotionPhoto() {
        outputImageTrack((Metadata.Entry) Assertions.checkNotNull(this.motionPhotoMetadata));
        this.state = 5;
    }

    private void endReadingWithImageTrack() {
        outputImageTrack(new Metadata.Entry[0]);
        ((ExtractorOutput) Assertions.checkNotNull(this.extractorOutput)).endTracks();
        this.extractorOutput.seekMap(new SeekMap.Unseekable(-9223372036854775807L));
        this.state = 6;
    }

    private void outputImageTrack(Metadata.Entry... entryArr) {
        ((ExtractorOutput) Assertions.checkNotNull(this.extractorOutput)).track(1024, 4).format(new Format.Builder().setContainerMimeType("image/jpeg").setMetadata(new Metadata(entryArr)).build());
    }

    private static MotionPhotoMetadata getMotionPhotoMetadata(String str, long j) throws IOException {
        MotionPhotoDescription parse;
        if (j == -1 || (parse = XmpMotionPhotoDescriptionParser.parse(str)) == null) {
            return null;
        }
        return parse.getMotionPhotoMetadata(j);
    }
}
