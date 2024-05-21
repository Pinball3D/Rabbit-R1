package androidx.media3.container;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new Parcelable.Creator<MdtaMetadataEntry>() { // from class: androidx.media3.container.MdtaMetadataEntry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry[] newArray(int i) {
            return new MdtaMetadataEntry[i];
        }
    };
    public static final String KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public static final int TYPE_INDICATOR_FLOAT32 = 23;
    public static final int TYPE_INDICATOR_INT32 = 67;
    public static final int TYPE_INDICATOR_STRING = 1;
    public final String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        this.key = str;
        this.value = bArr;
        this.localeIndicator = i;
        this.typeIndicator = i2;
    }

    private MdtaMetadataEntry(Parcel parcel) {
        this.key = (String) Util.castNonNull(parcel.readString());
        this.value = (byte[]) Util.castNonNull(parcel.createByteArray());
        this.localeIndicator = parcel.readInt();
        this.typeIndicator = parcel.readInt();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        return this.key.equals(mdtaMetadataEntry.key) && Arrays.equals(this.value, mdtaMetadataEntry.value) && this.localeIndicator == mdtaMetadataEntry.localeIndicator && this.typeIndicator == mdtaMetadataEntry.typeIndicator;
    }

    public int hashCode() {
        return ((((((527 + this.key.hashCode()) * 31) + Arrays.hashCode(this.value)) * 31) + this.localeIndicator) * 31) + this.typeIndicator;
    }

    public String toString() {
        String fromUtf8Bytes;
        int i = this.typeIndicator;
        if (i == 1) {
            fromUtf8Bytes = Util.fromUtf8Bytes(this.value);
        } else if (i == 23) {
            fromUtf8Bytes = String.valueOf(Util.toFloat(this.value));
        } else if (i == 67) {
            fromUtf8Bytes = String.valueOf(Util.toInteger(this.value));
        } else {
            fromUtf8Bytes = Util.toHexString(this.value);
        }
        return "mdta: key=" + this.key + ", value=" + fromUtf8Bytes;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeByteArray(this.value);
        parcel.writeInt(this.localeIndicator);
        parcel.writeInt(this.typeIndicator);
    }
}
