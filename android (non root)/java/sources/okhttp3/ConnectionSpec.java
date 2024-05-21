package okhttp3;

import io.sentry.protocol.OperatingSystem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;

/* compiled from: ConnectionSpec.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 $2\u00020\u0001:\u0002#$B7\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0000¢\u0006\u0002\b\u0017J\u0015\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0007¢\u0006\u0002\b\u0018J\u0013\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0015J\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b J\u0015\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000bH\u0007¢\u0006\u0002\b!J\b\u0010\"\u001a\u00020\u0007H\u0016R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8G¢\u0006\u0006\u001a\u0004\b\n\u0010\rR\u0018\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u000fR\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000fR\u0019\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000b8G¢\u0006\u0006\u001a\u0004\b\u0010\u0010\rR\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000e¨\u0006%"}, d2 = {"Lokhttp3/ConnectionSpec;", "", "isTls", "", "supportsTlsExtensions", "cipherSuitesAsString", "", "", "tlsVersionsAsString", "(ZZ[Ljava/lang/String;[Ljava/lang/String;)V", "cipherSuites", "", "Lokhttp3/CipherSuite;", "()Ljava/util/List;", "[Ljava/lang/String;", "()Z", "tlsVersions", "Lokhttp3/TlsVersion;", "apply", "", "sslSocket", "Ljavax/net/ssl/SSLSocket;", "isFallback", "apply$okhttp", "-deprecated_cipherSuites", "equals", "other", "hashCode", "", "isCompatible", "socket", "supportedSpec", "-deprecated_supportsTlsExtensions", "-deprecated_tlsVersions", "toString", "Builder", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class ConnectionSpec {
    private static final CipherSuite[] APPROVED_CIPHER_SUITES;
    public static final ConnectionSpec CLEARTEXT;
    public static final ConnectionSpec COMPATIBLE_TLS;
    public static final ConnectionSpec MODERN_TLS;
    private static final CipherSuite[] RESTRICTED_CIPHER_SUITES;
    public static final ConnectionSpec RESTRICTED_TLS;
    private final String[] cipherSuitesAsString;
    private final boolean isTls;
    private final boolean supportsTlsExtensions;
    private final String[] tlsVersionsAsString;

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "supportsTlsExtensions", imports = {}))
    /* renamed from: -deprecated_supportsTlsExtensions, reason: not valid java name and from getter */
    public final boolean getSupportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    /* renamed from: isTls, reason: from getter */
    public final boolean getIsTls() {
        return this.isTls;
    }

    public final boolean supportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    public ConnectionSpec(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.isTls = z;
        this.supportsTlsExtensions = z2;
        this.cipherSuitesAsString = strArr;
        this.tlsVersionsAsString = strArr2;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "cipherSuites", imports = {}))
    /* renamed from: -deprecated_cipherSuites, reason: not valid java name */
    public final List<CipherSuite> m7297deprecated_cipherSuites() {
        return cipherSuites();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "tlsVersions", imports = {}))
    /* renamed from: -deprecated_tlsVersions, reason: not valid java name */
    public final List<TlsVersion> m7299deprecated_tlsVersions() {
        return tlsVersions();
    }

    public final void apply$okhttp(SSLSocket sslSocket, boolean isFallback) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        ConnectionSpec supportedSpec = supportedSpec(sslSocket, isFallback);
        if (supportedSpec.tlsVersions() != null) {
            sslSocket.setEnabledProtocols(supportedSpec.tlsVersionsAsString);
        }
        if (supportedSpec.cipherSuites() != null) {
            sslSocket.setEnabledCipherSuites(supportedSpec.cipherSuitesAsString);
        }
    }

    private final ConnectionSpec supportedSpec(SSLSocket sslSocket, boolean isFallback) {
        String[] cipherSuitesIntersection;
        String[] tlsVersionsIntersection;
        if (this.cipherSuitesAsString != null) {
            String[] enabledCipherSuites = sslSocket.getEnabledCipherSuites();
            Intrinsics.checkNotNullExpressionValue(enabledCipherSuites, "sslSocket.enabledCipherSuites");
            cipherSuitesIntersection = Util.intersect(enabledCipherSuites, this.cipherSuitesAsString, CipherSuite.INSTANCE.getORDER_BY_NAME$okhttp());
        } else {
            cipherSuitesIntersection = sslSocket.getEnabledCipherSuites();
        }
        if (this.tlsVersionsAsString != null) {
            String[] enabledProtocols = sslSocket.getEnabledProtocols();
            Intrinsics.checkNotNullExpressionValue(enabledProtocols, "sslSocket.enabledProtocols");
            tlsVersionsIntersection = Util.intersect(enabledProtocols, this.tlsVersionsAsString, ComparisonsKt.naturalOrder());
        } else {
            tlsVersionsIntersection = sslSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sslSocket.getSupportedCipherSuites();
        Intrinsics.checkNotNullExpressionValue(supportedCipherSuites, "supportedCipherSuites");
        int indexOf = Util.indexOf(supportedCipherSuites, "TLS_FALLBACK_SCSV", CipherSuite.INSTANCE.getORDER_BY_NAME$okhttp());
        if (isFallback && indexOf != -1) {
            Intrinsics.checkNotNullExpressionValue(cipherSuitesIntersection, "cipherSuitesIntersection");
            String str = supportedCipherSuites[indexOf];
            Intrinsics.checkNotNullExpressionValue(str, "supportedCipherSuites[indexOfFallbackScsv]");
            cipherSuitesIntersection = Util.concat(cipherSuitesIntersection, str);
        }
        Builder builder = new Builder(this);
        Intrinsics.checkNotNullExpressionValue(cipherSuitesIntersection, "cipherSuitesIntersection");
        Builder cipherSuites = builder.cipherSuites((String[]) Arrays.copyOf(cipherSuitesIntersection, cipherSuitesIntersection.length));
        Intrinsics.checkNotNullExpressionValue(tlsVersionsIntersection, "tlsVersionsIntersection");
        return cipherSuites.tlsVersions((String[]) Arrays.copyOf(tlsVersionsIntersection, tlsVersionsIntersection.length)).build();
    }

    public final boolean isCompatible(SSLSocket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        if (!this.isTls) {
            return false;
        }
        String[] strArr = this.tlsVersionsAsString;
        if (strArr != null && !Util.hasIntersection(strArr, socket.getEnabledProtocols(), ComparisonsKt.naturalOrder())) {
            return false;
        }
        String[] strArr2 = this.cipherSuitesAsString;
        return strArr2 == null || Util.hasIntersection(strArr2, socket.getEnabledCipherSuites(), CipherSuite.INSTANCE.getORDER_BY_NAME$okhttp());
    }

    public boolean equals(Object other) {
        if (!(other instanceof ConnectionSpec)) {
            return false;
        }
        if (other == this) {
            return true;
        }
        boolean z = this.isTls;
        ConnectionSpec connectionSpec = (ConnectionSpec) other;
        if (z != connectionSpec.isTls) {
            return false;
        }
        return !z || (Arrays.equals(this.cipherSuitesAsString, connectionSpec.cipherSuitesAsString) && Arrays.equals(this.tlsVersionsAsString, connectionSpec.tlsVersionsAsString) && this.supportsTlsExtensions == connectionSpec.supportsTlsExtensions);
    }

    public int hashCode() {
        if (!this.isTls) {
            return 17;
        }
        String[] strArr = this.cipherSuitesAsString;
        int hashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.tlsVersionsAsString;
        return ((hashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.supportsTlsExtensions ? 1 : 0);
    }

    public String toString() {
        return !this.isTls ? "ConnectionSpec()" : "ConnectionSpec(cipherSuites=" + Objects.toString(cipherSuites(), "[all enabled]") + ", tlsVersions=" + Objects.toString(tlsVersions(), "[all enabled]") + ", supportsTlsExtensions=" + this.supportsTlsExtensions + ')';
    }

    /* compiled from: ConnectionSpec.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0019\u001a\u00020\u0000J\u0006\u0010\u001a\u001a\u00020\u0000J\u0006\u0010\u001b\u001a\u00020\u0006J\u001f\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0002\u0010\u001cJ\u001f\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001d0\t\"\u00020\u001d¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0003H\u0007J\u001f\u0010\u0016\u001a\u00020\u00002\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0002\u0010\u001cJ\u001f\u0010\u0016\u001a\u00020\u00002\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\t\"\u00020\u001f¢\u0006\u0002\u0010 R$\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0012\"\u0004\b\u0015\u0010\u0004R$\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000e¨\u0006!"}, d2 = {"Lokhttp3/ConnectionSpec$Builder;", "", "tls", "", "(Z)V", "connectionSpec", "Lokhttp3/ConnectionSpec;", "(Lokhttp3/ConnectionSpec;)V", "cipherSuites", "", "", "getCipherSuites$okhttp", "()[Ljava/lang/String;", "setCipherSuites$okhttp", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "supportsTlsExtensions", "getSupportsTlsExtensions$okhttp", "()Z", "setSupportsTlsExtensions$okhttp", "getTls$okhttp", "setTls$okhttp", "tlsVersions", "getTlsVersions$okhttp", "setTlsVersions$okhttp", "allEnabledCipherSuites", "allEnabledTlsVersions", OperatingSystem.JsonKeys.BUILD, "([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;", "Lokhttp3/CipherSuite;", "([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;", "Lokhttp3/TlsVersion;", "([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {
        private String[] cipherSuites;
        private boolean supportsTlsExtensions;
        private boolean tls;
        private String[] tlsVersions;

        /* renamed from: getCipherSuites$okhttp, reason: from getter */
        public final String[] getCipherSuites() {
            return this.cipherSuites;
        }

        /* renamed from: getSupportsTlsExtensions$okhttp, reason: from getter */
        public final boolean getSupportsTlsExtensions() {
            return this.supportsTlsExtensions;
        }

        /* renamed from: getTls$okhttp, reason: from getter */
        public final boolean getTls() {
            return this.tls;
        }

        /* renamed from: getTlsVersions$okhttp, reason: from getter */
        public final String[] getTlsVersions() {
            return this.tlsVersions;
        }

        public final void setCipherSuites$okhttp(String[] strArr) {
            this.cipherSuites = strArr;
        }

        public final void setSupportsTlsExtensions$okhttp(boolean z) {
            this.supportsTlsExtensions = z;
        }

        public final void setTls$okhttp(boolean z) {
            this.tls = z;
        }

        public final void setTlsVersions$okhttp(String[] strArr) {
            this.tlsVersions = strArr;
        }

        public Builder(boolean z) {
            this.tls = z;
        }

        public Builder(ConnectionSpec connectionSpec) {
            Intrinsics.checkNotNullParameter(connectionSpec, "connectionSpec");
            this.tls = connectionSpec.getIsTls();
            this.cipherSuites = connectionSpec.cipherSuitesAsString;
            this.tlsVersions = connectionSpec.tlsVersionsAsString;
            this.supportsTlsExtensions = connectionSpec.supportsTlsExtensions();
        }

        public final Builder allEnabledCipherSuites() {
            if (!this.tls) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
            }
            this.cipherSuites = null;
            return this;
        }

        public final Builder cipherSuites(CipherSuite... cipherSuites) {
            Intrinsics.checkNotNullParameter(cipherSuites, "cipherSuites");
            if (!this.tls) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
            }
            ArrayList arrayList = new ArrayList(cipherSuites.length);
            for (CipherSuite cipherSuite : cipherSuites) {
                arrayList.add(cipherSuite.javaName());
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                String[] strArr = (String[]) array;
                return cipherSuites((String[]) Arrays.copyOf(strArr, strArr.length));
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }

        public final Builder cipherSuites(String... cipherSuites) {
            Intrinsics.checkNotNullParameter(cipherSuites, "cipherSuites");
            if (!this.tls) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
            }
            if (!(!(cipherSuites.length == 0))) {
                throw new IllegalArgumentException("At least one cipher suite is required".toString());
            }
            Object clone = cipherSuites.clone();
            if (clone == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            }
            this.cipherSuites = (String[]) clone;
            return this;
        }

        public final Builder allEnabledTlsVersions() {
            if (!this.tls) {
                throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
            }
            this.tlsVersions = null;
            return this;
        }

        public final Builder tlsVersions(TlsVersion... tlsVersions) {
            Intrinsics.checkNotNullParameter(tlsVersions, "tlsVersions");
            if (!this.tls) {
                throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
            }
            ArrayList arrayList = new ArrayList(tlsVersions.length);
            for (TlsVersion tlsVersion : tlsVersions) {
                arrayList.add(tlsVersion.javaName());
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                String[] strArr = (String[]) array;
                return tlsVersions((String[]) Arrays.copyOf(strArr, strArr.length));
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }

        public final Builder tlsVersions(String... tlsVersions) {
            Intrinsics.checkNotNullParameter(tlsVersions, "tlsVersions");
            if (!this.tls) {
                throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
            }
            if (!(!(tlsVersions.length == 0))) {
                throw new IllegalArgumentException("At least one TLS version is required".toString());
            }
            Object clone = tlsVersions.clone();
            if (clone == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            }
            this.tlsVersions = (String[]) clone;
            return this;
        }

        @Deprecated(message = "since OkHttp 3.13 all TLS-connections are expected to support TLS extensions.\nIn a future release setting this to true will be unnecessary and setting it to false\nwill have no effect.")
        public final Builder supportsTlsExtensions(boolean supportsTlsExtensions) {
            if (!this.tls) {
                throw new IllegalArgumentException("no TLS extensions for cleartext connections".toString());
            }
            this.supportsTlsExtensions = supportsTlsExtensions;
            return this;
        }

        public final ConnectionSpec build() {
            return new ConnectionSpec(this.tls, this.supportsTlsExtensions, this.cipherSuites, this.tlsVersions);
        }
    }

    static {
        CipherSuite[] cipherSuiteArr = {CipherSuite.TLS_AES_128_GCM_SHA256, CipherSuite.TLS_AES_256_GCM_SHA384, CipherSuite.TLS_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256};
        RESTRICTED_CIPHER_SUITES = cipherSuiteArr;
        CipherSuite[] cipherSuiteArr2 = {CipherSuite.TLS_AES_128_GCM_SHA256, CipherSuite.TLS_AES_256_GCM_SHA384, CipherSuite.TLS_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        APPROVED_CIPHER_SUITES = cipherSuiteArr2;
        RESTRICTED_TLS = new Builder(true).cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, cipherSuiteArr.length)).tlsVersions(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2).supportsTlsExtensions(true).build();
        MODERN_TLS = new Builder(true).cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).tlsVersions(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2).supportsTlsExtensions(true).build();
        COMPATIBLE_TLS = new Builder(true).cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).tlsVersions(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0).supportsTlsExtensions(true).build();
        CLEARTEXT = new Builder(false).build();
    }

    public final List<CipherSuite> cipherSuites() {
        String[] strArr = this.cipherSuitesAsString;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(CipherSuite.INSTANCE.forJavaName(str));
        }
        return CollectionsKt.toList(arrayList);
    }

    public final List<TlsVersion> tlsVersions() {
        String[] strArr = this.tlsVersionsAsString;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(TlsVersion.INSTANCE.forJavaName(str));
        }
        return CollectionsKt.toList(arrayList);
    }
}
