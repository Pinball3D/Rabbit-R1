package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import com.google.common.net.HttpHeaders;
import io.sentry.SentryLockReason;
import io.sentry.okhttp.SentryOkHttpEventListener;
import io.sentry.protocol.Request;
import io.sentry.protocol.TransactionInfo;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* compiled from: RealConnection.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 {2\u00020\u00012\u00020\u0002:\u0001{B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u00105\u001a\u000206J\u0018\u00107\u001a\u00020\u001d2\u0006\u00108\u001a\u0002092\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J>\u0010:\u001a\u0002062\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CJ%\u0010D\u001a\u0002062\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00062\u0006\u0010H\u001a\u00020IH\u0000¢\u0006\u0002\bJJ(\u0010K\u001a\u0002062\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J\u0010\u0010L\u001a\u0002062\u0006\u0010M\u001a\u00020NH\u0002J0\u0010O\u001a\u0002062\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J*\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010R\u001a\u00020Q2\u0006\u00108\u001a\u000209H\u0002J\b\u0010S\u001a\u00020QH\u0002J(\u0010T\u001a\u0002062\u0006\u0010M\u001a\u00020N2\u0006\u0010>\u001a\u00020\t2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\r\u0010U\u001a\u000206H\u0000¢\u0006\u0002\bVJ%\u0010W\u001a\u00020\u001d2\u0006\u0010X\u001a\u00020Y2\u000e\u0010Z\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010[H\u0000¢\u0006\u0002\b\\J\u000e\u0010]\u001a\u00020\u001d2\u0006\u0010^\u001a\u00020\u001dJ\u001d\u0010_\u001a\u00020`2\u0006\u0010E\u001a\u00020F2\u0006\u0010a\u001a\u00020bH\u0000¢\u0006\u0002\bcJ\u0015\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020gH\u0000¢\u0006\u0002\bhJ\r\u0010 \u001a\u000206H\u0000¢\u0006\u0002\biJ\r\u0010!\u001a\u000206H\u0000¢\u0006\u0002\bjJ\u0018\u0010k\u001a\u0002062\u0006\u0010l\u001a\u00020\u00152\u0006\u0010m\u001a\u00020nH\u0016J\u0010\u0010o\u001a\u0002062\u0006\u0010p\u001a\u00020qH\u0016J\b\u0010%\u001a\u00020&H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010r\u001a\u00020\u001d2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00060[H\u0002J\b\u00101\u001a\u00020(H\u0016J\u0010\u0010t\u001a\u0002062\u0006\u0010>\u001a\u00020\tH\u0002J\u0010\u0010u\u001a\u00020\u001d2\u0006\u00108\u001a\u000209H\u0002J\b\u0010v\u001a\u00020wH\u0016J\u001f\u0010x\u001a\u0002062\u0006\u0010@\u001a\u00020\r2\b\u0010y\u001a\u0004\u0018\u00010IH\u0000¢\u0006\u0002\bzR\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001d8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010*\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006|"}, d2 = {"Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/Connection;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "route", "Lokhttp3/Route;", "(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V", "allocationLimit", "", "calls", "", "Ljava/lang/ref/Reference;", "Lokhttp3/internal/connection/RealCall;", "getCalls", "()Ljava/util/List;", "getConnectionPool", "()Lokhttp3/internal/connection/RealConnectionPool;", "handshake", "Lokhttp3/Handshake;", "http2Connection", "Lokhttp3/internal/http2/Http2Connection;", "idleAtNs", "", "getIdleAtNs$okhttp", "()J", "setIdleAtNs$okhttp", "(J)V", "isMultiplexed", "", "isMultiplexed$okhttp", "()Z", "noCoalescedConnections", "noNewExchanges", "getNoNewExchanges", "setNoNewExchanges", "(Z)V", "protocol", "Lokhttp3/Protocol;", "rawSocket", "Ljava/net/Socket;", "refusedStreamCount", "routeFailureCount", "getRouteFailureCount$okhttp", "()I", "setRouteFailureCount$okhttp", "(I)V", "sink", "Lokio/BufferedSink;", "socket", TransactionInfo.JsonKeys.SOURCE, "Lokio/BufferedSource;", "successCount", "cancel", "", "certificateSupportHost", Request.JsonKeys.URL, "Lokhttp3/HttpUrl;", SentryOkHttpEventListener.CONNECT_EVENT, "connectTimeout", "readTimeout", "writeTimeout", "pingIntervalMillis", "connectionRetryEnabled", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "eventListener", "Lokhttp3/EventListener;", "connectFailed", "client", "Lokhttp3/OkHttpClient;", "failedRoute", "failure", "Ljava/io/IOException;", "connectFailed$okhttp", "connectSocket", "connectTls", "connectionSpecSelector", "Lokhttp3/internal/connection/ConnectionSpecSelector;", "connectTunnel", "createTunnel", "Lokhttp3/Request;", "tunnelRequest", "createTunnelRequest", "establishProtocol", "incrementSuccessCount", "incrementSuccessCount$okhttp", "isEligible", SentryLockReason.JsonKeys.ADDRESS, "Lokhttp3/Address;", "routes", "", "isEligible$okhttp", "isHealthy", "doExtensiveChecks", "newCodec", "Lokhttp3/internal/http/ExchangeCodec;", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "newCodec$okhttp", "newWebSocketStreams", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "exchange", "Lokhttp3/internal/connection/Exchange;", "newWebSocketStreams$okhttp", "noCoalescedConnections$okhttp", "noNewExchanges$okhttp", "onSettings", SentryOkHttpEventListener.CONNECTION_EVENT, "settings", "Lokhttp3/internal/http2/Settings;", "onStream", "stream", "Lokhttp3/internal/http2/Http2Stream;", "routeMatchesAny", "candidates", "startHttp2", "supportsUrl", "toString", "", "trackFailure", "e", "trackFailure$okhttp", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long IDLE_CONNECTION_HEALTHY_NS = 10000000000L;
    private static final int MAX_TUNNEL_ATTEMPTS = 21;
    private static final String NPE_THROW_WITH_NULL = "throw with null exception";
    private int allocationLimit;
    private final List<Reference<RealCall>> calls;
    private final RealConnectionPool connectionPool;
    private Handshake handshake;
    private Http2Connection http2Connection;
    private long idleAtNs;
    private boolean noCoalescedConnections;
    private boolean noNewExchanges;
    private Protocol protocol;
    private Socket rawSocket;
    private int refusedStreamCount;
    private final Route route;
    private int routeFailureCount;
    private BufferedSink sink;
    private Socket socket;
    private BufferedSource source;
    private int successCount;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            iArr[Proxy.Type.HTTP.ordinal()] = 2;
        }
    }

    public final List<Reference<RealCall>> getCalls() {
        return this.calls;
    }

    public final RealConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    /* renamed from: getIdleAtNs$okhttp, reason: from getter */
    public final long getIdleAtNs() {
        return this.idleAtNs;
    }

    public final boolean getNoNewExchanges() {
        return this.noNewExchanges;
    }

    /* renamed from: getRouteFailureCount$okhttp, reason: from getter */
    public final int getRouteFailureCount() {
        return this.routeFailureCount;
    }

    @Override // okhttp3.Connection
    /* renamed from: handshake, reason: from getter */
    public Handshake getHandshake() {
        return this.handshake;
    }

    public final boolean isMultiplexed$okhttp() {
        return this.http2Connection != null;
    }

    @Override // okhttp3.Connection
    /* renamed from: route, reason: from getter */
    public Route getRoute() {
        return this.route;
    }

    public final void setIdleAtNs$okhttp(long j) {
        this.idleAtNs = j;
    }

    public final void setNoNewExchanges(boolean z) {
        this.noNewExchanges = z;
    }

    public final void setRouteFailureCount$okhttp(int i) {
        this.routeFailureCount = i;
    }

    public RealConnection(RealConnectionPool connectionPool, Route route) {
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(route, "route");
        this.connectionPool = connectionPool;
        this.route = route;
        this.allocationLimit = 1;
        this.calls = new ArrayList();
        this.idleAtNs = Long.MAX_VALUE;
    }

    public final synchronized void noNewExchanges$okhttp() {
        this.noNewExchanges = true;
    }

    public final synchronized void noCoalescedConnections$okhttp() {
        this.noCoalescedConnections = true;
    }

    public final synchronized void incrementSuccessCount$okhttp() {
        this.successCount++;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016c A[EDGE_INSN: B:51:0x016c->B:48:0x016c BREAK  A[LOOP:0: B:15:0x00a4->B:50:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void connect(int r17, int r18, int r19, int r20, boolean r21, okhttp3.Call r22, okhttp3.EventListener r23) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.connect(int, int, int, int, boolean, okhttp3.Call, okhttp3.EventListener):void");
    }

    private final void connectTunnel(int connectTimeout, int readTimeout, int writeTimeout, Call call, EventListener eventListener) throws IOException {
        okhttp3.Request createTunnelRequest = createTunnelRequest();
        HttpUrl url = createTunnelRequest.url();
        for (int i = 0; i < 21; i++) {
            connectSocket(connectTimeout, readTimeout, call, eventListener);
            createTunnelRequest = createTunnel(readTimeout, writeTimeout, createTunnelRequest, url);
            if (createTunnelRequest == null) {
                return;
            }
            Socket socket = this.rawSocket;
            if (socket != null) {
                Util.closeQuietly(socket);
            }
            this.rawSocket = null;
            this.sink = null;
            this.source = null;
            eventListener.connectEnd(call, this.route.socketAddress(), this.route.proxy(), null);
        }
    }

    private final void connectSocket(int connectTimeout, int readTimeout, Call call, EventListener eventListener) throws IOException {
        Socket socket;
        int i;
        Proxy proxy = this.route.proxy();
        Address address = this.route.address();
        Proxy.Type type = proxy.type();
        if (type != null && ((i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) == 1 || i == 2)) {
            socket = address.socketFactory().createSocket();
            Intrinsics.checkNotNull(socket);
        } else {
            socket = new Socket(proxy);
        }
        this.rawSocket = socket;
        eventListener.connectStart(call, this.route.socketAddress(), proxy);
        socket.setSoTimeout(readTimeout);
        try {
            Platform.INSTANCE.get().connectSocket(socket, this.route.socketAddress(), connectTimeout);
            try {
                this.source = Okio.buffer(Okio.source(socket));
                this.sink = Okio.buffer(Okio.sink(socket));
            } catch (NullPointerException e) {
                if (Intrinsics.areEqual(e.getMessage(), NPE_THROW_WITH_NULL)) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.route.socketAddress());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private final void establishProtocol(ConnectionSpecSelector connectionSpecSelector, int pingIntervalMillis, Call call, EventListener eventListener) throws IOException {
        if (this.route.address().sslSocketFactory() == null) {
            if (this.route.address().protocols().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
                this.socket = this.rawSocket;
                this.protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                startHttp2(pingIntervalMillis);
                return;
            } else {
                this.socket = this.rawSocket;
                this.protocol = Protocol.HTTP_1_1;
                return;
            }
        }
        eventListener.secureConnectStart(call);
        connectTls(connectionSpecSelector);
        eventListener.secureConnectEnd(call, this.handshake);
        if (this.protocol == Protocol.HTTP_2) {
            startHttp2(pingIntervalMillis);
        }
    }

    private final void startHttp2(int pingIntervalMillis) throws IOException {
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        BufferedSource bufferedSource = this.source;
        Intrinsics.checkNotNull(bufferedSource);
        BufferedSink bufferedSink = this.sink;
        Intrinsics.checkNotNull(bufferedSink);
        socket.setSoTimeout(0);
        Http2Connection build = new Http2Connection.Builder(true, TaskRunner.INSTANCE).socket(socket, this.route.address().url().host(), bufferedSource, bufferedSink).listener(this).pingIntervalMillis(pingIntervalMillis).build();
        this.http2Connection = build;
        this.allocationLimit = Http2Connection.INSTANCE.getDEFAULT_SETTINGS().getMaxConcurrentStreams();
        Http2Connection.start$default(build, false, null, 3, null);
    }

    private final void connectTls(ConnectionSpecSelector connectionSpecSelector) throws IOException {
        final Address address = this.route.address();
        SSLSocketFactory sslSocketFactory = address.sslSocketFactory();
        SSLSocket sSLSocket = null;
        try {
            Intrinsics.checkNotNull(sslSocketFactory);
            Socket createSocket = sslSocketFactory.createSocket(this.rawSocket, address.url().host(), address.url().port(), true);
            if (createSocket == null) {
                throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            }
            SSLSocket sSLSocket2 = (SSLSocket) createSocket;
            try {
                ConnectionSpec configureSecureSocket = connectionSpecSelector.configureSecureSocket(sSLSocket2);
                if (configureSecureSocket.supportsTlsExtensions()) {
                    Platform.INSTANCE.get().configureTlsExtensions(sSLSocket2, address.url().host(), address.protocols());
                }
                sSLSocket2.startHandshake();
                SSLSession sslSocketSession = sSLSocket2.getSession();
                Handshake.Companion companion = Handshake.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(sslSocketSession, "sslSocketSession");
                final Handshake handshake = companion.get(sslSocketSession);
                HostnameVerifier hostnameVerifier = address.hostnameVerifier();
                Intrinsics.checkNotNull(hostnameVerifier);
                if (!hostnameVerifier.verify(address.url().host(), sslSocketSession)) {
                    List<Certificate> peerCertificates = handshake.peerCertificates();
                    if (!peerCertificates.isEmpty()) {
                        Certificate certificate = peerCertificates.get(0);
                        if (certificate == null) {
                            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                        }
                        X509Certificate x509Certificate = (X509Certificate) certificate;
                        StringBuilder append = new StringBuilder("\n              |Hostname ").append(address.url().host()).append(" not verified:\n              |    certificate: ").append(CertificatePinner.INSTANCE.pin(x509Certificate)).append("\n              |    DN: ");
                        Principal subjectDN = x509Certificate.getSubjectDN();
                        Intrinsics.checkNotNullExpressionValue(subjectDN, "cert.subjectDN");
                        throw new SSLPeerUnverifiedException(StringsKt.trimMargin$default(append.append(subjectDN.getName()).append("\n              |    subjectAltNames: ").append(OkHostnameVerifier.INSTANCE.allSubjectAltNames(x509Certificate)).append("\n              ").toString(), null, 1, null));
                    }
                    throw new SSLPeerUnverifiedException("Hostname " + address.url().host() + " not verified (no certificates)");
                }
                final CertificatePinner certificatePinner = address.certificatePinner();
                Intrinsics.checkNotNull(certificatePinner);
                this.handshake = new Handshake(handshake.tlsVersion(), handshake.cipherSuite(), handshake.localCertificates(), new Function0<List<? extends Certificate>>() { // from class: okhttp3.internal.connection.RealConnection$connectTls$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final List<? extends Certificate> invoke() {
                        CertificateChainCleaner certificateChainCleaner = CertificatePinner.this.getCertificateChainCleaner();
                        Intrinsics.checkNotNull(certificateChainCleaner);
                        return certificateChainCleaner.clean(handshake.peerCertificates(), address.url().host());
                    }
                });
                certificatePinner.check$okhttp(address.url().host(), new Function0<List<? extends X509Certificate>>() { // from class: okhttp3.internal.connection.RealConnection$connectTls$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final List<? extends X509Certificate> invoke() {
                        Handshake handshake2;
                        handshake2 = RealConnection.this.handshake;
                        Intrinsics.checkNotNull(handshake2);
                        List<Certificate> peerCertificates2 = handshake2.peerCertificates();
                        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(peerCertificates2, 10));
                        for (Certificate certificate2 : peerCertificates2) {
                            if (certificate2 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                            }
                            arrayList.add((X509Certificate) certificate2);
                        }
                        return arrayList;
                    }
                });
                String selectedProtocol = configureSecureSocket.supportsTlsExtensions() ? Platform.INSTANCE.get().getSelectedProtocol(sSLSocket2) : null;
                this.socket = sSLSocket2;
                this.source = Okio.buffer(Okio.source(sSLSocket2));
                this.sink = Okio.buffer(Okio.sink(sSLSocket2));
                this.protocol = selectedProtocol != null ? Protocol.INSTANCE.get(selectedProtocol) : Protocol.HTTP_1_1;
                if (sSLSocket2 != null) {
                    Platform.INSTANCE.get().afterHandshake(sSLSocket2);
                }
            } catch (Throwable th) {
                th = th;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    Platform.INSTANCE.get().afterHandshake(sSLSocket);
                }
                if (sSLSocket != null) {
                    Util.closeQuietly((Socket) sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final okhttp3.Request createTunnel(int readTimeout, int writeTimeout, okhttp3.Request tunnelRequest, HttpUrl url) throws IOException {
        String str = "CONNECT " + Util.toHostHeader(url, true) + " HTTP/1.1";
        while (true) {
            BufferedSource bufferedSource = this.source;
            Intrinsics.checkNotNull(bufferedSource);
            BufferedSink bufferedSink = this.sink;
            Intrinsics.checkNotNull(bufferedSink);
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSource, bufferedSink);
            bufferedSource.getTimeout().timeout(readTimeout, TimeUnit.MILLISECONDS);
            bufferedSink.getTimeout().timeout(writeTimeout, TimeUnit.MILLISECONDS);
            http1ExchangeCodec.writeRequest(tunnelRequest.headers(), str);
            http1ExchangeCodec.finishRequest();
            Response.Builder readResponseHeaders = http1ExchangeCodec.readResponseHeaders(false);
            Intrinsics.checkNotNull(readResponseHeaders);
            Response build = readResponseHeaders.request(tunnelRequest).build();
            http1ExchangeCodec.skipConnectBody(build);
            int code = build.code();
            if (code == 200) {
                if (bufferedSource.getBuffer().exhausted() && bufferedSink.getBuffer().exhausted()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (code == 407) {
                okhttp3.Request authenticate = this.route.address().proxyAuthenticator().authenticate(this.route, build);
                if (authenticate == null) {
                    throw new IOException("Failed to authenticate with proxy");
                }
                if (StringsKt.equals("close", Response.header$default(build, HttpHeaders.CONNECTION, null, 2, null), true)) {
                    return authenticate;
                }
                tunnelRequest = authenticate;
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + build.code());
            }
        }
    }

    private final okhttp3.Request createTunnelRequest() throws IOException {
        okhttp3.Request build = new Request.Builder().url(this.route.address().url()).method("CONNECT", null).header(HttpHeaders.HOST, Util.toHostHeader(this.route.address().url(), true)).header("Proxy-Connection", HttpHeaders.KEEP_ALIVE).header(HttpHeaders.USER_AGENT, Util.userAgent).build();
        okhttp3.Request authenticate = this.route.address().proxyAuthenticator().authenticate(this.route, new Response.Builder().request(build).protocol(Protocol.HTTP_1_1).code(407).message("Preemptive Authenticate").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1L).receivedResponseAtMillis(-1L).header(HttpHeaders.PROXY_AUTHENTICATE, "OkHttp-Preemptive").build());
        return authenticate != null ? authenticate : build;
    }

    private final boolean routeMatchesAny(List<Route> candidates) {
        List<Route> list = candidates;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (Route route : list) {
            if (route.proxy().type() == Proxy.Type.DIRECT && this.route.proxy().type() == Proxy.Type.DIRECT && Intrinsics.areEqual(this.route.socketAddress(), route.socketAddress())) {
                return true;
            }
        }
        return false;
    }

    private final boolean certificateSupportHost(HttpUrl url, Handshake handshake) {
        List<Certificate> peerCertificates = handshake.peerCertificates();
        if (!peerCertificates.isEmpty()) {
            OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
            String host = url.host();
            Certificate certificate = peerCertificates.get(0);
            if (certificate != null) {
                if (okHostnameVerifier.verify(host, (X509Certificate) certificate)) {
                    return true;
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
        }
        return false;
    }

    public final ExchangeCodec newCodec$okhttp(OkHttpClient client, RealInterceptorChain chain) throws SocketException {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        BufferedSource bufferedSource = this.source;
        Intrinsics.checkNotNull(bufferedSource);
        BufferedSink bufferedSink = this.sink;
        Intrinsics.checkNotNull(bufferedSink);
        Http2Connection http2Connection = this.http2Connection;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(client, this, chain, http2Connection);
        }
        socket.setSoTimeout(chain.readTimeoutMillis());
        bufferedSource.getTimeout().timeout(chain.getReadTimeoutMillis(), TimeUnit.MILLISECONDS);
        bufferedSink.getTimeout().timeout(chain.getWriteTimeoutMillis(), TimeUnit.MILLISECONDS);
        return new Http1ExchangeCodec(client, this, bufferedSource, bufferedSink);
    }

    public final RealWebSocket.Streams newWebSocketStreams$okhttp(final Exchange exchange) throws SocketException {
        Intrinsics.checkNotNullParameter(exchange, "exchange");
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        final BufferedSource bufferedSource = this.source;
        Intrinsics.checkNotNull(bufferedSource);
        final BufferedSink bufferedSink = this.sink;
        Intrinsics.checkNotNull(bufferedSink);
        socket.setSoTimeout(0);
        noNewExchanges$okhttp();
        final boolean z = true;
        return new RealWebSocket.Streams(z, bufferedSource, bufferedSink) { // from class: okhttp3.internal.connection.RealConnection$newWebSocketStreams$1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                Exchange.this.bodyComplete(-1L, true, true, null);
            }
        };
    }

    public final void cancel() {
        Socket socket = this.rawSocket;
        if (socket != null) {
            Util.closeQuietly(socket);
        }
    }

    @Override // okhttp3.Connection
    public Socket socket() {
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        return socket;
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onStream(Http2Stream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.close(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public synchronized void onSettings(Http2Connection connection, Settings settings) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.allocationLimit = settings.getMaxConcurrentStreams();
    }

    public final void connectFailed$okhttp(OkHttpClient client, Route failedRoute, IOException failure) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        Intrinsics.checkNotNullParameter(failure, "failure");
        if (failedRoute.proxy().type() != Proxy.Type.DIRECT) {
            Address address = failedRoute.address();
            address.proxySelector().connectFailed(address.url().uri(), failedRoute.proxy().address(), failure);
        }
        client.getRouteDatabase().failed(failedRoute);
    }

    public final synchronized void trackFailure$okhttp(RealCall call, IOException e) {
        Intrinsics.checkNotNullParameter(call, "call");
        if (e instanceof StreamResetException) {
            if (((StreamResetException) e).errorCode == ErrorCode.REFUSED_STREAM) {
                int i = this.refusedStreamCount + 1;
                this.refusedStreamCount = i;
                if (i > 1) {
                    this.noNewExchanges = true;
                    this.routeFailureCount++;
                }
            } else if (((StreamResetException) e).errorCode != ErrorCode.CANCEL || !call.getCanceled()) {
                this.noNewExchanges = true;
                this.routeFailureCount++;
            }
        } else if (!isMultiplexed$okhttp() || (e instanceof ConnectionShutdownException)) {
            this.noNewExchanges = true;
            if (this.successCount == 0) {
                if (e != null) {
                    connectFailed$okhttp(call.getClient(), this.route, e);
                }
                this.routeFailureCount++;
            }
        }
    }

    @Override // okhttp3.Connection
    public Protocol protocol() {
        Protocol protocol = this.protocol;
        Intrinsics.checkNotNull(protocol);
        return protocol;
    }

    public String toString() {
        Object obj;
        StringBuilder append = new StringBuilder("Connection{").append(this.route.address().url().host()).append(':').append(this.route.address().url().port()).append(", proxy=").append(this.route.proxy()).append(" hostAddress=").append(this.route.socketAddress()).append(" cipherSuite=");
        Handshake handshake = this.handshake;
        if (handshake == null || (obj = handshake.cipherSuite()) == null) {
            obj = "none";
        }
        return append.append(obj).append(" protocol=").append(this.protocol).append('}').toString();
    }

    /* compiled from: RealConnection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/connection/RealConnection$Companion;", "", "()V", "IDLE_CONNECTION_HEALTHY_NS", "", "MAX_TUNNEL_ATTEMPTS", "", "NPE_THROW_WITH_NULL", "", "newTestConnection", "Lokhttp3/internal/connection/RealConnection;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "route", "Lokhttp3/Route;", "socket", "Ljava/net/Socket;", "idleAtNs", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RealConnection newTestConnection(RealConnectionPool connectionPool, Route route, Socket socket, long idleAtNs) {
            Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
            Intrinsics.checkNotNullParameter(route, "route");
            Intrinsics.checkNotNullParameter(socket, "socket");
            RealConnection realConnection = new RealConnection(connectionPool, route);
            realConnection.socket = socket;
            realConnection.setIdleAtNs$okhttp(idleAtNs);
            return realConnection;
        }
    }

    public final boolean isEligible$okhttp(Address address, List<Route> routes) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            if (this.calls.size() >= this.allocationLimit || this.noNewExchanges || !this.route.address().equalsNonHost$okhttp(address)) {
                return false;
            }
            if (Intrinsics.areEqual(address.url().host(), getRoute().address().url().host())) {
                return true;
            }
            if (this.http2Connection == null || routes == null || !routeMatchesAny(routes) || address.hostnameVerifier() != OkHostnameVerifier.INSTANCE || !supportsUrl(address.url())) {
                return false;
            }
            try {
                CertificatePinner certificatePinner = address.certificatePinner();
                Intrinsics.checkNotNull(certificatePinner);
                String host = address.url().host();
                Handshake handshake = getHandshake();
                Intrinsics.checkNotNull(handshake);
                certificatePinner.check(host, handshake.peerCertificates());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(this).toString());
    }

    private final boolean supportsUrl(HttpUrl url) {
        Handshake handshake;
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            HttpUrl url2 = this.route.address().url();
            if (url.port() != url2.port()) {
                return false;
            }
            if (Intrinsics.areEqual(url.host(), url2.host())) {
                return true;
            }
            if (this.noCoalescedConnections || (handshake = this.handshake) == null) {
                return false;
            }
            Intrinsics.checkNotNull(handshake);
            return certificateSupportHost(url, handshake);
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(this).toString());
    }

    public final boolean isHealthy(boolean doExtensiveChecks) {
        long j;
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            long nanoTime = System.nanoTime();
            Socket socket = this.rawSocket;
            Intrinsics.checkNotNull(socket);
            Socket socket2 = this.socket;
            Intrinsics.checkNotNull(socket2);
            BufferedSource bufferedSource = this.source;
            Intrinsics.checkNotNull(bufferedSource);
            if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
                return false;
            }
            Http2Connection http2Connection = this.http2Connection;
            if (http2Connection != null) {
                return http2Connection.isHealthy(nanoTime);
            }
            synchronized (this) {
                j = nanoTime - this.idleAtNs;
            }
            if (j < IDLE_CONNECTION_HEALTHY_NS || !doExtensiveChecks) {
                return true;
            }
            return Util.isHealthy(socket2, bufferedSource);
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST NOT hold lock on ").append(this).toString());
    }
}
