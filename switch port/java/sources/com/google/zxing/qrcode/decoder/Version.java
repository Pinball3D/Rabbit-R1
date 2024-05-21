package com.google.zxing.qrcode.decoder;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.material3.MenuKt;
import androidx.core.location.LocationRequestCompat;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes3.dex */
public final class Version {
    private final int[] alignmentPatternCenters;
    private final ECBlocks[] ecBlocks;
    private final int totalCodewords;
    private final int versionNumber;
    private static final int[] VERSION_DECODE_INFO = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};
    private static final Version[] VERSIONS = buildVersions();

    public int[] getAlignmentPatternCenters() {
        return this.alignmentPatternCenters;
    }

    public int getDimensionForVersion() {
        return (this.versionNumber * 4) + 17;
    }

    public int getTotalCodewords() {
        return this.totalCodewords;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }

    private Version(int i, int[] iArr, ECBlocks... eCBlocksArr) {
        this.versionNumber = i;
        this.alignmentPatternCenters = iArr;
        this.ecBlocks = eCBlocksArr;
        int eCCodewordsPerBlock = eCBlocksArr[0].getECCodewordsPerBlock();
        int i2 = 0;
        for (ECB ecb : eCBlocksArr[0].getECBlocks()) {
            i2 += ecb.getCount() * (ecb.getDataCodewords() + eCCodewordsPerBlock);
        }
        this.totalCodewords = i2;
    }

    public ECBlocks getECBlocksForLevel(ErrorCorrectionLevel errorCorrectionLevel) {
        return this.ecBlocks[errorCorrectionLevel.ordinal()];
    }

    public static Version getProvisionalVersionForDimension(int i) throws FormatException {
        if (i % 4 != 1) {
            throw FormatException.getFormatInstance();
        }
        try {
            return getVersionForNumber((i - 17) / 4);
        } catch (IllegalArgumentException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    public static Version getVersionForNumber(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return VERSIONS[i - 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Version decodeVersionInformation(int i) {
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = VERSION_DECODE_INFO;
            if (i3 >= iArr.length) {
                if (i2 <= 3) {
                    return getVersionForNumber(i4);
                }
                return null;
            }
            int i5 = iArr[i3];
            if (i5 == i) {
                return getVersionForNumber(i3 + 7);
            }
            int numBitsDiffering = FormatInformation.numBitsDiffering(i, i5);
            if (numBitsDiffering < i2) {
                i4 = i3 + 7;
                i2 = numBitsDiffering;
            }
            i3++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitMatrix buildFunctionPattern() {
        int dimensionForVersion = getDimensionForVersion();
        BitMatrix bitMatrix = new BitMatrix(dimensionForVersion);
        bitMatrix.setRegion(0, 0, 9, 9);
        int i = dimensionForVersion - 8;
        bitMatrix.setRegion(i, 0, 8, 9);
        bitMatrix.setRegion(0, i, 9, 8);
        int length = this.alignmentPatternCenters.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.alignmentPatternCenters[i2] - 2;
            for (int i4 = 0; i4 < length; i4++) {
                if ((i2 != 0 || (i4 != 0 && i4 != length - 1)) && (i2 != length - 1 || i4 != 0)) {
                    bitMatrix.setRegion(this.alignmentPatternCenters[i4] - 2, i3, 5, 5);
                }
            }
        }
        int i5 = dimensionForVersion - 17;
        bitMatrix.setRegion(6, 9, 1, i5);
        bitMatrix.setRegion(9, 6, i5, 1);
        if (this.versionNumber > 6) {
            int i6 = dimensionForVersion - 11;
            bitMatrix.setRegion(i6, 0, 3, 6);
            bitMatrix.setRegion(0, i6, 6, 3);
        }
        return bitMatrix;
    }

    /* loaded from: classes3.dex */
    public static final class ECBlocks {
        private final ECB[] ecBlocks;
        private final int ecCodewordsPerBlock;

        public ECB[] getECBlocks() {
            return this.ecBlocks;
        }

        public int getECCodewordsPerBlock() {
            return this.ecCodewordsPerBlock;
        }

        ECBlocks(int i, ECB... ecbArr) {
            this.ecCodewordsPerBlock = i;
            this.ecBlocks = ecbArr;
        }

        public int getNumBlocks() {
            int i = 0;
            for (ECB ecb : this.ecBlocks) {
                i += ecb.getCount();
            }
            return i;
        }

        public int getTotalECCodewords() {
            return this.ecCodewordsPerBlock * getNumBlocks();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ECB {
        private final int count;
        private final int dataCodewords;

        public int getCount() {
            return this.count;
        }

        public int getDataCodewords() {
            return this.dataCodewords;
        }

        ECB(int i, int i2) {
            this.count = i;
            this.dataCodewords = i2;
        }
    }

    public String toString() {
        return String.valueOf(this.versionNumber);
    }

    private static Version[] buildVersions() {
        return new Version[]{new Version(1, new int[0], new ECBlocks(7, new ECB(1, 19)), new ECBlocks(10, new ECB(1, 16)), new ECBlocks(13, new ECB(1, 13)), new ECBlocks(17, new ECB(1, 9))), new Version(2, new int[]{6, 18}, new ECBlocks(10, new ECB(1, 34)), new ECBlocks(16, new ECB(1, 28)), new ECBlocks(22, new ECB(1, 22)), new ECBlocks(28, new ECB(1, 16))), new Version(3, new int[]{6, 22}, new ECBlocks(15, new ECB(1, 55)), new ECBlocks(26, new ECB(1, 44)), new ECBlocks(18, new ECB(2, 17)), new ECBlocks(22, new ECB(2, 13))), new Version(4, new int[]{6, 26}, new ECBlocks(20, new ECB(1, 80)), new ECBlocks(18, new ECB(2, 32)), new ECBlocks(26, new ECB(2, 24)), new ECBlocks(16, new ECB(4, 9))), new Version(5, new int[]{6, 30}, new ECBlocks(26, new ECB(1, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR)), new ECBlocks(24, new ECB(2, 43)), new ECBlocks(18, new ECB(2, 15), new ECB(2, 16)), new ECBlocks(22, new ECB(2, 11), new ECB(2, 12))), new Version(6, new int[]{6, 34}, new ECBlocks(18, new ECB(2, 68)), new ECBlocks(16, new ECB(4, 27)), new ECBlocks(24, new ECB(4, 19)), new ECBlocks(28, new ECB(4, 15))), new Version(7, new int[]{6, 22, 38}, new ECBlocks(20, new ECB(2, 78)), new ECBlocks(18, new ECB(4, 31)), new ECBlocks(18, new ECB(2, 14), new ECB(4, 15)), new ECBlocks(26, new ECB(4, 13), new ECB(1, 14))), new Version(8, new int[]{6, 24, 42}, new ECBlocks(24, new ECB(2, 97)), new ECBlocks(22, new ECB(2, 38), new ECB(2, 39)), new ECBlocks(22, new ECB(4, 18), new ECB(2, 19)), new ECBlocks(26, new ECB(4, 14), new ECB(2, 15))), new Version(9, new int[]{6, 26, 46}, new ECBlocks(30, new ECB(2, 116)), new ECBlocks(22, new ECB(3, 36), new ECB(2, 37)), new ECBlocks(20, new ECB(4, 16), new ECB(4, 17)), new ECBlocks(24, new ECB(4, 12), new ECB(4, 13))), new Version(10, new int[]{6, 28, 50}, new ECBlocks(18, new ECB(2, 68), new ECB(2, 69)), new ECBlocks(26, new ECB(4, 43), new ECB(1, 44)), new ECBlocks(24, new ECB(6, 19), new ECB(2, 20)), new ECBlocks(28, new ECB(6, 15), new ECB(2, 16))), new Version(11, new int[]{6, 30, 54}, new ECBlocks(20, new ECB(4, 81)), new ECBlocks(30, new ECB(1, 50), new ECB(4, 51)), new ECBlocks(28, new ECB(4, 22), new ECB(4, 23)), new ECBlocks(24, new ECB(3, 12), new ECB(8, 13))), new Version(12, new int[]{6, 32, 58}, new ECBlocks(24, new ECB(2, 92), new ECB(2, 93)), new ECBlocks(22, new ECB(6, 36), new ECB(2, 37)), new ECBlocks(26, new ECB(4, 20), new ECB(6, 21)), new ECBlocks(28, new ECB(7, 14), new ECB(4, 15))), new Version(13, new int[]{6, 34, 62}, new ECBlocks(26, new ECB(4, 107)), new ECBlocks(22, new ECB(8, 37), new ECB(1, 38)), new ECBlocks(24, new ECB(8, 20), new ECB(4, 21)), new ECBlocks(22, new ECB(12, 11), new ECB(4, 12))), new Version(14, new int[]{6, 26, 46, 66}, new ECBlocks(30, new ECB(3, 115), new ECB(1, 116)), new ECBlocks(24, new ECB(4, 40), new ECB(5, 41)), new ECBlocks(20, new ECB(11, 16), new ECB(5, 17)), new ECBlocks(24, new ECB(11, 12), new ECB(5, 13))), new Version(15, new int[]{6, 26, 48, 70}, new ECBlocks(22, new ECB(5, 87), new ECB(1, 88)), new ECBlocks(24, new ECB(5, 41), new ECB(5, 42)), new ECBlocks(30, new ECB(5, 24), new ECB(7, 25)), new ECBlocks(24, new ECB(11, 12), new ECB(7, 13))), new Version(16, new int[]{6, 26, 50, 74}, new ECBlocks(24, new ECB(5, 98), new ECB(1, 99)), new ECBlocks(28, new ECB(7, 45), new ECB(3, 46)), new ECBlocks(24, new ECB(15, 19), new ECB(2, 20)), new ECBlocks(30, new ECB(3, 15), new ECB(13, 16))), new Version(17, new int[]{6, 30, 54, 78}, new ECBlocks(28, new ECB(1, 107), new ECB(5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR)), new ECBlocks(28, new ECB(10, 46), new ECB(1, 47)), new ECBlocks(28, new ECB(1, 22), new ECB(15, 23)), new ECBlocks(28, new ECB(2, 14), new ECB(17, 15))), new Version(18, new int[]{6, 30, 56, 82}, new ECBlocks(30, new ECB(5, MenuKt.InTransitionDuration), new ECB(1, 121)), new ECBlocks(26, new ECB(9, 43), new ECB(4, 44)), new ECBlocks(28, new ECB(17, 22), new ECB(1, 23)), new ECBlocks(28, new ECB(2, 14), new ECB(19, 15))), new Version(19, new int[]{6, 30, 58, 86}, new ECBlocks(28, new ECB(3, 113), new ECB(4, 114)), new ECBlocks(26, new ECB(3, 44), new ECB(11, 45)), new ECBlocks(26, new ECB(17, 21), new ECB(4, 22)), new ECBlocks(26, new ECB(9, 13), new ECB(16, 14))), new Version(20, new int[]{6, 34, 62, 90}, new ECBlocks(28, new ECB(3, 107), new ECB(5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR)), new ECBlocks(26, new ECB(3, 41), new ECB(13, 42)), new ECBlocks(30, new ECB(15, 24), new ECB(5, 25)), new ECBlocks(28, new ECB(15, 15), new ECB(10, 16))), new Version(21, new int[]{6, 28, 50, 72, 94}, new ECBlocks(28, new ECB(4, 116), new ECB(4, 117)), new ECBlocks(26, new ECB(17, 42)), new ECBlocks(28, new ECB(17, 22), new ECB(6, 23)), new ECBlocks(30, new ECB(19, 16), new ECB(6, 17))), new Version(22, new int[]{6, 26, 50, 74, 98}, new ECBlocks(28, new ECB(2, 111), new ECB(7, 112)), new ECBlocks(28, new ECB(17, 46)), new ECBlocks(30, new ECB(7, 24), new ECB(16, 25)), new ECBlocks(24, new ECB(34, 13))), new Version(23, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY}, new ECBlocks(30, new ECB(4, 121), new ECB(5, 122)), new ECBlocks(28, new ECB(4, 47), new ECB(14, 48)), new ECBlocks(30, new ECB(11, 24), new ECB(14, 25)), new ECBlocks(30, new ECB(16, 15), new ECB(14, 16))), new Version(24, new int[]{6, 28, 54, 80, 106}, new ECBlocks(30, new ECB(6, 117), new ECB(4, 118)), new ECBlocks(28, new ECB(6, 45), new ECB(14, 46)), new ECBlocks(30, new ECB(11, 24), new ECB(16, 25)), new ECBlocks(30, new ECB(30, 16), new ECB(2, 17))), new Version(25, new int[]{6, 32, 58, 84, 110}, new ECBlocks(26, new ECB(8, 106), new ECB(4, 107)), new ECBlocks(28, new ECB(8, 47), new ECB(13, 48)), new ECBlocks(30, new ECB(7, 24), new ECB(22, 25)), new ECBlocks(30, new ECB(22, 15), new ECB(13, 16))), new Version(26, new int[]{6, 30, 58, 86, 114}, new ECBlocks(28, new ECB(10, 114), new ECB(2, 115)), new ECBlocks(28, new ECB(19, 46), new ECB(4, 47)), new ECBlocks(28, new ECB(28, 22), new ECB(6, 23)), new ECBlocks(30, new ECB(33, 16), new ECB(4, 17))), new Version(27, new int[]{6, 34, 62, 90, 118}, new ECBlocks(30, new ECB(8, 122), new ECB(4, 123)), new ECBlocks(28, new ECB(22, 45), new ECB(3, 46)), new ECBlocks(30, new ECB(8, 23), new ECB(26, 24)), new ECBlocks(30, new ECB(12, 15), new ECB(28, 16))), new Version(28, new int[]{6, 26, 50, 74, 98, 122}, new ECBlocks(30, new ECB(3, 117), new ECB(10, 118)), new ECBlocks(28, new ECB(3, 45), new ECB(23, 46)), new ECBlocks(30, new ECB(4, 24), new ECB(31, 25)), new ECBlocks(30, new ECB(11, 15), new ECB(31, 16))), new Version(29, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, WebSocketProtocol.PAYLOAD_SHORT}, new ECBlocks(30, new ECB(7, 116), new ECB(7, 117)), new ECBlocks(28, new ECB(21, 45), new ECB(7, 46)), new ECBlocks(30, new ECB(1, 23), new ECB(37, 24)), new ECBlocks(30, new ECB(19, 15), new ECB(26, 16))), new Version(30, new int[]{6, 26, 52, 78, LocationRequestCompat.QUALITY_LOW_POWER, 130}, new ECBlocks(30, new ECB(5, 115), new ECB(10, 116)), new ECBlocks(28, new ECB(19, 47), new ECB(10, 48)), new ECBlocks(30, new ECB(15, 24), new ECB(25, 25)), new ECBlocks(30, new ECB(23, 15), new ECB(25, 16))), new Version(31, new int[]{6, 30, 56, 82, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 134}, new ECBlocks(30, new ECB(13, 115), new ECB(3, 116)), new ECBlocks(28, new ECB(2, 46), new ECB(29, 47)), new ECBlocks(30, new ECB(42, 24), new ECB(1, 25)), new ECBlocks(30, new ECB(23, 15), new ECB(28, 16))), new Version(32, new int[]{6, 34, 60, 86, 112, 138}, new ECBlocks(30, new ECB(17, 115)), new ECBlocks(28, new ECB(10, 46), new ECB(23, 47)), new ECBlocks(30, new ECB(10, 24), new ECB(35, 25)), new ECBlocks(30, new ECB(19, 15), new ECB(35, 16))), new Version(33, new int[]{6, 30, 58, 86, 114, 142}, new ECBlocks(30, new ECB(17, 115), new ECB(1, 116)), new ECBlocks(28, new ECB(14, 46), new ECB(21, 47)), new ECBlocks(30, new ECB(29, 24), new ECB(19, 25)), new ECBlocks(30, new ECB(11, 15), new ECB(46, 16))), new Version(34, new int[]{6, 34, 62, 90, 118, 146}, new ECBlocks(30, new ECB(13, 115), new ECB(6, 116)), new ECBlocks(28, new ECB(14, 46), new ECB(23, 47)), new ECBlocks(30, new ECB(44, 24), new ECB(7, 25)), new ECBlocks(30, new ECB(59, 16), new ECB(1, 17))), new Version(35, new int[]{6, 30, 54, 78, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, WebSocketProtocol.PAYLOAD_SHORT, 150}, new ECBlocks(30, new ECB(12, 121), new ECB(7, 122)), new ECBlocks(28, new ECB(12, 47), new ECB(26, 48)), new ECBlocks(30, new ECB(39, 24), new ECB(14, 25)), new ECBlocks(30, new ECB(22, 15), new ECB(41, 16))), new Version(36, new int[]{6, 24, 50, 76, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 128, 154}, new ECBlocks(30, new ECB(6, 121), new ECB(14, 122)), new ECBlocks(28, new ECB(6, 47), new ECB(34, 48)), new ECBlocks(30, new ECB(46, 24), new ECB(10, 25)), new ECBlocks(30, new ECB(2, 15), new ECB(64, 16))), new Version(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new ECBlocks(30, new ECB(17, 122), new ECB(4, 123)), new ECBlocks(28, new ECB(29, 46), new ECB(14, 47)), new ECBlocks(30, new ECB(49, 24), new ECB(10, 25)), new ECBlocks(30, new ECB(24, 15), new ECB(46, 16))), new Version(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new ECBlocks(30, new ECB(4, 122), new ECB(18, 123)), new ECBlocks(28, new ECB(13, 46), new ECB(32, 47)), new ECBlocks(30, new ECB(48, 24), new ECB(14, 25)), new ECBlocks(30, new ECB(42, 15), new ECB(32, 16))), new Version(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new ECBlocks(30, new ECB(20, 117), new ECB(4, 118)), new ECBlocks(28, new ECB(40, 47), new ECB(7, 48)), new ECBlocks(30, new ECB(43, 24), new ECB(22, 25)), new ECBlocks(30, new ECB(10, 15), new ECB(67, 16))), new Version(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new ECBlocks(30, new ECB(19, 118), new ECB(6, 119)), new ECBlocks(28, new ECB(18, 47), new ECB(31, 48)), new ECBlocks(30, new ECB(34, 24), new ECB(34, 25)), new ECBlocks(30, new ECB(20, 15), new ECB(61, 16)))};
    }
}
