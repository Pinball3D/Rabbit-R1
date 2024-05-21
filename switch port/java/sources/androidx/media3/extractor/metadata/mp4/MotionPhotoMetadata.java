package androidx.media3.extractor.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.Metadata;
import com.google.common.primitives.Longs;

/* loaded from: classes2.dex */
public final class MotionPhotoMetadata implements Metadata.Entry {
    public static final Parcelable.Creator<MotionPhotoMetadata> CREATOR = new Parcelable.Creator<MotionPhotoMetadata>() { // from class: androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MotionPhotoMetadata createFromParcel(Parcel parcel) {
            return new MotionPhotoMetadata(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MotionPhotoMetadata[] newArray(int i) {
            return new MotionPhotoMetadata[i];
        }
    };
    public final long photoPresentationTimestampUs;
    public final long photoSize;
    public final long photoStartPosition;
    public final long videoSize;
    public final long videoStartPosition;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MotionPhotoMetadata(long j, long j2, long j3, long j4, long j5) {
        this.photoStartPosition = j;
        this.photoSize = j2;
        this.photoPresentationTimestampUs = j3;
        this.videoStartPosition = j4;
        this.videoSize = j5;
    }

    private MotionPhotoMetadata(Parcel parcel) {
        this.photoStartPosition = parcel.readLong();
        this.photoSize = parcel.readLong();
        this.photoPresentationTimestampUs = parcel.readLong();
        this.videoStartPosition = parcel.readLong();
        this.videoSize = parcel.readLong();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
        return this.photoStartPosition == motionPhotoMetadata.photoStartPosition && this.photoSize == motionPhotoMetadata.photoSize && this.photoPresentationTimestampUs == motionPhotoMetadata.photoPresentationTimestampUs && this.videoStartPosition == motionPhotoMetadata.videoStartPosition && this.videoSize == motionPhotoMetadata.videoSize;
    }

    public int hashCode() {
        return ((((((((527 + Longs.hashCode(this.photoStartPosition)) * 31) + Longs.hashCode(this.photoSize)) * 31) + Longs.hashCode(this.photoPresentationTimestampUs)) * 31) + Longs.hashCode(this.videoStartPosition)) * 31) + Longs.hashCode(this.videoSize);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.photoStartPosition + ", photoSize=" + this.photoSize + ", photoPresentationTimestampUs=" + this.photoPresentationTimestampUs + ", videoStartPosition=" + this.videoStartPosition + ", videoSize=" + this.videoSize;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.photoStartPosition);
        parcel.writeLong(this.photoSize);
        parcel.writeLong(this.photoPresentationTimestampUs);
        parcel.writeLong(this.videoStartPosition);
        parcel.writeLong(this.videoSize);
    }
}
