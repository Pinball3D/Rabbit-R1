package androidx.media3.container;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class XmpData implements Metadata.Entry {
    public static final Parcelable.Creator<XmpData> CREATOR = new Parcelable.Creator<XmpData>() { // from class: androidx.media3.container.XmpData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public XmpData createFromParcel(Parcel parcel) {
            return new XmpData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public XmpData[] newArray(int i) {
            return new XmpData[i];
        }
    };
    public final byte[] data;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public XmpData(byte[] bArr) {
        this.data = bArr;
    }

    private XmpData(Parcel parcel) {
        this.data = (byte[]) Util.castNonNull(parcel.createByteArray());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.data, ((XmpData) obj).data);
    }

    public int hashCode() {
        return Arrays.hashCode(this.data);
    }

    public String toString() {
        return "XMP: " + Util.toHexString(this.data);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.data);
    }
}
