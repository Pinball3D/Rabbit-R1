package com.google.zxing.datamatrix.decoder;

import androidx.compose.material3.MenuKt;
import androidx.core.location.LocationRequestCompat;
import com.google.zxing.FormatException;

/* loaded from: classes3.dex */
public final class Version {
    private static final Version[] VERSIONS = buildVersions();
    private final int dataRegionSizeColumns;
    private final int dataRegionSizeRows;
    private final ECBlocks ecBlocks;
    private final int symbolSizeColumns;
    private final int symbolSizeRows;
    private final int totalCodewords;
    private final int versionNumber;

    public int getDataRegionSizeColumns() {
        return this.dataRegionSizeColumns;
    }

    public int getDataRegionSizeRows() {
        return this.dataRegionSizeRows;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ECBlocks getECBlocks() {
        return this.ecBlocks;
    }

    public int getSymbolSizeColumns() {
        return this.symbolSizeColumns;
    }

    public int getSymbolSizeRows() {
        return this.symbolSizeRows;
    }

    public int getTotalCodewords() {
        return this.totalCodewords;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }

    private Version(int i, int i2, int i3, int i4, int i5, ECBlocks eCBlocks) {
        this.versionNumber = i;
        this.symbolSizeRows = i2;
        this.symbolSizeColumns = i3;
        this.dataRegionSizeRows = i4;
        this.dataRegionSizeColumns = i5;
        this.ecBlocks = eCBlocks;
        int eCCodewords = eCBlocks.getECCodewords();
        int i6 = 0;
        for (ECB ecb : eCBlocks.getECBlocks()) {
            i6 += ecb.getCount() * (ecb.getDataCodewords() + eCCodewords);
        }
        this.totalCodewords = i6;
    }

    public static Version getVersionForDimensions(int i, int i2) throws FormatException {
        if ((i & 1) != 0 || (i2 & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        for (Version version : VERSIONS) {
            if (version.symbolSizeRows == i && version.symbolSizeColumns == i2) {
                return version;
            }
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class ECBlocks {
        private final ECB[] ecBlocks;
        private final int ecCodewords;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ECB[] getECBlocks() {
            return this.ecBlocks;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getECCodewords() {
            return this.ecCodewords;
        }

        private ECBlocks(int i, ECB ecb) {
            this.ecCodewords = i;
            this.ecBlocks = new ECB[]{ecb};
        }

        private ECBlocks(int i, ECB ecb, ECB ecb2) {
            this.ecCodewords = i;
            this.ecBlocks = new ECB[]{ecb, ecb2};
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class ECB {
        private final int count;
        private final int dataCodewords;

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getCount() {
            return this.count;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getDataCodewords() {
            return this.dataCodewords;
        }

        private ECB(int i, int i2) {
            this.count = i;
            this.dataCodewords = i2;
        }
    }

    public String toString() {
        return String.valueOf(this.versionNumber);
    }

    private static Version[] buildVersions() {
        int i = 1;
        int i2 = 5;
        Version version = new Version(1, 10, 10, 8, 8, new ECBlocks(i2, new ECB(i, 3)));
        Version version2 = new Version(2, 12, 12, 10, 10, new ECBlocks(7, new ECB(i, i2)));
        Version version3 = new Version(3, 14, 14, 12, 12, new ECBlocks(10, new ECB(i, 8)));
        int i3 = 12;
        Version version4 = new Version(4, 16, 16, 14, 14, new ECBlocks(i3, new ECB(i, i3)));
        int i4 = 18;
        Version version5 = new Version(5, 18, 18, 16, 16, new ECBlocks(14, new ECB(i, i4)));
        Version version6 = new Version(6, 20, 20, 18, 18, new ECBlocks(i4, new ECB(i, 22)));
        Version version7 = new Version(7, 22, 22, 20, 20, new ECBlocks(20, new ECB(i, 30)));
        int i5 = 36;
        Version version8 = new Version(8, 24, 24, 22, 22, new ECBlocks(24, new ECB(i, i5)));
        Version version9 = new Version(9, 26, 26, 24, 24, new ECBlocks(28, new ECB(i, 44)));
        Version version10 = new Version(10, 32, 32, 14, 14, new ECBlocks(i5, new ECB(i, 62)));
        int i6 = 42;
        int i7 = 56;
        int i8 = 2;
        int i9 = 4;
        return new Version[]{version, version2, version3, version4, version5, version6, version7, version8, version9, version10, new Version(11, 36, 36, 16, 16, new ECBlocks(i6, new ECB(i, 86))), new Version(12, 40, 40, 18, 18, new ECBlocks(48, new ECB(i, 114))), new Version(13, 44, 44, 20, 20, new ECBlocks(i7, new ECB(i, 144))), new Version(14, 48, 48, 22, 22, new ECBlocks(68, new ECB(i, 174))), new Version(15, 52, 52, 24, 24, new ECBlocks(i6, new ECB(i8, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY))), new Version(16, 64, 64, 14, 14, new ECBlocks(i7, new ECB(i8, 140))), new Version(17, 72, 72, 16, 16, new ECBlocks(36, new ECB(i9, 92))), new Version(18, 80, 80, 18, 18, new ECBlocks(48, new ECB(i9, 114))), new Version(19, 88, 88, 20, 20, new ECBlocks(i7, new ECB(i9, 144))), new Version(20, 96, 96, 22, 22, new ECBlocks(68, new ECB(i9, 174))), new Version(21, LocationRequestCompat.QUALITY_LOW_POWER, LocationRequestCompat.QUALITY_LOW_POWER, 24, 24, new ECBlocks(i7, new ECB(6, 136))), new Version(22, MenuKt.InTransitionDuration, MenuKt.InTransitionDuration, 18, 18, new ECBlocks(68, new ECB(6, 175))), new Version(23, 132, 132, 20, 20, new ECBlocks(62, new ECB(8, 163))), new Version(24, 144, 144, 22, 22, new ECBlocks(62, new ECB(8, 156), new ECB(i8, 155))), new Version(25, 8, 18, 6, 16, new ECBlocks(7, new ECB(1, 5))), new Version(26, 8, 32, 6, 14, new ECBlocks(11, new ECB(1, 10))), new Version(27, 12, 26, 10, 24, new ECBlocks(14, new ECB(1, 16))), new Version(28, 12, 36, 10, 16, new ECBlocks(18, new ECB(1, 22))), new Version(29, 16, 36, 14, 16, new ECBlocks(24, new ECB(1, 32))), new Version(30, 16, 48, 14, 22, new ECBlocks(28, new ECB(1, 49)))};
    }
}
