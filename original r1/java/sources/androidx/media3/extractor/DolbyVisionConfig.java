package androidx.media3.extractor;

import androidx.media3.common.util.ParsableByteArray;

/* loaded from: classes2.dex */
public final class DolbyVisionConfig {
    public final String codecs;
    public final int level;
    public final int profile;

    public static DolbyVisionConfig parse(ParsableByteArray parsableByteArray) {
        String str;
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte >> 1;
        int readUnsignedByte2 = ((parsableByteArray.readUnsignedByte() >> 3) & 31) | ((readUnsignedByte & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else {
            if (i != 9) {
                return null;
            }
            str = "avc3";
        }
        return new DolbyVisionConfig(i, readUnsignedByte2, str + ".0" + i + (readUnsignedByte2 >= 10 ? "." : ".0") + readUnsignedByte2);
    }

    private DolbyVisionConfig(int i, int i2, String str) {
        this.profile = i;
        this.level = i2;
        this.codecs = str;
    }
}
