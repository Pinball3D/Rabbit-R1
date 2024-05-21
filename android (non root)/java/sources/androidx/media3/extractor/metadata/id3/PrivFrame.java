package androidx.media3.extractor.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.Util;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new Parcelable.Creator<PrivFrame>() { // from class: androidx.media3.extractor.metadata.id3.PrivFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    };
    public static final String ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.owner = str;
        this.privateData = bArr;
    }

    PrivFrame(Parcel parcel) {
        super("PRIV");
        this.owner = (String) Util.castNonNull(parcel.readString());
        this.privateData = (byte[]) Util.castNonNull(parcel.createByteArray());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        return Util.areEqual(this.owner, privFrame.owner) && Arrays.equals(this.privateData, privFrame.privateData);
    }

    public int hashCode() {
        String str = this.owner;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.privateData);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public String toString() {
        return this.id + ": owner=" + this.owner;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.owner);
        parcel.writeByteArray(this.privateData);
    }
}
