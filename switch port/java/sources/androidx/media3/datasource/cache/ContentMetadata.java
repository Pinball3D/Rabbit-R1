package androidx.media3.datasource.cache;

import android.net.Uri;

/* loaded from: classes2.dex */
public interface ContentMetadata {
    public static final String KEY_CONTENT_LENGTH = "exo_len";
    public static final String KEY_CUSTOM_PREFIX = "custom_";
    public static final String KEY_REDIRECTED_URI = "exo_redir";

    boolean contains(String str);

    long get(String str, long j);

    String get(String str, String str2);

    byte[] get(String str, byte[] bArr);

    static long getContentLength(ContentMetadata contentMetadata) {
        return contentMetadata.get("exo_len", -1L);
    }

    static Uri getRedirectedUri(ContentMetadata contentMetadata) {
        String str = contentMetadata.get("exo_redir", (String) null);
        if (str == null) {
            return null;
        }
        return Uri.parse(str);
    }
}
