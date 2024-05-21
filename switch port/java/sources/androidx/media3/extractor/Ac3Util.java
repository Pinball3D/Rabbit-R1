package androidx.media3.extractor;

import androidx.core.location.LocationRequestCompat;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import okio.Utf8;

/* loaded from: classes2.dex */
public final class Ac3Util {
    public static final int AC3_MAX_RATE_BYTES_PER_SECOND = 80000;
    private static final int AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT = 1536;
    private static final int AUDIO_SAMPLES_PER_AUDIO_BLOCK = 256;
    public static final int E_AC3_MAX_RATE_BYTES_PER_SECOND = 768000;
    public static final int TRUEHD_MAX_RATE_BYTES_PER_SECOND = 3062500;
    public static final int TRUEHD_RECHUNK_SAMPLE_COUNT = 16;
    public static final int TRUEHD_SYNCFRAME_PREFIX_LENGTH = 10;
    private static final int[] BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD = {1, 2, 3, 6};
    private static final int[] SAMPLE_RATE_BY_FSCOD = {48000, 44100, 32000};
    private static final int[] SAMPLE_RATE_BY_FSCOD2 = {24000, 22050, 16000};
    private static final int[] CHANNEL_COUNT_BY_ACMOD = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] BITRATE_BY_HALF_FRMSIZECOD = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1 = {69, 87, LocationRequestCompat.QUALITY_LOW_POWER, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* loaded from: classes2.dex */
    public static final class SyncFrameInfo {
        public static final int STREAM_TYPE_TYPE0 = 0;
        public static final int STREAM_TYPE_TYPE1 = 1;
        public static final int STREAM_TYPE_TYPE2 = 2;
        public static final int STREAM_TYPE_UNDEFINED = -1;
        public final int bitrate;
        public final int channelCount;
        public final int frameSize;
        public final String mimeType;
        public final int sampleCount;
        public final int sampleRate;
        public final int streamType;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface StreamType {
        }

        private SyncFrameInfo(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            this.mimeType = str;
            this.streamType = i;
            this.channelCount = i2;
            this.sampleRate = i3;
            this.frameSize = i4;
            this.sampleCount = i5;
            this.bitrate = i6;
        }
    }

    public static Format parseAc3AnnexFFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int i = SAMPLE_RATE_BY_FSCOD[parsableBitArray.readBits(2)];
        parsableBitArray.skipBits(8);
        int i2 = CHANNEL_COUNT_BY_ACMOD[parsableBitArray.readBits(3)];
        if (parsableBitArray.readBits(1) != 0) {
            i2++;
        }
        int i3 = BITRATE_BY_HALF_FRMSIZECOD[parsableBitArray.readBits(5)] * 1000;
        parsableBitArray.byteAlign();
        parsableByteArray.setPosition(parsableBitArray.getBytePosition());
        return new Format.Builder().setId(str).setSampleMimeType("audio/ac3").setChannelCount(i2).setSampleRate(i).setDrmInitData(drmInitData).setLanguage(str2).setAverageBitrate(i3).setPeakBitrate(i3).build();
    }

    public static Format parseEAc3AnnexFFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        String str3;
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int readBits = parsableBitArray.readBits(13) * 1000;
        parsableBitArray.skipBits(3);
        int i = SAMPLE_RATE_BY_FSCOD[parsableBitArray.readBits(2)];
        parsableBitArray.skipBits(10);
        int i2 = CHANNEL_COUNT_BY_ACMOD[parsableBitArray.readBits(3)];
        if (parsableBitArray.readBits(1) != 0) {
            i2++;
        }
        parsableBitArray.skipBits(3);
        int readBits2 = parsableBitArray.readBits(4);
        parsableBitArray.skipBits(1);
        if (readBits2 > 0) {
            parsableBitArray.skipBits(6);
            if (parsableBitArray.readBits(1) != 0) {
                i2 += 2;
            }
            parsableBitArray.skipBits(1);
        }
        if (parsableBitArray.bitsLeft() > 7) {
            parsableBitArray.skipBits(7);
            if (parsableBitArray.readBits(1) != 0) {
                str3 = "audio/eac3-joc";
                parsableBitArray.byteAlign();
                parsableByteArray.setPosition(parsableBitArray.getBytePosition());
                return new Format.Builder().setId(str).setSampleMimeType(str3).setChannelCount(i2).setSampleRate(i).setDrmInitData(drmInitData).setLanguage(str2).setPeakBitrate(readBits).build();
            }
        }
        str3 = "audio/eac3";
        parsableBitArray.byteAlign();
        parsableByteArray.setPosition(parsableBitArray.getBytePosition());
        return new Format.Builder().setId(str).setSampleMimeType(str3).setChannelCount(i2).setSampleRate(i).setDrmInitData(drmInitData).setLanguage(str2).setPeakBitrate(readBits).build();
    }

    public static SyncFrameInfo parseAc3SyncframeInfo(ParsableBitArray parsableBitArray) {
        int i;
        int i2;
        String str;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int position = parsableBitArray.getPosition();
        parsableBitArray.skipBits(40);
        boolean z = parsableBitArray.readBits(5) > 10;
        parsableBitArray.setPosition(position);
        int i13 = -1;
        if (z) {
            parsableBitArray.skipBits(16);
            int readBits = parsableBitArray.readBits(2);
            if (readBits == 0) {
                i13 = 0;
            } else if (readBits == 1) {
                i13 = 1;
            } else if (readBits == 2) {
                i13 = 2;
            }
            parsableBitArray.skipBits(3);
            int readBits2 = (parsableBitArray.readBits(11) + 1) * 2;
            int readBits3 = parsableBitArray.readBits(2);
            if (readBits3 == 3) {
                i8 = SAMPLE_RATE_BY_FSCOD2[parsableBitArray.readBits(2)];
                i7 = 3;
                i9 = 6;
            } else {
                int readBits4 = parsableBitArray.readBits(2);
                int i14 = BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[readBits4];
                i7 = readBits4;
                i8 = SAMPLE_RATE_BY_FSCOD[readBits3];
                i9 = i14;
            }
            int i15 = i9 * 256;
            int calculateEac3Bitrate = calculateEac3Bitrate(readBits2, i8, i9);
            int readBits5 = parsableBitArray.readBits(3);
            boolean readBit = parsableBitArray.readBit();
            i = CHANNEL_COUNT_BY_ACMOD[readBits5] + (readBit ? 1 : 0);
            parsableBitArray.skipBits(10);
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(8);
            }
            if (readBits5 == 0) {
                parsableBitArray.skipBits(5);
                if (parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(8);
                }
            }
            if (i13 == 1 && parsableBitArray.readBit()) {
                parsableBitArray.skipBits(16);
            }
            if (parsableBitArray.readBit()) {
                if (readBits5 > 2) {
                    parsableBitArray.skipBits(2);
                }
                if ((readBits5 & 1) == 0 || readBits5 <= 2) {
                    i11 = 6;
                } else {
                    i11 = 6;
                    parsableBitArray.skipBits(6);
                }
                if ((readBits5 & 4) != 0) {
                    parsableBitArray.skipBits(i11);
                }
                if (readBit && parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(5);
                }
                if (i13 == 0) {
                    if (parsableBitArray.readBit()) {
                        i12 = 6;
                        parsableBitArray.skipBits(6);
                    } else {
                        i12 = 6;
                    }
                    if (readBits5 == 0 && parsableBitArray.readBit()) {
                        parsableBitArray.skipBits(i12);
                    }
                    if (parsableBitArray.readBit()) {
                        parsableBitArray.skipBits(i12);
                    }
                    int readBits6 = parsableBitArray.readBits(2);
                    if (readBits6 == 1) {
                        parsableBitArray.skipBits(5);
                    } else if (readBits6 == 2) {
                        parsableBitArray.skipBits(12);
                    } else if (readBits6 == 3) {
                        int readBits7 = parsableBitArray.readBits(5);
                        if (parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(5);
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(4);
                            }
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(4);
                            }
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(4);
                            }
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(4);
                            }
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(4);
                            }
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(4);
                            }
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(4);
                            }
                            if (parsableBitArray.readBit()) {
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                            }
                        }
                        if (parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(5);
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(7);
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(8);
                                }
                            }
                        }
                        parsableBitArray.skipBits((readBits7 + 2) * 8);
                        parsableBitArray.byteAlign();
                    }
                    if (readBits5 < 2) {
                        if (parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(14);
                        }
                        if (readBits5 == 0 && parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(14);
                        }
                    }
                    if (parsableBitArray.readBit()) {
                        if (i7 == 0) {
                            parsableBitArray.skipBits(5);
                        } else {
                            for (int i16 = 0; i16 < i9; i16++) {
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(5);
                                }
                            }
                        }
                    }
                }
            }
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(5);
                if (readBits5 == 2) {
                    parsableBitArray.skipBits(4);
                }
                if (readBits5 >= 6) {
                    parsableBitArray.skipBits(2);
                }
                if (parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(8);
                }
                if (readBits5 == 0 && parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(8);
                }
                if (readBits3 < 3) {
                    parsableBitArray.skipBit();
                }
            }
            if (i13 == 0 && i7 != 3) {
                parsableBitArray.skipBit();
            }
            if (i13 == 2 && (i7 == 3 || parsableBitArray.readBit())) {
                i10 = 6;
                parsableBitArray.skipBits(6);
            } else {
                i10 = 6;
            }
            str = (parsableBitArray.readBit() && parsableBitArray.readBits(i10) == 1 && parsableBitArray.readBits(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i2 = i13;
            i3 = i15;
            i5 = readBits2;
            i6 = i8;
            i4 = calculateEac3Bitrate;
        } else {
            parsableBitArray.skipBits(32);
            int readBits8 = parsableBitArray.readBits(2);
            String str2 = readBits8 == 3 ? null : "audio/ac3";
            int readBits9 = parsableBitArray.readBits(6);
            int i17 = BITRATE_BY_HALF_FRMSIZECOD[readBits9 / 2] * 1000;
            int ac3SyncframeSize = getAc3SyncframeSize(readBits8, readBits9);
            parsableBitArray.skipBits(8);
            int readBits10 = parsableBitArray.readBits(3);
            if ((readBits10 & 1) != 0 && readBits10 != 1) {
                parsableBitArray.skipBits(2);
            }
            if ((readBits10 & 4) != 0) {
                parsableBitArray.skipBits(2);
            }
            if (readBits10 == 2) {
                parsableBitArray.skipBits(2);
            }
            int[] iArr = SAMPLE_RATE_BY_FSCOD;
            int i18 = readBits8 < iArr.length ? iArr[readBits8] : -1;
            i = CHANNEL_COUNT_BY_ACMOD[readBits10] + (parsableBitArray.readBit() ? 1 : 0);
            i2 = -1;
            str = str2;
            i3 = AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
            i4 = i17;
            i5 = ac3SyncframeSize;
            i6 = i18;
        }
        return new SyncFrameInfo(str, i2, i, i6, i5, i3, i4);
    }

    public static int parseAc3SyncframeSize(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b = bArr[4];
        return getAc3SyncframeSize((b & 192) >> 6, b & Utf8.REPLACEMENT_BYTE);
    }

    public static int parseAc3SyncframeAudioSampleCount(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
    }

    public static int findTrueHdSyncframeOffset(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i = position; i <= limit; i++) {
            if ((Util.getBigEndianInt(byteBuffer, i + 4) & (-2)) == -126718022) {
                return i - position;
            }
        }
        return -1;
    }

    public static int parseTrueHdSyncframeAudioSampleCount(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b = bArr[7];
            if ((b & 254) == 186) {
                return 40 << ((bArr[(b & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }

    public static int parseTrueHdSyncframeAudioSampleCount(ByteBuffer byteBuffer, int i) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + ((byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    private static int getAc3SyncframeSize(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = SAMPLE_RATE_BY_FSCOD;
        if (i >= iArr.length || i2 < 0) {
            return -1;
        }
        int[] iArr2 = SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1;
        if (i3 >= iArr2.length) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return (iArr2[i3] + (i2 % 2)) * 2;
        }
        int i5 = BITRATE_BY_HALF_FRMSIZECOD[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    private static int calculateEac3Bitrate(int i, int i2, int i3) {
        return (i * i2) / (i3 * 32);
    }

    private Ac3Util() {
    }
}
