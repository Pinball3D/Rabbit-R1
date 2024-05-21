package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ObservableByte extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableByte> CREATOR = new Parcelable.Creator<ObservableByte>() { // from class: androidx.databinding.ObservableByte.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableByte createFromParcel(Parcel parcel) {
            return new ObservableByte(parcel.readByte());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableByte[] newArray(int i) {
            return new ObservableByte[i];
        }
    };
    static final long serialVersionUID = 1;
    private byte mValue;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte get() {
        return this.mValue;
    }

    public ObservableByte(byte b) {
        this.mValue = b;
    }

    public ObservableByte() {
    }

    public ObservableByte(Observable... observableArr) {
        super(observableArr);
    }

    public void set(byte b) {
        if (b != this.mValue) {
            this.mValue = b;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.mValue);
    }
}
