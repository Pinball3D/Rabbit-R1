package androidx.media3.extractor;

import android.util.Base64;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import androidx.media3.extractor.metadata.vorbis.VorbisComment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class VorbisUtil {
    private static final String TAG = "VorbisUtil";

    public static int iLog(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* loaded from: classes2.dex */
    public static final class CommentHeader {
        public final String[] comments;
        public final int length;
        public final String vendor;

        public CommentHeader(String str, String[] strArr, int i) {
            this.vendor = str;
            this.comments = strArr;
            this.length = i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class VorbisIdHeader {
        public final int bitrateMaximum;
        public final int bitrateMinimum;
        public final int bitrateNominal;
        public final int blockSize0;
        public final int blockSize1;
        public final int channels;
        public final byte[] data;
        public final boolean framingFlag;
        public final int sampleRate;
        public final int version;

        public VorbisIdHeader(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
            this.version = i;
            this.channels = i2;
            this.sampleRate = i3;
            this.bitrateMaximum = i4;
            this.bitrateNominal = i5;
            this.bitrateMinimum = i6;
            this.blockSize0 = i7;
            this.blockSize1 = i8;
            this.framingFlag = z;
            this.data = bArr;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Mode {
        public final boolean blockFlag;
        public final int mapping;
        public final int transformType;
        public final int windowType;

        public Mode(boolean z, int i, int i2, int i3) {
            this.blockFlag = z;
            this.windowType = i;
            this.transformType = i2;
            this.mapping = i3;
        }
    }

    public static VorbisIdHeader readVorbisIdentificationHeader(ParsableByteArray parsableByteArray) throws ParserException {
        verifyVorbisHeaderCapturePattern(1, parsableByteArray, false);
        int readLittleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readLittleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        if (readLittleEndianInt <= 0) {
            readLittleEndianInt = -1;
        }
        int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
        if (readLittleEndianInt2 <= 0) {
            readLittleEndianInt2 = -1;
        }
        int readLittleEndianInt3 = parsableByteArray.readLittleEndianInt();
        if (readLittleEndianInt3 <= 0) {
            readLittleEndianInt3 = -1;
        }
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        return new VorbisIdHeader(readLittleEndianUnsignedIntToInt, readUnsignedByte, readLittleEndianUnsignedIntToInt2, readLittleEndianInt, readLittleEndianInt2, readLittleEndianInt3, (int) Math.pow(2.0d, readUnsignedByte2 & 15), (int) Math.pow(2.0d, (readUnsignedByte2 & 240) >> 4), (parsableByteArray.readUnsignedByte() & 1) > 0, Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit()));
    }

    public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray) throws ParserException {
        return readVorbisCommentHeader(parsableByteArray, true, true);
    }

    public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray, boolean z, boolean z2) throws ParserException {
        if (z) {
            verifyVorbisHeaderCapturePattern(3, parsableByteArray, false);
        }
        String readString = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
        int length = readString.length();
        long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
        String[] strArr = new String[(int) readLittleEndianUnsignedInt];
        int i = length + 15;
        for (int i2 = 0; i2 < readLittleEndianUnsignedInt; i2++) {
            String readString2 = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
            strArr[i2] = readString2;
            i = i + 4 + readString2.length();
        }
        if (z2 && (parsableByteArray.readUnsignedByte() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new CommentHeader(readString, strArr, i + 1);
    }

    public static Metadata parseVorbisComments(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] splitAtFirst = Util.splitAtFirst(str, "=");
            if (splitAtFirst.length != 2) {
                Log.w(TAG, "Failed to parse Vorbis comment: " + str);
            } else if (splitAtFirst[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.fromPictureBlock(new ParsableByteArray(Base64.decode(splitAtFirst[1], 0))));
                } catch (RuntimeException e) {
                    Log.w(TAG, "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new VorbisComment(splitAtFirst[0], splitAtFirst[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static boolean verifyVorbisHeaderCapturePattern(int i, ParsableByteArray parsableByteArray, boolean z) throws ParserException {
        if (parsableByteArray.bytesLeft() < 7) {
            if (z) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + parsableByteArray.bytesLeft(), null);
        }
        if (parsableByteArray.readUnsignedByte() != i) {
            if (z) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i), null);
        }
        if (parsableByteArray.readUnsignedByte() == 118 && parsableByteArray.readUnsignedByte() == 111 && parsableByteArray.readUnsignedByte() == 114 && parsableByteArray.readUnsignedByte() == 98 && parsableByteArray.readUnsignedByte() == 105 && parsableByteArray.readUnsignedByte() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }

    public static Mode[] readVorbisModes(ParsableByteArray parsableByteArray, int i) throws ParserException {
        verifyVorbisHeaderCapturePattern(5, parsableByteArray, false);
        int readUnsignedByte = parsableByteArray.readUnsignedByte() + 1;
        VorbisBitArray vorbisBitArray = new VorbisBitArray(parsableByteArray.getData());
        vorbisBitArray.skipBits(parsableByteArray.getPosition() * 8);
        for (int i2 = 0; i2 < readUnsignedByte; i2++) {
            skipBook(vorbisBitArray);
        }
        int readBits = vorbisBitArray.readBits(6) + 1;
        for (int i3 = 0; i3 < readBits; i3++) {
            if (vorbisBitArray.readBits(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        readFloors(vorbisBitArray);
        readResidues(vorbisBitArray);
        readMappings(i, vorbisBitArray);
        Mode[] readModes = readModes(vorbisBitArray);
        if (vorbisBitArray.readBit()) {
            return readModes;
        }
        throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    private static Mode[] readModes(VorbisBitArray vorbisBitArray) {
        int readBits = vorbisBitArray.readBits(6) + 1;
        Mode[] modeArr = new Mode[readBits];
        for (int i = 0; i < readBits; i++) {
            modeArr[i] = new Mode(vorbisBitArray.readBit(), vorbisBitArray.readBits(16), vorbisBitArray.readBits(16), vorbisBitArray.readBits(8));
        }
        return modeArr;
    }

    private static void readMappings(int i, VorbisBitArray vorbisBitArray) throws ParserException {
        int readBits = vorbisBitArray.readBits(6) + 1;
        for (int i2 = 0; i2 < readBits; i2++) {
            int readBits2 = vorbisBitArray.readBits(16);
            if (readBits2 != 0) {
                Log.e(TAG, "mapping type other than 0 not supported: " + readBits2);
            } else {
                int readBits3 = vorbisBitArray.readBit() ? vorbisBitArray.readBits(4) + 1 : 1;
                if (vorbisBitArray.readBit()) {
                    int readBits4 = vorbisBitArray.readBits(8) + 1;
                    for (int i3 = 0; i3 < readBits4; i3++) {
                        int i4 = i - 1;
                        vorbisBitArray.skipBits(iLog(i4));
                        vorbisBitArray.skipBits(iLog(i4));
                    }
                }
                if (vorbisBitArray.readBits(2) != 0) {
                    throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (readBits3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        vorbisBitArray.skipBits(4);
                    }
                }
                for (int i6 = 0; i6 < readBits3; i6++) {
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                }
            }
        }
    }

    private static void readResidues(VorbisBitArray vorbisBitArray) throws ParserException {
        int readBits = vorbisBitArray.readBits(6) + 1;
        for (int i = 0; i < readBits; i++) {
            if (vorbisBitArray.readBits(16) > 2) {
                throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            int readBits2 = vorbisBitArray.readBits(6) + 1;
            vorbisBitArray.skipBits(8);
            int[] iArr = new int[readBits2];
            for (int i2 = 0; i2 < readBits2; i2++) {
                iArr[i2] = ((vorbisBitArray.readBit() ? vorbisBitArray.readBits(5) : 0) * 8) + vorbisBitArray.readBits(3);
            }
            for (int i3 = 0; i3 < readBits2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        vorbisBitArray.skipBits(8);
                    }
                }
            }
        }
    }

    private static void readFloors(VorbisBitArray vorbisBitArray) throws ParserException {
        int readBits = vorbisBitArray.readBits(6) + 1;
        for (int i = 0; i < readBits; i++) {
            int readBits2 = vorbisBitArray.readBits(16);
            if (readBits2 == 0) {
                vorbisBitArray.skipBits(8);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(6);
                vorbisBitArray.skipBits(8);
                int readBits3 = vorbisBitArray.readBits(4) + 1;
                for (int i2 = 0; i2 < readBits3; i2++) {
                    vorbisBitArray.skipBits(8);
                }
            } else if (readBits2 == 1) {
                int readBits4 = vorbisBitArray.readBits(5);
                int[] iArr = new int[readBits4];
                int i3 = -1;
                for (int i4 = 0; i4 < readBits4; i4++) {
                    int readBits5 = vorbisBitArray.readBits(4);
                    iArr[i4] = readBits5;
                    if (readBits5 > i3) {
                        i3 = readBits5;
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = vorbisBitArray.readBits(3) + 1;
                    int readBits6 = vorbisBitArray.readBits(2);
                    if (readBits6 > 0) {
                        vorbisBitArray.skipBits(8);
                    }
                    for (int i7 = 0; i7 < (1 << readBits6); i7++) {
                        vorbisBitArray.skipBits(8);
                    }
                }
                vorbisBitArray.skipBits(2);
                int readBits7 = vorbisBitArray.readBits(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < readBits4; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        vorbisBitArray.skipBits(readBits7);
                        i9++;
                    }
                }
            } else {
                throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + readBits2, null);
            }
        }
    }

    private static void skipBook(VorbisBitArray vorbisBitArray) throws ParserException {
        long j;
        if (vorbisBitArray.readBits(24) != 5653314) {
            throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + vorbisBitArray.getPosition(), null);
        }
        int readBits = vorbisBitArray.readBits(16);
        int readBits2 = vorbisBitArray.readBits(24);
        int i = 0;
        if (!vorbisBitArray.readBit()) {
            boolean readBit = vorbisBitArray.readBit();
            while (i < readBits2) {
                if (readBit) {
                    if (vorbisBitArray.readBit()) {
                        vorbisBitArray.skipBits(5);
                    }
                } else {
                    vorbisBitArray.skipBits(5);
                }
                i++;
            }
        } else {
            vorbisBitArray.skipBits(5);
            while (i < readBits2) {
                i += vorbisBitArray.readBits(iLog(readBits2 - i));
            }
        }
        int readBits3 = vorbisBitArray.readBits(4);
        if (readBits3 > 2) {
            throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + readBits3, null);
        }
        if (readBits3 == 1 || readBits3 == 2) {
            vorbisBitArray.skipBits(32);
            vorbisBitArray.skipBits(32);
            int readBits4 = vorbisBitArray.readBits(4) + 1;
            vorbisBitArray.skipBits(1);
            if (readBits3 == 1) {
                j = readBits != 0 ? mapType1QuantValues(readBits2, readBits) : 0L;
            } else {
                j = readBits * readBits2;
            }
            vorbisBitArray.skipBits((int) (j * readBits4));
        }
    }

    private static long mapType1QuantValues(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    private VorbisUtil() {
    }
}
