package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.Bundleable;
import androidx.media3.common.util.Util;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes2.dex */
public final class ColorInfo implements Bundleable {
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    private int hashCode;
    public final byte[] hdrStaticInfo;
    public static final ColorInfo SDR_BT709_LIMITED = new ColorInfo(1, 2, 3, null);
    public static final ColorInfo SRGB_BT709_FULL = new Builder().setColorSpace(1).setColorRange(1).setColorTransfer(2).build();
    private static final String FIELD_COLOR_SPACE = Util.intToStringMaxRadix(0);
    private static final String FIELD_COLOR_RANGE = Util.intToStringMaxRadix(1);
    private static final String FIELD_COLOR_TRANSFER = Util.intToStringMaxRadix(2);
    private static final String FIELD_HDR_STATIC_INFO = Util.intToStringMaxRadix(3);
    public static final Bundleable.Creator<ColorInfo> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.ColorInfo$$ExternalSyntheticLambda0
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            return ColorInfo.lambda$static$0(bundle);
        }
    };

    private static String colorRangeToString(int i) {
        return i != -1 ? i != 1 ? i != 2 ? "Undefined color range" : "Limited range" : "Full range" : "Unset color range";
    }

    private static String colorSpaceToString(int i) {
        return i != -1 ? i != 6 ? i != 1 ? i != 2 ? "Undefined color space" : "BT601" : "BT709" : "BT2020" : "Unset color space";
    }

    private static String colorTransferToString(int i) {
        return i != -1 ? i != 10 ? i != 1 ? i != 2 ? i != 3 ? i != 6 ? i != 7 ? "Undefined color transfer" : "HLG" : "ST2084 PQ" : "SDR SMPTE 170M" : "sRGB" : "Linear" : "Gamma 2.2" : "Unset color transfer";
    }

    @Pure
    public static int isoColorPrimariesToColorSpace(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    @Pure
    public static int isoTransferCharacteristicsToColorTransfer(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 4) {
            return 10;
        }
        if (i == 13) {
            return 2;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    public boolean isValid() {
        return (this.colorSpace == -1 || this.colorRange == -1 || this.colorTransfer == -1) ? false : true;
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private int colorRange;
        private int colorSpace;
        private int colorTransfer;
        private byte[] hdrStaticInfo;

        public Builder setColorRange(int i) {
            this.colorRange = i;
            return this;
        }

        public Builder setColorSpace(int i) {
            this.colorSpace = i;
            return this;
        }

        public Builder setColorTransfer(int i) {
            this.colorTransfer = i;
            return this;
        }

        public Builder setHdrStaticInfo(byte[] bArr) {
            this.hdrStaticInfo = bArr;
            return this;
        }

        public Builder() {
            this.colorSpace = -1;
            this.colorRange = -1;
            this.colorTransfer = -1;
        }

        private Builder(ColorInfo colorInfo) {
            this.colorSpace = colorInfo.colorSpace;
            this.colorRange = colorInfo.colorRange;
            this.colorTransfer = colorInfo.colorTransfer;
            this.hdrStaticInfo = colorInfo.hdrStaticInfo;
        }

        public ColorInfo build() {
            return new ColorInfo(this.colorSpace, this.colorRange, this.colorTransfer, this.hdrStaticInfo);
        }
    }

    public static boolean isTransferHdr(ColorInfo colorInfo) {
        int i;
        return colorInfo != null && ((i = colorInfo.colorTransfer) == 7 || i == 6);
    }

    @Deprecated
    public ColorInfo(int i, int i2, int i3, byte[] bArr) {
        this.colorSpace = i;
        this.colorRange = i2;
        this.colorTransfer = i3;
        this.hdrStaticInfo = bArr;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public String toLogString() {
        return !isValid() ? "NA" : Util.formatInvariant("%s/%s/%s", colorSpaceToString(this.colorSpace), colorRangeToString(this.colorRange), colorTransferToString(this.colorTransfer));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ColorInfo colorInfo = (ColorInfo) obj;
        return this.colorSpace == colorInfo.colorSpace && this.colorRange == colorInfo.colorRange && this.colorTransfer == colorInfo.colorTransfer && Arrays.equals(this.hdrStaticInfo, colorInfo.hdrStaticInfo);
    }

    public String toString() {
        return "ColorInfo(" + colorSpaceToString(this.colorSpace) + ", " + colorRangeToString(this.colorRange) + ", " + colorTransferToString(this.colorTransfer) + ", " + (this.hdrStaticInfo != null) + ")";
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((((527 + this.colorSpace) * 31) + this.colorRange) * 31) + this.colorTransfer) * 31) + Arrays.hashCode(this.hdrStaticInfo);
        }
        return this.hashCode;
    }

    @Override // androidx.media3.common.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_COLOR_SPACE, this.colorSpace);
        bundle.putInt(FIELD_COLOR_RANGE, this.colorRange);
        bundle.putInt(FIELD_COLOR_TRANSFER, this.colorTransfer);
        bundle.putByteArray(FIELD_HDR_STATIC_INFO, this.hdrStaticInfo);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ ColorInfo lambda$static$0(Bundle bundle) {
        return new ColorInfo(bundle.getInt(FIELD_COLOR_SPACE, -1), bundle.getInt(FIELD_COLOR_RANGE, -1), bundle.getInt(FIELD_COLOR_TRANSFER, -1), bundle.getByteArray(FIELD_HDR_STATIC_INFO));
    }
}
