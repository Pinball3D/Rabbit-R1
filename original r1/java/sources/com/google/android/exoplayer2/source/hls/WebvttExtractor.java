package com.google.android.exoplayer2.source.hls;

import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.text.webvtt.WebvttParserUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class WebvttExtractor implements Extractor {
    private static final int HEADER_MAX_LENGTH = 9;
    private static final int HEADER_MIN_LENGTH = 6;
    private static final Pattern LOCAL_TIMESTAMP = Pattern.compile("LOCAL:([^,]+)");
    private static final Pattern MEDIA_TIMESTAMP = Pattern.compile("MPEGTS:(-?\\d+)");
    private final String language;
    private ExtractorOutput output;
    private int sampleSize;
    private final TimestampAdjuster timestampAdjuster;
    private final ParsableByteArray sampleDataWrapper = new ParsableByteArray();
    private byte[] sampleData = new byte[1024];

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    public WebvttExtractor(String str, TimestampAdjuster timestampAdjuster) {
        this.language = str;
        this.timestampAdjuster = timestampAdjuster;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        extractorInput.peekFully(this.sampleData, 0, 6, false);
        this.sampleDataWrapper.reset(this.sampleData, 6);
        if (WebvttParserUtil.isWebvttHeaderLine(this.sampleDataWrapper)) {
            return true;
        }
        extractorInput.peekFully(this.sampleData, 6, 3, false);
        this.sampleDataWrapper.reset(this.sampleData, 9);
        return WebvttParserUtil.isWebvttHeaderLine(this.sampleDataWrapper);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
        extractorOutput.seekMap(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkNotNull(this.output);
        int length = (int) extractorInput.getLength();
        int i = this.sampleSize;
        byte[] bArr = this.sampleData;
        if (i == bArr.length) {
            this.sampleData = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.sampleData;
        int i2 = this.sampleSize;
        int read = extractorInput.read(bArr2, i2, bArr2.length - i2);
        if (read != -1) {
            int i3 = this.sampleSize + read;
            this.sampleSize = i3;
            if (length == -1 || i3 != length) {
                return 0;
            }
        }
        processSample();
        return -1;
    }

    @RequiresNonNull({"output"})
    private void processSample() throws ParserException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.sampleData);
        WebvttParserUtil.validateWebvttHeaderLine(parsableByteArray);
        long j = 0;
        long j2 = 0;
        for (String readLine = parsableByteArray.readLine(); !TextUtils.isEmpty(readLine); readLine = parsableByteArray.readLine()) {
            if (readLine.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = LOCAL_TIMESTAMP.matcher(readLine);
                if (!matcher.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain local timestamp: " + readLine, null);
                }
                Matcher matcher2 = MEDIA_TIMESTAMP.matcher(readLine);
                if (!matcher2.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain media timestamp: " + readLine, null);
                }
                j2 = WebvttParserUtil.parseTimestampUs((String) Assertions.checkNotNull(matcher.group(1)));
                j = TimestampAdjuster.ptsToUs(Long.parseLong((String) Assertions.checkNotNull(matcher2.group(1))));
            }
        }
        Matcher findNextCueHeader = WebvttParserUtil.findNextCueHeader(parsableByteArray);
        if (findNextCueHeader == null) {
            buildTrackOutput(0L);
            return;
        }
        long parseTimestampUs = WebvttParserUtil.parseTimestampUs((String) Assertions.checkNotNull(findNextCueHeader.group(1)));
        long adjustTsTimestamp = this.timestampAdjuster.adjustTsTimestamp(TimestampAdjuster.usToWrappedPts((j + parseTimestampUs) - j2));
        TrackOutput buildTrackOutput = buildTrackOutput(adjustTsTimestamp - parseTimestampUs);
        this.sampleDataWrapper.reset(this.sampleData, this.sampleSize);
        buildTrackOutput.sampleData(this.sampleDataWrapper, this.sampleSize);
        buildTrackOutput.sampleMetadata(adjustTsTimestamp, 1, this.sampleSize, 0, null);
    }

    @RequiresNonNull({"output"})
    private TrackOutput buildTrackOutput(long j) {
        TrackOutput track = this.output.track(0, 3);
        track.format(new Format.Builder().setSampleMimeType("text/vtt").setLanguage(this.language).setSubsampleOffsetUs(j).build());
        this.output.endTracks();
        return track;
    }
}
