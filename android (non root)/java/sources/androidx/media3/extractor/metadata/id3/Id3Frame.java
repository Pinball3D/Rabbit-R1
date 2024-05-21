package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.Metadata;

/* loaded from: classes2.dex */
public abstract class Id3Frame implements Metadata.Entry {
    public final String id;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.id;
    }

    public Id3Frame(String str) {
        this.id = str;
    }
}
