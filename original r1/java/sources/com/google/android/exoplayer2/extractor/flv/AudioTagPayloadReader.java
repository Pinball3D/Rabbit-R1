package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Collections;

/* loaded from: classes2.dex */
final class AudioTagPayloadReader extends TagPayloadReader {
    private static final int AAC_PACKET_TYPE_AAC_RAW = 1;
    private static final int AAC_PACKET_TYPE_SEQUENCE_HEADER = 0;
    private static final int AUDIO_FORMAT_AAC = 10;
    private static final int AUDIO_FORMAT_ALAW = 7;
    private static final int AUDIO_FORMAT_MP3 = 2;
    private static final int AUDIO_FORMAT_ULAW = 8;
    private static final int[] AUDIO_SAMPLING_RATE_TABLE = {5512, 11025, 22050, 44100};
    private int audioFormat;
    private boolean hasOutputFormat;
    private boolean hasParsedAudioDataHeader;

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public void seek() {
    }

    public AudioTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.hasParsedAudioDataHeader) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int i = (readUnsignedByte >> 4) & 15;
            this.audioFormat = i;
            if (i == 2) {
                this.output.format(new Format.Builder().setSampleMimeType("audio/mpeg").setChannelCount(1).setSampleRate(AUDIO_SAMPLING_RATE_TABLE[(readUnsignedByte >> 2) & 3]).build());
                this.hasOutputFormat = true;
            } else if (i == 7 || i == 8) {
                this.output.format(new Format.Builder().setSampleMimeType(i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw").setChannelCount(1).setSampleRate(8000).build());
                this.hasOutputFormat = true;
            } else if (i != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.audioFormat);
            }
            this.hasParsedAudioDataHeader = true;
        } else {
            parsableByteArray.skipBytes(1);
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean parsePayload(ParsableByteArray parsableByteArray, long j) throws ParserException {
        if (this.audioFormat == 2) {
            int bytesLeft = parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, bytesLeft);
            this.output.sampleMetadata(j, 1, bytesLeft, 0, null);
            return true;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if (readUnsignedByte != 0 || this.hasOutputFormat) {
            if (this.audioFormat == 10 && readUnsignedByte != 1) {
                return false;
            }
            int bytesLeft2 = parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, bytesLeft2);
            this.output.sampleMetadata(j, 1, bytesLeft2, 0, null);
            return true;
        }
        int bytesLeft3 = parsableByteArray.bytesLeft();
        byte[] bArr = new byte[bytesLeft3];
        parsableByteArray.readBytes(bArr, 0, bytesLeft3);
        AacUtil.Config parseAudioSpecificConfig = AacUtil.parseAudioSpecificConfig(bArr);
        this.output.format(new Format.Builder().setSampleMimeType("audio/mp4a-latm").setCodecs(parseAudioSpecificConfig.codecs).setChannelCount(parseAudioSpecificConfig.channelCount).setSampleRate(parseAudioSpecificConfig.sampleRateHz).setInitializationData(Collections.singletonList(bArr)).build());
        this.hasOutputFormat = true;
        return false;
    }
}
