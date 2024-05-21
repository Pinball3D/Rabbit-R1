package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ObservableLong extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableLong> CREATOR = new Parcelable.Creator<ObservableLong>() { // from class: androidx.databinding.ObservableLong.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableLong createFromParcel(Parcel parcel) {
            return new ObservableLong(parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableLong[] newArray(int i) {
            return new ObservableLong[i];
        }
    };
    static final long serialVersionUID = 1;
    private long mValue;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long get() {
        return this.mValue;
    }

    public ObservableLong(long j) {
        this.mValue = j;
    }

    public ObservableLong() {
    }

    public ObservableLong(Observable... observableArr) {
        super(observableArr);
    }

    public void set(long j) {
        if (j != this.mValue) {
            this.mValue = j;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mValue);
    }
}
