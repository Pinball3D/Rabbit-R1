package com.google.android.exoplayer2.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new Parcelable.Creator<HlsTrackMetadataEntry>() { // from class: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry[] newArray(int i) {
            return new HlsTrackMetadataEntry[i];
        }
    };
    public final String groupId;
    public final String name;
    public final List<VariantInfo> variantInfos;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* loaded from: classes2.dex */
    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new Parcelable.Creator<VariantInfo>() { // from class: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VariantInfo[] newArray(int i) {
                return new VariantInfo[i];
            }
        };
        public final String audioGroupId;
        public final int averageBitrate;
        public final String captionGroupId;
        public final int peakBitrate;
        public final String subtitleGroupId;
        public final String videoGroupId;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public VariantInfo(int i, int i2, String str, String str2, String str3, String str4) {
            this.averageBitrate = i;
            this.peakBitrate = i2;
            this.videoGroupId = str;
            this.audioGroupId = str2;
            this.subtitleGroupId = str3;
            this.captionGroupId = str4;
        }

        VariantInfo(Parcel parcel) {
            this.averageBitrate = parcel.readInt();
            this.peakBitrate = parcel.readInt();
            this.videoGroupId = parcel.readString();
            this.audioGroupId = parcel.readString();
            this.subtitleGroupId = parcel.readString();
            this.captionGroupId = parcel.readString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            VariantInfo variantInfo = (VariantInfo) obj;
            return this.averageBitrate == variantInfo.averageBitrate && this.peakBitrate == variantInfo.peakBitrate && TextUtils.equals(this.videoGroupId, variantInfo.videoGroupId) && TextUtils.equals(this.audioGroupId, variantInfo.audioGroupId) && TextUtils.equals(this.subtitleGroupId, variantInfo.subtitleGroupId) && TextUtils.equals(this.captionGroupId, variantInfo.captionGroupId);
        }

        public int hashCode() {
            int i = ((this.averageBitrate * 31) + this.peakBitrate) * 31;
            String str = this.videoGroupId;
            int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.audioGroupId;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.subtitleGroupId;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.captionGroupId;
            return hashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.averageBitrate);
            parcel.writeInt(this.peakBitrate);
            parcel.writeString(this.videoGroupId);
            parcel.writeString(this.audioGroupId);
            parcel.writeString(this.subtitleGroupId);
            parcel.writeString(this.captionGroupId);
        }
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.groupId = str;
        this.name = str2;
        this.variantInfos = Collections.unmodifiableList(new ArrayList(list));
    }

    HlsTrackMetadataEntry(Parcel parcel) {
        this.groupId = parcel.readString();
        this.name = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add((VariantInfo) parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.variantInfos = Collections.unmodifiableList(arrayList);
    }

    public String toString() {
        return "HlsTrackMetadataEntry" + (this.groupId != null ? " [" + this.groupId + ", " + this.name + "]" : "");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
        return TextUtils.equals(this.groupId, hlsTrackMetadataEntry.groupId) && TextUtils.equals(this.name, hlsTrackMetadataEntry.name) && this.variantInfos.equals(hlsTrackMetadataEntry.variantInfos);
    }

    public int hashCode() {
        String str = this.groupId;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.variantInfos.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.groupId);
        parcel.writeString(this.name);
        int size = this.variantInfos.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable(this.variantInfos.get(i2), 0);
        }
    }
}
