package androidx.media3.extractor.text;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class SubtitleExtractor implements Extractor {
    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private static final int STATE_CREATED = 0;
    private static final int STATE_EXTRACTING = 2;
    private static final int STATE_FINISHED = 4;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_RELEASED = 5;
    private static final int STATE_SEEKING = 3;
    private int bytesRead;
    private ExtractorOutput extractorOutput;
    private final Format format;
    private final SubtitleDecoder subtitleDecoder;
    private TrackOutput trackOutput;
    private final CueEncoder cueEncoder = new CueEncoder();
    private final ParsableByteArray subtitleData = new ParsableByteArray();
    private final List<Long> timestamps = new ArrayList();
    private final List<ParsableByteArray> samples = new ArrayList();
    private int state = 0;
    private long seekTimeUs = -9223372036854775807L;

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return true;
    }

    public SubtitleExtractor(SubtitleDecoder subtitleDecoder, Format format) {
        this.subtitleDecoder = subtitleDecoder;
        this.format = format.buildUpon().setSampleMimeType("text/x-exoplayer-cues").setCodecs(format.sampleMimeType).build();
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        Assertions.checkState(this.state == 0);
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 3);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(new IndexSeekMap(new long[]{0}, new long[]{0}, -9223372036854775807L));
        this.trackOutput.format(this.format);
        this.state = 1;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i = this.state;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        if (this.state == 1) {
            this.subtitleData.reset(extractorInput.getLength() != -1 ? Ints.checkedCast(extractorInput.getLength()) : 1024);
            this.bytesRead = 0;
            this.state = 2;
        }
        if (this.state == 2 && readFromInput(extractorInput)) {
            decode();
            writeToOutput();
            this.state = 4;
        }
        if (this.state == 3 && skipInput(extractorInput)) {
            writeToOutput();
            this.state = 4;
        }
        return this.state == 4 ? -1 : 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        int i = this.state;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        this.seekTimeUs = j2;
        if (this.state == 2) {
            this.state = 1;
        }
        if (this.state == 4) {
            this.state = 3;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        if (this.state == 5) {
            return;
        }
        this.subtitleDecoder.release();
        this.state = 5;
    }

    private boolean skipInput(ExtractorInput extractorInput) throws IOException {
        return extractorInput.skip((extractorInput.getLength() > (-1L) ? 1 : (extractorInput.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.checkedCast(extractorInput.getLength()) : 1024) == -1;
    }

    private boolean readFromInput(ExtractorInput extractorInput) throws IOException {
        int capacity = this.subtitleData.capacity();
        int i = this.bytesRead;
        if (capacity == i) {
            this.subtitleData.ensureCapacity(i + 1024);
        }
        int read = extractorInput.read(this.subtitleData.getData(), this.bytesRead, this.subtitleData.capacity() - this.bytesRead);
        if (read != -1) {
            this.bytesRead += read;
        }
        long length = extractorInput.getLength();
        return (length != -1 && ((long) this.bytesRead) == length) || read == -1;
    }

    private void decode() throws IOException {
        try {
            SubtitleInputBuffer dequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            while (dequeueInputBuffer == null) {
                Thread.sleep(5L);
                dequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            }
            dequeueInputBuffer.ensureSpaceForWrite(this.bytesRead);
            dequeueInputBuffer.data.put(this.subtitleData.getData(), 0, this.bytesRead);
            dequeueInputBuffer.data.limit(this.bytesRead);
            this.subtitleDecoder.queueInputBuffer(dequeueInputBuffer);
            SubtitleOutputBuffer dequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            while (dequeueOutputBuffer == null) {
                Thread.sleep(5L);
                dequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            }
            for (int i = 0; i < dequeueOutputBuffer.getEventTimeCount(); i++) {
                byte[] encode = this.cueEncoder.encode(dequeueOutputBuffer.getCues(dequeueOutputBuffer.getEventTime(i)));
                this.timestamps.add(Long.valueOf(dequeueOutputBuffer.getEventTime(i)));
                this.samples.add(new ParsableByteArray(encode));
            }
            dequeueOutputBuffer.release();
        } catch (SubtitleDecoderException e) {
            throw ParserException.createForMalformedContainer("SubtitleDecoder failed.", e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    private void writeToOutput() {
        Assertions.checkStateNotNull(this.trackOutput);
        Assertions.checkState(this.timestamps.size() == this.samples.size());
        long j = this.seekTimeUs;
        for (int binarySearchFloor = j == -9223372036854775807L ? 0 : Util.binarySearchFloor((List<? extends Comparable<? super Long>>) this.timestamps, Long.valueOf(j), true, true); binarySearchFloor < this.samples.size(); binarySearchFloor++) {
            ParsableByteArray parsableByteArray = this.samples.get(binarySearchFloor);
            parsableByteArray.setPosition(0);
            int length = parsableByteArray.getData().length;
            this.trackOutput.sampleData(parsableByteArray, length);
            this.trackOutput.sampleMetadata(this.timestamps.get(binarySearchFloor).longValue(), 1, length, 0, null);
        }
    }
}
