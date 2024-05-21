package androidx.activity.result;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ActivityResult implements Parcelable {
    public static final Parcelable.Creator<ActivityResult> CREATOR = new Parcelable.Creator<ActivityResult>() { // from class: androidx.activity.result.ActivityResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult createFromParcel(Parcel parcel) {
            return new ActivityResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult[] newArray(int i) {
            return new ActivityResult[i];
        }
    };
    private final Intent mData;
    private final int mResultCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent getData() {
        return this.mData;
    }

    public int getResultCode() {
        return this.mResultCode;
    }

    public ActivityResult(int i, Intent intent) {
        this.mResultCode = i;
        this.mData = intent;
    }

    ActivityResult(Parcel parcel) {
        this.mResultCode = parcel.readInt();
        this.mData = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    public String toString() {
        return "ActivityResult{resultCode=" + resultCodeToString(this.mResultCode) + ", data=" + this.mData + '}';
    }

    public static String resultCodeToString(int i) {
        return i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mResultCode);
        parcel.writeInt(this.mData == null ? 0 : 1);
        Intent intent = this.mData;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
