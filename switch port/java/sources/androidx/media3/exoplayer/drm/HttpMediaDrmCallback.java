package androidx.media3.exoplayer.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.drm.ExoMediaDrm;
import com.google.common.collect.ImmutableMap;
import com.google.common.net.HttpHeaders;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class HttpMediaDrmCallback implements MediaDrmCallback {
    private static final int MAX_MANUAL_REDIRECTS = 5;
    private final DataSource.Factory dataSourceFactory;
    private final String defaultLicenseUrl;
    private final boolean forceDefaultLicenseUrl;
    private final Map<String, String> keyRequestProperties;

    public HttpMediaDrmCallback(String str, DataSource.Factory factory) {
        this(str, false, factory);
    }

    public HttpMediaDrmCallback(String str, boolean z, DataSource.Factory factory) {
        Assertions.checkArgument((z && TextUtils.isEmpty(str)) ? false : true);
        this.dataSourceFactory = factory;
        this.defaultLicenseUrl = str;
        this.forceDefaultLicenseUrl = z;
        this.keyRequestProperties = new HashMap();
    }

    public void setKeyRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.put(str, str2);
        }
    }

    public void clearKeyRequestProperty(String str) {
        Assertions.checkNotNull(str);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.remove(str);
        }
    }

    public void clearAllKeyRequestProperties() {
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.clear();
        }
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws MediaDrmCallbackException {
        return executePost(this.dataSourceFactory, provisionRequest.getDefaultUrl() + "&signedRequest=" + Util.fromUtf8Bytes(provisionRequest.getData()), null, Collections.emptyMap());
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) throws MediaDrmCallbackException {
        String str;
        String licenseServerUrl = keyRequest.getLicenseServerUrl();
        if (this.forceDefaultLicenseUrl || TextUtils.isEmpty(licenseServerUrl)) {
            licenseServerUrl = this.defaultLicenseUrl;
        }
        if (TextUtils.isEmpty(licenseServerUrl)) {
            throw new MediaDrmCallbackException(new DataSpec.Builder().setUri(Uri.EMPTY).build(), Uri.EMPTY, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap hashMap = new HashMap();
        if (C.PLAYREADY_UUID.equals(uuid)) {
            str = "text/xml";
        } else {
            str = C.CLEARKEY_UUID.equals(uuid) ? "application/json" : "application/octet-stream";
        }
        hashMap.put(HttpHeaders.CONTENT_TYPE, str);
        if (C.PLAYREADY_UUID.equals(uuid)) {
            hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.keyRequestProperties) {
            hashMap.putAll(this.keyRequestProperties);
        }
        return executePost(this.dataSourceFactory, licenseServerUrl, keyRequest.getData(), hashMap);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(4:11|12|13|(2:15|16)(2:17|18)) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
    
        r1 = getRedirectUrl(r11, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
    
        if (r1 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
    
        r8 = r8 + 1;
        r9 = r9.buildUpon().setUri(r1).build();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        throw r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        androidx.media3.common.util.Util.closeQuietly(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
    
        throw r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] executePost(androidx.media3.datasource.DataSource.Factory r8, java.lang.String r9, byte[] r10, java.util.Map<java.lang.String, java.lang.String> r11) throws androidx.media3.exoplayer.drm.MediaDrmCallbackException {
        /*
            androidx.media3.datasource.StatsDataSource r0 = new androidx.media3.datasource.StatsDataSource
            androidx.media3.datasource.DataSource r8 = r8.createDataSource()
            r0.<init>(r8)
            androidx.media3.datasource.DataSpec$Builder r8 = new androidx.media3.datasource.DataSpec$Builder
            r8.<init>()
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setUri(r9)
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setHttpRequestHeaders(r11)
            r9 = 2
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setHttpMethod(r9)
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setHttpBody(r10)
            r9 = 1
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setFlags(r9)
            androidx.media3.datasource.DataSpec r2 = r8.build()
            r8 = 0
            r9 = r2
        L2a:
            androidx.media3.datasource.DataSourceInputStream r10 = new androidx.media3.datasource.DataSourceInputStream     // Catch: java.lang.Exception -> L57
            r10.<init>(r0, r9)     // Catch: java.lang.Exception -> L57
            byte[] r8 = androidx.media3.common.util.Util.toByteArray(r10)     // Catch: java.lang.Throwable -> L37 androidx.media3.datasource.HttpDataSource.InvalidResponseCodeException -> L39
            androidx.media3.common.util.Util.closeQuietly(r10)     // Catch: java.lang.Exception -> L57
            return r8
        L37:
            r8 = move-exception
            goto L53
        L39:
            r11 = move-exception
            java.lang.String r1 = getRedirectUrl(r11, r8)     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L52
            int r8 = r8 + 1
            androidx.media3.datasource.DataSpec$Builder r9 = r9.buildUpon()     // Catch: java.lang.Throwable -> L37
            androidx.media3.datasource.DataSpec$Builder r9 = r9.setUri(r1)     // Catch: java.lang.Throwable -> L37
            androidx.media3.datasource.DataSpec r9 = r9.build()     // Catch: java.lang.Throwable -> L37
            androidx.media3.common.util.Util.closeQuietly(r10)     // Catch: java.lang.Exception -> L57
            goto L2a
        L52:
            throw r11     // Catch: java.lang.Throwable -> L37
        L53:
            androidx.media3.common.util.Util.closeQuietly(r10)     // Catch: java.lang.Exception -> L57
            throw r8     // Catch: java.lang.Exception -> L57
        L57:
            r8 = move-exception
            r7 = r8
            androidx.media3.exoplayer.drm.MediaDrmCallbackException r8 = new androidx.media3.exoplayer.drm.MediaDrmCallbackException
            android.net.Uri r9 = r0.getLastOpenedUri()
            java.lang.Object r9 = androidx.media3.common.util.Assertions.checkNotNull(r9)
            r3 = r9
            android.net.Uri r3 = (android.net.Uri) r3
            java.util.Map r4 = r0.getResponseHeaders()
            long r5 = r0.getBytesRead()
            r1 = r8
            r1.<init>(r2, r3, r4, r5, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.drm.HttpMediaDrmCallback.executePost(androidx.media3.datasource.DataSource$Factory, java.lang.String, byte[], java.util.Map):byte[]");
    }

    private static String getRedirectUrl(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i) {
        Map<String, List<String>> map;
        List<String> list;
        if ((invalidResponseCodeException.responseCode != 307 && invalidResponseCodeException.responseCode != 308) || i >= 5 || (map = invalidResponseCodeException.headerFields) == null || (list = map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }
}
