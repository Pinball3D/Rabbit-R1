package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.VorbisUtil;
import androidx.media3.extractor.ogg.StreamReader;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes2.dex */
final class VorbisReader extends StreamReader {
    private VorbisUtil.CommentHeader commentHeader;
    private int previousPacketBlockSize;
    private boolean seenFirstAudioPacket;
    private VorbisUtil.VorbisIdHeader vorbisIdHeader;
    private VorbisSetup vorbisSetup;

    static int readBits(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    public static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        try {
            return VorbisUtil.verifyVorbisHeaderCapturePattern(1, parsableByteArray, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.extractor.ogg.StreamReader
    public void reset(boolean z) {
        super.reset(z);
        if (z) {
            this.vorbisSetup = null;
            this.vorbisIdHeader = null;
            this.commentHeader = null;
        }
        this.previousPacketBlockSize = 0;
        this.seenFirstAudioPacket = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.extractor.ogg.StreamReader
    public void onSeekEnd(long j) {
        super.onSeekEnd(j);
        this.seenFirstAudioPacket = j != 0;
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.vorbisIdHeader;
        this.previousPacketBlockSize = vorbisIdHeader != null ? vorbisIdHeader.blockSize0 : 0;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected long preparePayload(ParsableByteArray parsableByteArray) {
        if ((parsableByteArray.getData()[0] & 1) == 1) {
            return -1L;
        }
        int decodeBlockSize = decodeBlockSize(parsableByteArray.getData()[0], (VorbisSetup) Assertions.checkStateNotNull(this.vorbisSetup));
        long j = this.seenFirstAudioPacket ? (this.previousPacketBlockSize + decodeBlockSize) / 4 : 0;
        appendNumberOfSamples(parsableByteArray, j);
        this.seenFirstAudioPacket = true;
        this.previousPacketBlockSize = decodeBlockSize;
        return j;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected boolean readHeaders(ParsableByteArray parsableByteArray, long j, StreamReader.SetupData setupData) throws IOException {
        if (this.vorbisSetup != null) {
            Assertions.checkNotNull(setupData.format);
            return false;
        }
        VorbisSetup readSetupHeaders = readSetupHeaders(parsableByteArray);
        this.vorbisSetup = readSetupHeaders;
        if (readSetupHeaders == null) {
            return true;
        }
        VorbisUtil.VorbisIdHeader vorbisIdHeader = readSetupHeaders.idHeader;
        ArrayList arrayList = new ArrayList();
        arrayList.add(vorbisIdHeader.data);
        arrayList.add(readSetupHeaders.setupHeaderData);
        setupData.format = new Format.Builder().setSampleMimeType("audio/vorbis").setAverageBitrate(vorbisIdHeader.bitrateNominal).setPeakBitrate(vorbisIdHeader.bitrateMaximum).setChannelCount(vorbisIdHeader.channels).setSampleRate(vorbisIdHeader.sampleRate).setInitializationData(arrayList).setMetadata(VorbisUtil.parseVorbisComments(ImmutableList.copyOf(readSetupHeaders.commentHeader.comments))).build();
        return true;
    }

    VorbisSetup readSetupHeaders(ParsableByteArray parsableByteArray) throws IOException {
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.vorbisIdHeader;
        if (vorbisIdHeader == null) {
            this.vorbisIdHeader = VorbisUtil.readVorbisIdentificationHeader(parsableByteArray);
            return null;
        }
        VorbisUtil.CommentHeader commentHeader = this.commentHeader;
        if (commentHeader == null) {
            this.commentHeader = VorbisUtil.readVorbisCommentHeader(parsableByteArray);
            return null;
        }
        byte[] bArr = new byte[parsableByteArray.limit()];
        System.arraycopy(parsableByteArray.getData(), 0, bArr, 0, parsableByteArray.limit());
        return new VorbisSetup(vorbisIdHeader, commentHeader, bArr, VorbisUtil.readVorbisModes(parsableByteArray, vorbisIdHeader.channels), VorbisUtil.iLog(r4.length - 1));
    }

    static void appendNumberOfSamples(ParsableByteArray parsableByteArray, long j) {
        if (parsableByteArray.capacity() < parsableByteArray.limit() + 4) {
            parsableByteArray.reset(Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit() + 4));
        } else {
            parsableByteArray.setLimit(parsableByteArray.limit() + 4);
        }
        byte[] data = parsableByteArray.getData();
        data[parsableByteArray.limit() - 4] = (byte) (j & 255);
        data[parsableByteArray.limit() - 3] = (byte) ((j >>> 8) & 255);
        data[parsableByteArray.limit() - 2] = (byte) ((j >>> 16) & 255);
        data[parsableByteArray.limit() - 1] = (byte) ((j >>> 24) & 255);
    }

    private static int decodeBlockSize(byte b, VorbisSetup vorbisSetup) {
        if (!vorbisSetup.modes[readBits(b, vorbisSetup.iLogModes, 1)].blockFlag) {
            return vorbisSetup.idHeader.blockSize0;
        }
        return vorbisSetup.idHeader.blockSize1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class VorbisSetup {
        public final VorbisUtil.CommentHeader commentHeader;
        public final int iLogModes;
        public final VorbisUtil.VorbisIdHeader idHeader;
        public final VorbisUtil.Mode[] modes;
        public final byte[] setupHeaderData;

        public VorbisSetup(VorbisUtil.VorbisIdHeader vorbisIdHeader, VorbisUtil.CommentHeader commentHeader, byte[] bArr, VorbisUtil.Mode[] modeArr, int i) {
            this.idHeader = vorbisIdHeader;
            this.commentHeader = commentHeader;
            this.setupHeaderData = bArr;
            this.modes = modeArr;
            this.iLogModes = i;
        }
    }
}
