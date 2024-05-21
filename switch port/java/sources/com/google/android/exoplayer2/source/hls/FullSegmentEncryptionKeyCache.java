package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.util.Assertions;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class FullSegmentEncryptionKeyCache {
    private final LinkedHashMap<Uri, byte[]> backingMap;

    public FullSegmentEncryptionKeyCache(final int i) {
        this.backingMap = new LinkedHashMap<Uri, byte[]>(this, i + 1, 1.0f, false) { // from class: com.google.android.exoplayer2.source.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                return size() > i;
            }
        };
    }

    public byte[] get(Uri uri) {
        if (uri == null) {
            return null;
        }
        return this.backingMap.get(uri);
    }

    public byte[] put(Uri uri, byte[] bArr) {
        return this.backingMap.put((Uri) Assertions.checkNotNull(uri), (byte[]) Assertions.checkNotNull(bArr));
    }

    public boolean containsUri(Uri uri) {
        return this.backingMap.containsKey(Assertions.checkNotNull(uri));
    }

    public byte[] remove(Uri uri) {
        return this.backingMap.remove(Assertions.checkNotNull(uri));
    }
}
