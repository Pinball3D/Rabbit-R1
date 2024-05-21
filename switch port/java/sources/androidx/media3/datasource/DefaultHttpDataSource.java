package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.datasource.HttpDataSource;
import com.google.common.base.Predicate;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public class DefaultHttpDataSource extends BaseDataSource implements HttpDataSource {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final int HTTP_STATUS_PERMANENT_REDIRECT = 308;
    private static final int HTTP_STATUS_TEMPORARY_REDIRECT = 307;
    private static final long MAX_BYTES_TO_DRAIN = 2048;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "DefaultHttpDataSource";
    private final boolean allowCrossProtocolRedirects;
    private long bytesRead;
    private long bytesToRead;
    private final int connectTimeoutMillis;
    private HttpURLConnection connection;
    private Predicate<String> contentTypePredicate;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private InputStream inputStream;
    private final boolean keepPostFor302Redirects;
    private boolean opened;
    private final int readTimeoutMillis;
    private final HttpDataSource.RequestProperties requestProperties;
    private int responseCode;
    private final String userAgent;

    @Override // androidx.media3.datasource.HttpDataSource
    public int getResponseCode() {
        int i;
        if (this.connection == null || (i = this.responseCode) <= 0) {
            return -1;
        }
        return i;
    }

    @Deprecated
    public void setContentTypePredicate(Predicate<String> predicate) {
        this.contentTypePredicate = predicate;
    }

    /* loaded from: classes2.dex */
    public static final class Factory implements HttpDataSource.Factory {
        private boolean allowCrossProtocolRedirects;
        private Predicate<String> contentTypePredicate;
        private boolean keepPostFor302Redirects;
        private TransferListener transferListener;
        private String userAgent;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        public Factory setAllowCrossProtocolRedirects(boolean z) {
            this.allowCrossProtocolRedirects = z;
            return this;
        }

        public Factory setConnectTimeoutMs(int i) {
            this.connectTimeoutMs = i;
            return this;
        }

        public Factory setContentTypePredicate(Predicate<String> predicate) {
            this.contentTypePredicate = predicate;
            return this;
        }

        public Factory setKeepPostFor302Redirects(boolean z) {
            this.keepPostFor302Redirects = z;
            return this;
        }

        public Factory setReadTimeoutMs(int i) {
            this.readTimeoutMs = i;
            return this;
        }

        public Factory setTransferListener(TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        public Factory setUserAgent(String str) {
            this.userAgent = str;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        public /* bridge */ /* synthetic */ HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            return setDefaultRequestProperties((Map<String, String>) map);
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        public final Factory setDefaultRequestProperties(Map<String, String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory, androidx.media3.datasource.DataSource.Factory
        public DefaultHttpDataSource createDataSource() {
            DefaultHttpDataSource defaultHttpDataSource = new DefaultHttpDataSource(this.userAgent, this.connectTimeoutMs, this.readTimeoutMs, this.allowCrossProtocolRedirects, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultHttpDataSource.addTransferListener(transferListener);
            }
            return defaultHttpDataSource;
        }
    }

    @Deprecated
    public DefaultHttpDataSource() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public DefaultHttpDataSource(String str) {
        this(str, 8000, 8000);
    }

    @Deprecated
    public DefaultHttpDataSource(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public DefaultHttpDataSource(String str, int i, int i2, boolean z, HttpDataSource.RequestProperties requestProperties) {
        this(str, i, i2, z, requestProperties, null, false);
    }

    private DefaultHttpDataSource(String str, int i, int i2, boolean z, HttpDataSource.RequestProperties requestProperties, Predicate<String> predicate, boolean z2) {
        super(true);
        this.userAgent = str;
        this.connectTimeoutMillis = i;
        this.readTimeoutMillis = i2;
        this.allowCrossProtocolRedirects = z;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = predicate;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.keepPostFor302Redirects = z2;
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // androidx.media3.datasource.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        if (this.connection == null) {
            return ImmutableMap.of();
        }
        return new NullFilteringHeadersMap(this.connection.getHeaderFields());
    }

    @Override // androidx.media3.datasource.HttpDataSource
    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }

    @Override // androidx.media3.datasource.HttpDataSource
    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    @Override // androidx.media3.datasource.HttpDataSource
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        byte[] bArr;
        this.dataSpec = dataSpec;
        long j = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        transferInitializing(dataSpec);
        try {
            HttpURLConnection makeConnection = makeConnection(dataSpec);
            this.connection = makeConnection;
            this.responseCode = makeConnection.getResponseCode();
            String responseMessage = makeConnection.getResponseMessage();
            int i = this.responseCode;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = makeConnection.getHeaderFields();
                if (this.responseCode == 416) {
                    if (dataSpec.position == HttpUtil.getDocumentSize(makeConnection.getHeaderField(HttpHeaders.CONTENT_RANGE))) {
                        this.opened = true;
                        transferStarted(dataSpec);
                        if (dataSpec.length != -1) {
                            return dataSpec.length;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = makeConnection.getErrorStream();
                try {
                    bArr = errorStream != null ? Util.toByteArray(errorStream) : Util.EMPTY_BYTE_ARRAY;
                } catch (IOException unused) {
                    bArr = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr2 = bArr;
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidResponseCodeException(this.responseCode, responseMessage, this.responseCode == 416 ? new DataSourceException(2008) : null, headerFields, dataSpec, bArr2);
            }
            String contentType = makeConnection.getContentType();
            Predicate<String> predicate = this.contentTypePredicate;
            if (predicate != null && !predicate.apply(contentType)) {
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
            }
            if (this.responseCode == 200 && dataSpec.position != 0) {
                j = dataSpec.position;
            }
            boolean isCompressed = isCompressed(makeConnection);
            if (isCompressed) {
                this.bytesToRead = dataSpec.length;
            } else if (dataSpec.length != -1) {
                this.bytesToRead = dataSpec.length;
            } else {
                long contentLength = HttpUtil.getContentLength(makeConnection.getHeaderField(HttpHeaders.CONTENT_LENGTH), makeConnection.getHeaderField(HttpHeaders.CONTENT_RANGE));
                this.bytesToRead = contentLength != -1 ? contentLength - j : -1L;
            }
            try {
                this.inputStream = makeConnection.getInputStream();
                if (isCompressed) {
                    this.inputStream = new GZIPInputStream(this.inputStream);
                }
                this.opened = true;
                transferStarted(dataSpec);
                try {
                    skipFully(j, dataSpec);
                    return this.bytesToRead;
                } catch (IOException e) {
                    closeConnectionQuietly();
                    if (e instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2000, 1);
                }
            } catch (IOException e2) {
                closeConnectionQuietly();
                throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, 2000, 1);
            }
        } catch (IOException e3) {
            closeConnectionQuietly();
            throw HttpDataSource.HttpDataSourceException.createForIOException(e3, dataSpec, 1);
        }
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            return readInternal(bArr, i, i2);
        } catch (IOException e) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e, (DataSpec) Util.castNonNull(this.dataSpec), 2);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                long j = this.bytesToRead;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.bytesRead;
                }
                maybeTerminateInputStream(this.connection, j2);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, (DataSpec) Util.castNonNull(this.dataSpec), 2000, 3);
                }
            }
        } finally {
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a9, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.HttpURLConnection makeConnection(androidx.media3.datasource.DataSpec r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.datasource.DefaultHttpDataSource.makeConnection(androidx.media3.datasource.DataSpec):java.net.HttpURLConnection");
    }

    private HttpURLConnection makeConnection(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection openConnection = openConnection(url);
        openConnection.setConnectTimeout(this.connectTimeoutMillis);
        openConnection.setReadTimeout(this.readTimeoutMillis);
        HashMap hashMap = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            hashMap.putAll(requestProperties.getSnapshot());
        }
        hashMap.putAll(this.requestProperties.getSnapshot());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            openConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String buildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j, j2);
        if (buildRangeRequestHeader != null) {
            openConnection.setRequestProperty(HttpHeaders.RANGE, buildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            openConnection.setRequestProperty(HttpHeaders.USER_AGENT, str);
        }
        openConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, z ? "gzip" : "identity");
        openConnection.setInstanceFollowRedirects(z2);
        openConnection.setDoOutput(bArr != null);
        openConnection.setRequestMethod(DataSpec.getStringForHttpMethod(i));
        if (bArr != null) {
            openConnection.setFixedLengthStreamingMode(bArr.length);
            openConnection.connect();
            OutputStream outputStream = openConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            openConnection.connect();
        }
        return openConnection;
    }

    HttpURLConnection openConnection(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    private URL handleRedirect(URL url, String str, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", dataSpec, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new HttpDataSource.HttpDataSourceException("Unsupported protocol redirect: " + protocol, dataSpec, 2001, 1);
            }
            if (this.allowCrossProtocolRedirects || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new HttpDataSource.HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", dataSpec, 2001, 1);
        } catch (MalformedURLException e) {
            throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2001, 1);
        }
    }

    private void skipFully(long j, DataSpec dataSpec) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int read = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, 0, (int) Math.min(j, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), dataSpec, 2000, 1);
            }
            if (read == -1) {
                throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j -= read;
            bytesTransferred(read);
        }
    }

    private int readInternal(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesToRead;
        if (j != -1) {
            long j2 = j - this.bytesRead;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int read = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.bytesRead += read;
        bytesTransferred(read);
        return read;
    }

    private static void maybeTerminateInputStream(HttpURLConnection httpURLConnection, long j) {
        if (httpURLConnection != null && Util.SDK_INT >= 19 && Util.SDK_INT <= 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j <= MAX_BYTES_TO_DRAIN) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (!"com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) && !"com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    return;
                }
                Method declaredMethod = ((Class) Assertions.checkNotNull(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    private void closeConnectionQuietly() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e(TAG, "Unexpected error while disconnecting", e);
            }
            this.connection = null;
        }
    }

    private static boolean isCompressed(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
    }

    /* loaded from: classes2.dex */
    private static class NullFilteringHeadersMap extends ForwardingMap<String, List<String>> {
        private final Map<String, List<String>> headers;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ boolean lambda$keySet$0(String str) {
            return str != null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public Map<String, List<String>> delegate() {
            return this.headers;
        }

        public NullFilteringHeadersMap(Map<String, List<String>> map) {
            this.headers = map;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public List<String> get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<String> keySet() {
            return Sets.filter(super.keySet(), new Predicate() { // from class: androidx.media3.datasource.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultHttpDataSource.NullFilteringHeadersMap.lambda$keySet$0((String) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ boolean lambda$entrySet$1(Map.Entry entry) {
            return entry.getKey() != null;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<Map.Entry<String, List<String>>> entrySet() {
            return Sets.filter(super.entrySet(), new Predicate() { // from class: androidx.media3.datasource.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultHttpDataSource.NullFilteringHeadersMap.lambda$entrySet$1((Map.Entry) obj);
                }
            });
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            return super.size() == 1 && super.containsKey(null);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean containsValue(Object obj) {
            return super.standardContainsValue(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean equals(Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public int hashCode() {
            return super.standardHashCode();
        }
    }
}
