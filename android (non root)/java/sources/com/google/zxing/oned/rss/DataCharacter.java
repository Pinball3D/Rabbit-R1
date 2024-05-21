package com.google.zxing.oned.rss;

/* loaded from: classes3.dex */
public class DataCharacter {
    private final int checksumPortion;
    private final int value;

    public final int getChecksumPortion() {
        return this.checksumPortion;
    }

    public final int getValue() {
        return this.value;
    }

    public final int hashCode() {
        return this.checksumPortion ^ this.value;
    }

    public DataCharacter(int i, int i2) {
        this.value = i;
        this.checksumPortion = i2;
    }

    public final String toString() {
        return this.value + "(" + this.checksumPortion + ')';
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DataCharacter)) {
            return false;
        }
        DataCharacter dataCharacter = (DataCharacter) obj;
        return this.value == dataCharacter.value && this.checksumPortion == dataCharacter.checksumPortion;
    }
}
