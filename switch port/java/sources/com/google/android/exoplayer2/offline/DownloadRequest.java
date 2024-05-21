package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new Parcelable.Creator<DownloadRequest>() { // from class: com.google.android.exoplayer2.offline.DownloadRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest[] newArray(int i) {
            return new DownloadRequest[i];
        }
    };
    public final String customCacheKey;
    public final byte[] data;
    public final String id;
    public final byte[] keySetId;
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final Uri uri;

    /* loaded from: classes2.dex */
    public static class UnsupportedRequestException extends IOException {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private String customCacheKey;
        private byte[] data;
        private final String id;
        private byte[] keySetId;
        private String mimeType;
        private List<StreamKey> streamKeys;
        private final Uri uri;

        public Builder setCustomCacheKey(String str) {
            this.customCacheKey = str;
            return this;
        }

        public Builder setData(byte[] bArr) {
            this.data = bArr;
            return this;
        }

        public Builder setKeySetId(byte[] bArr) {
            this.keySetId = bArr;
            return this;
        }

        public Builder setMimeType(String str) {
            this.mimeType = str;
            return this;
        }

        public Builder setStreamKeys(List<StreamKey> list) {
            this.streamKeys = list;
            return this;
        }

        public Builder(String str, Uri uri) {
            this.id = str;
            this.uri = uri;
        }

        public DownloadRequest build() {
            String str = this.id;
            Uri uri = this.uri;
            String str2 = this.mimeType;
            List list = this.streamKeys;
            if (list == null) {
                list = ImmutableList.of();
            }
            return new DownloadRequest(str, uri, str2, list, this.keySetId, this.customCacheKey, this.data);
        }
    }

    private DownloadRequest(String str, Uri uri, String str2, List<StreamKey> list, byte[] bArr, String str3, byte[] bArr2) {
        int inferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(uri, str2);
        if (inferContentTypeForUriAndMimeType == 0 || inferContentTypeForUriAndMimeType == 2 || inferContentTypeForUriAndMimeType == 1) {
            Assertions.checkArgument(str3 == null, "customCacheKey must be null for type: " + inferContentTypeForUriAndMimeType);
        }
        this.id = str;
        this.uri = uri;
        this.mimeType = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.customCacheKey = str3;
        this.data = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : Util.EMPTY_BYTE_ARRAY;
    }

    DownloadRequest(Parcel parcel) {
        this.id = (String) Util.castNonNull(parcel.readString());
        this.uri = Uri.parse((String) Util.castNonNull(parcel.readString()));
        this.mimeType = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) Util.castNonNull(parcel.createByteArray());
    }

    public DownloadRequest copyWithId(String str) {
        return new DownloadRequest(str, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data);
    }

    public DownloadRequest copyWithKeySetId(byte[] bArr) {
        return new DownloadRequest(this.id, this.uri, this.mimeType, this.streamKeys, bArr, this.customCacheKey, this.data);
    }

    public DownloadRequest copyWithMergedRequest(DownloadRequest downloadRequest) {
        List emptyList;
        Assertions.checkArgument(this.id.equals(downloadRequest.id));
        if (this.streamKeys.isEmpty() || downloadRequest.streamKeys.isEmpty()) {
            emptyList = Collections.emptyList();
        } else {
            emptyList = new ArrayList(this.streamKeys);
            for (int i = 0; i < downloadRequest.streamKeys.size(); i++) {
                StreamKey streamKey = downloadRequest.streamKeys.get(i);
                if (!emptyList.contains(streamKey)) {
                    emptyList.add(streamKey);
                }
            }
        }
        return new DownloadRequest(this.id, downloadRequest.uri, downloadRequest.mimeType, emptyList, downloadRequest.keySetId, downloadRequest.customCacheKey, downloadRequest.data);
    }

    public MediaItem toMediaItem() {
        return new MediaItem.Builder().setMediaId(this.id).setUri(this.uri).setCustomCacheKey(this.customCacheKey).setMimeType(this.mimeType).setStreamKeys(this.streamKeys).build();
    }

    public String toString() {
        return this.mimeType + ":" + this.id;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return this.id.equals(downloadRequest.id) && this.uri.equals(downloadRequest.uri) && Util.areEqual(this.mimeType, downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && Arrays.equals(this.keySetId, downloadRequest.keySetId) && Util.areEqual(this.customCacheKey, downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data);
    }

    public final int hashCode() {
        int hashCode = ((this.id.hashCode() * 961) + this.uri.hashCode()) * 31;
        String str = this.mimeType;
        int hashCode2 = (((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.streamKeys.hashCode()) * 31) + Arrays.hashCode(this.keySetId)) * 31;
        String str2 = this.customCacheKey;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.data);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.uri.toString());
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.streamKeys.size());
        for (int i2 = 0; i2 < this.streamKeys.size(); i2++) {
            parcel.writeParcelable(this.streamKeys.get(i2), 0);
        }
        parcel.writeByteArray(this.keySetId);
        parcel.writeString(this.customCacheKey);
        parcel.writeByteArray(this.data);
    }
}
