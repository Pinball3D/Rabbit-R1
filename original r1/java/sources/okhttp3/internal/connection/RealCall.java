package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.ProfilingTraceData;
import io.sentry.SentryBaseEvent;
import io.sentry.okhttp.SentryOkHttpEventListener;
import io.sentry.protocol.Request;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.CertificatePinner;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;

/* compiled from: RealCall.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000§\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001.\u0018\u00002\u00020\u0001:\u0002deB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u00101\u001a\u0002022\u0006\u0010\u0010\u001a\u00020\u000fJ!\u00103\u001a\u0002H4\"\n\b\u0000\u00104*\u0004\u0018\u0001052\u0006\u00106\u001a\u0002H4H\u0002¢\u0006\u0002\u00107J\b\u00108\u001a\u000202H\u0002J\b\u00109\u001a\u000202H\u0016J\b\u0010:\u001a\u00020\u0000H\u0016J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u0002022\u0006\u0010@\u001a\u00020AH\u0016J\u0016\u0010B\u001a\u0002022\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u0007J\b\u0010E\u001a\u00020FH\u0016J\u0015\u0010G\u001a\u0002022\u0006\u0010H\u001a\u00020\u0007H\u0000¢\u0006\u0002\bIJ\r\u0010J\u001a\u00020FH\u0000¢\u0006\u0002\bKJ\u0015\u0010L\u001a\u00020\u001e2\u0006\u0010M\u001a\u00020NH\u0000¢\u0006\u0002\bOJ\b\u0010P\u001a\u00020\u0007H\u0016J\b\u0010Q\u001a\u00020\u0007H\u0016J;\u0010R\u001a\u0002H4\"\n\b\u0000\u00104*\u0004\u0018\u0001052\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010S\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u00072\u0006\u00106\u001a\u0002H4H\u0000¢\u0006\u0004\bU\u0010VJ\u0019\u0010W\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u000105H\u0000¢\u0006\u0002\bXJ\r\u0010Y\u001a\u00020ZH\u0000¢\u0006\u0002\b[J\u000f\u0010\\\u001a\u0004\u0018\u00010]H\u0000¢\u0006\u0002\b^J\b\u0010C\u001a\u00020\u0005H\u0016J\u0006\u0010_\u001a\u00020\u0007J\b\u0010-\u001a\u00020`H\u0016J\u0006\u00100\u001a\u000202J!\u0010a\u001a\u0002H4\"\n\b\u0000\u00104*\u0004\u0018\u0001052\u0006\u0010b\u001a\u0002H4H\u0002¢\u0006\u0002\u00107J\b\u0010c\u001a\u00020ZH\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\"\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\"\u0010&\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000e\u001a\u0004\u0018\u00010\u001e@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0004\n\u0002\u0010/R\u000e\u00100\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006f"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", "client", "Lokhttp3/OkHttpClient;", "originalRequest", "Lokhttp3/Request;", "forWebSocket", "", "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V", "callStackTrace", "", "canceled", "getClient", "()Lokhttp3/OkHttpClient;", "<set-?>", "Lokhttp3/internal/connection/RealConnection;", SentryOkHttpEventListener.CONNECTION_EVENT, "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionToCancel", "getConnectionToCancel", "setConnectionToCancel", "(Lokhttp3/internal/connection/RealConnection;)V", "eventListener", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "exchange", "Lokhttp3/internal/connection/Exchange;", "exchangeFinder", "Lokhttp3/internal/connection/ExchangeFinder;", "executed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "expectMoreExchanges", "getForWebSocket", "()Z", "interceptorScopedExchange", "getInterceptorScopedExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "getOriginalRequest", "()Lokhttp3/Request;", "requestBodyOpen", "responseBodyOpen", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "okhttp3/internal/connection/RealCall$timeout$1", "Lokhttp3/internal/connection/RealCall$timeout$1;", "timeoutEarlyExit", "acquireConnectionNoEvents", "", "callDone", ExifInterface.LONGITUDE_EAST, "Ljava/io/IOException;", "e", "(Ljava/io/IOException;)Ljava/io/IOException;", "callStart", "cancel", "clone", "createAddress", "Lokhttp3/Address;", Request.JsonKeys.URL, "Lokhttp3/HttpUrl;", "enqueue", "responseCallback", "Lokhttp3/Callback;", "enterNetworkInterceptorExchange", SentryBaseEvent.JsonKeys.REQUEST, "newExchangeFinder", "execute", "Lokhttp3/Response;", "exitNetworkInterceptorExchange", "closeExchange", "exitNetworkInterceptorExchange$okhttp", "getResponseWithInterceptorChain", "getResponseWithInterceptorChain$okhttp", "initExchange", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "initExchange$okhttp", "isCanceled", "isExecuted", "messageDone", "requestDone", "responseDone", "messageDone$okhttp", "(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;", "noMoreExchanges", "noMoreExchanges$okhttp", "redactedUrl", "", "redactedUrl$okhttp", "releaseConnectionNoEvents", "Ljava/net/Socket;", "releaseConnectionNoEvents$okhttp", "retryAfterFailure", "Lokio/AsyncTimeout;", "timeoutExit", "cause", "toLoggableString", "AsyncCall", "CallReference", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class RealCall implements Call {
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private RealConnection connection;
    private final RealConnectionPool connectionPool;
    private volatile RealConnection connectionToCancel;
    private final EventListener eventListener;
    private volatile Exchange exchange;
    private ExchangeFinder exchangeFinder;
    private final AtomicBoolean executed;
    private boolean expectMoreExchanges;
    private final boolean forWebSocket;
    private Exchange interceptorScopedExchange;
    private final okhttp3.Request originalRequest;
    private boolean requestBodyOpen;
    private boolean responseBodyOpen;
    private final RealCall$timeout$1 timeout;
    private boolean timeoutEarlyExit;

    public final OkHttpClient getClient() {
        return this.client;
    }

    public final RealConnection getConnection() {
        return this.connection;
    }

    public final RealConnection getConnectionToCancel() {
        return this.connectionToCancel;
    }

    /* renamed from: getEventListener$okhttp, reason: from getter */
    public final EventListener getEventListener() {
        return this.eventListener;
    }

    public final boolean getForWebSocket() {
        return this.forWebSocket;
    }

    /* renamed from: getInterceptorScopedExchange$okhttp, reason: from getter */
    public final Exchange getInterceptorScopedExchange() {
        return this.interceptorScopedExchange;
    }

    public final okhttp3.Request getOriginalRequest() {
        return this.originalRequest;
    }

    @Override // okhttp3.Call
    /* renamed from: isCanceled, reason: from getter */
    public boolean getCanceled() {
        return this.canceled;
    }

    @Override // okhttp3.Call
    public okhttp3.Request request() {
        return this.originalRequest;
    }

    public final void setConnectionToCancel(RealConnection realConnection) {
        this.connectionToCancel = realConnection;
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [okhttp3.internal.connection.RealCall$timeout$1] */
    public RealCall(OkHttpClient client, okhttp3.Request originalRequest, boolean z) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.client = client;
        this.originalRequest = originalRequest;
        this.forWebSocket = z;
        this.connectionPool = client.connectionPool().getDelegate();
        this.eventListener = client.eventListenerFactory().create(this);
        ?? r4 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            protected void timedOut() {
                RealCall.this.cancel();
            }
        };
        r4.timeout(client.callTimeoutMillis(), TimeUnit.MILLISECONDS);
        Unit unit = Unit.INSTANCE;
        this.timeout = r4;
        this.executed = new AtomicBoolean();
        this.expectMoreExchanges = true;
    }

    @Override // okhttp3.Call
    public AsyncTimeout timeout() {
        return this.timeout;
    }

    @Override // okhttp3.Call
    public RealCall clone() {
        return new RealCall(this.client, this.originalRequest, this.forWebSocket);
    }

    @Override // okhttp3.Call
    public void cancel() {
        if (this.canceled) {
            return;
        }
        this.canceled = true;
        Exchange exchange = this.exchange;
        if (exchange != null) {
            exchange.cancel();
        }
        RealConnection realConnection = this.connectionToCancel;
        if (realConnection != null) {
            realConnection.cancel();
        }
        this.eventListener.canceled(this);
    }

    @Override // okhttp3.Call
    public Response execute() {
        if (!this.executed.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed".toString());
        }
        enter();
        callStart();
        try {
            this.client.dispatcher().executed$okhttp(this);
            return getResponseWithInterceptorChain$okhttp();
        } finally {
            this.client.dispatcher().finished$okhttp(this);
        }
    }

    @Override // okhttp3.Call
    public void enqueue(Callback responseCallback) {
        Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
        if (!this.executed.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed".toString());
        }
        callStart();
        this.client.dispatcher().enqueue$okhttp(new AsyncCall(this, responseCallback));
    }

    @Override // okhttp3.Call
    public boolean isExecuted() {
        return this.executed.get();
    }

    private final void callStart() {
        this.callStackTrace = Platform.INSTANCE.get().getStackTraceForCloseable("response.body().close()");
        this.eventListener.callStart(this);
    }

    public final Response getResponseWithInterceptorChain$okhttp() throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        CollectionsKt.addAll(arrayList2, this.client.interceptors());
        arrayList2.add(new RetryAndFollowUpInterceptor(this.client));
        arrayList2.add(new BridgeInterceptor(this.client.cookieJar()));
        arrayList2.add(new CacheInterceptor(this.client.cache()));
        arrayList2.add(ConnectInterceptor.INSTANCE);
        if (!this.forWebSocket) {
            CollectionsKt.addAll(arrayList2, this.client.networkInterceptors());
        }
        arrayList2.add(new CallServerInterceptor(this.forWebSocket));
        try {
            try {
                Response proceed = new RealInterceptorChain(this, arrayList, 0, null, this.originalRequest, this.client.connectTimeoutMillis(), this.client.readTimeoutMillis(), this.client.writeTimeoutMillis()).proceed(this.originalRequest);
                if (getCanceled()) {
                    Util.closeQuietly(proceed);
                    throw new IOException("Canceled");
                }
                noMoreExchanges$okhttp(null);
                return proceed;
            } catch (IOException e) {
                IOException noMoreExchanges$okhttp = noMoreExchanges$okhttp(e);
                if (noMoreExchanges$okhttp == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                }
                throw noMoreExchanges$okhttp;
            }
        } catch (Throwable th) {
            if (0 == 0) {
                noMoreExchanges$okhttp(null);
            }
            throw th;
        }
    }

    public final void enterNetworkInterceptorExchange(okhttp3.Request request, boolean newExchangeFinder) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (!(this.interceptorScopedExchange == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        synchronized (this) {
            if (!(!this.responseBodyOpen)) {
                throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()".toString());
            }
            if (!(!this.requestBodyOpen)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            Unit unit = Unit.INSTANCE;
        }
        if (newExchangeFinder) {
            this.exchangeFinder = new ExchangeFinder(this.connectionPool, createAddress(request.url()), this, this.eventListener);
        }
    }

    public final Exchange initExchange$okhttp(RealInterceptorChain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        synchronized (this) {
            if (!this.expectMoreExchanges) {
                throw new IllegalStateException("released".toString());
            }
            if (!(!this.responseBodyOpen)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (!(!this.requestBodyOpen)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            Unit unit = Unit.INSTANCE;
        }
        ExchangeFinder exchangeFinder = this.exchangeFinder;
        Intrinsics.checkNotNull(exchangeFinder);
        Exchange exchange = new Exchange(this, this.eventListener, exchangeFinder, exchangeFinder.find(this.client, chain));
        this.interceptorScopedExchange = exchange;
        this.exchange = exchange;
        synchronized (this) {
            this.requestBodyOpen = true;
            this.responseBodyOpen = true;
            Unit unit2 = Unit.INSTANCE;
        }
        if (this.canceled) {
            throw new IOException("Canceled");
        }
        return exchange;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:45:0x0014, B:12:0x0023, B:14:0x0027, B:15:0x0029, B:17:0x002d, B:21:0x0036, B:23:0x003a, B:27:0x0043, B:9:0x001d), top: B:44:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0027 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:45:0x0014, B:12:0x0023, B:14:0x0027, B:15:0x0029, B:17:0x002d, B:21:0x0036, B:23:0x003a, B:27:0x0043, B:9:0x001d), top: B:44:0x0014 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <E extends java.io.IOException> E messageDone$okhttp(okhttp3.internal.connection.Exchange r3, boolean r4, boolean r5, E r6) {
        /*
            r2 = this;
            java.lang.String r0 = "exchange"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            okhttp3.internal.connection.Exchange r0 = r2.exchange
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0)
            r0 = 1
            r3 = r3 ^ r0
            if (r3 == 0) goto L10
            return r6
        L10:
            monitor-enter(r2)
            r3 = 0
            if (r4 == 0) goto L1b
            boolean r1 = r2.requestBodyOpen     // Catch: java.lang.Throwable -> L19
            if (r1 != 0) goto L21
            goto L1b
        L19:
            r3 = move-exception
            goto L5d
        L1b:
            if (r5 == 0) goto L42
            boolean r1 = r2.responseBodyOpen     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L42
        L21:
            if (r4 == 0) goto L25
            r2.requestBodyOpen = r3     // Catch: java.lang.Throwable -> L19
        L25:
            if (r5 == 0) goto L29
            r2.responseBodyOpen = r3     // Catch: java.lang.Throwable -> L19
        L29:
            boolean r4 = r2.requestBodyOpen     // Catch: java.lang.Throwable -> L19
            if (r4 != 0) goto L33
            boolean r5 = r2.responseBodyOpen     // Catch: java.lang.Throwable -> L19
            if (r5 != 0) goto L33
            r5 = r0
            goto L34
        L33:
            r5 = r3
        L34:
            if (r4 != 0) goto L3f
            boolean r4 = r2.responseBodyOpen     // Catch: java.lang.Throwable -> L19
            if (r4 != 0) goto L3f
            boolean r4 = r2.expectMoreExchanges     // Catch: java.lang.Throwable -> L19
            if (r4 != 0) goto L3f
            goto L40
        L3f:
            r0 = r3
        L40:
            r3 = r5
            goto L43
        L42:
            r0 = r3
        L43:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L19
            monitor-exit(r2)
            if (r3 == 0) goto L55
            r3 = 0
            r4 = r3
            okhttp3.internal.connection.Exchange r4 = (okhttp3.internal.connection.Exchange) r4
            r2.exchange = r3
            okhttp3.internal.connection.RealConnection r3 = r2.connection
            if (r3 == 0) goto L55
            r3.incrementSuccessCount$okhttp()
        L55:
            if (r0 == 0) goto L5c
            java.io.IOException r2 = r2.callDone(r6)
            return r2
        L5c:
            return r6
        L5d:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.messageDone$okhttp(okhttp3.internal.connection.Exchange, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    public final IOException noMoreExchanges$okhttp(IOException e) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.expectMoreExchanges) {
                this.expectMoreExchanges = false;
                if (!this.requestBodyOpen && !this.responseBodyOpen) {
                    z = true;
                }
            }
            Unit unit = Unit.INSTANCE;
        }
        return z ? callDone(e) : e;
    }

    public final Socket releaseConnectionNoEvents$okhttp() {
        RealConnection realConnection = this.connection;
        Intrinsics.checkNotNull(realConnection);
        if (!Util.assertionsEnabled || Thread.holdsLock(realConnection)) {
            List<Reference<RealCall>> calls = realConnection.getCalls();
            Iterator<Reference<RealCall>> it = calls.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (Intrinsics.areEqual(it.next().get(), this)) {
                    break;
                }
                i++;
            }
            if (!(i != -1)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            calls.remove(i);
            this.connection = null;
            if (calls.isEmpty()) {
                realConnection.setIdleAtNs$okhttp(System.nanoTime());
                if (this.connectionPool.connectionBecameIdle(realConnection)) {
                    return realConnection.socket();
                }
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(realConnection).toString());
    }

    private final <E extends IOException> E timeoutExit(E cause) {
        if (this.timeoutEarlyExit || !exit()) {
            return cause;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException(ProfilingTraceData.TRUNCATION_REASON_TIMEOUT);
        if (cause != null) {
            interruptedIOException.initCause(cause);
        }
        return interruptedIOException;
    }

    public final void timeoutEarlyExit() {
        if (!(!this.timeoutEarlyExit)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.timeoutEarlyExit = true;
        exit();
    }

    public final void exitNetworkInterceptorExchange$okhttp(boolean closeExchange) {
        Exchange exchange;
        synchronized (this) {
            if (!this.expectMoreExchanges) {
                throw new IllegalStateException("released".toString());
            }
            Unit unit = Unit.INSTANCE;
        }
        if (closeExchange && (exchange = this.exchange) != null) {
            exchange.detachWithViolence();
        }
        this.interceptorScopedExchange = null;
    }

    private final Address createAddress(HttpUrl url) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        if (url.getIsHttps()) {
            sSLSocketFactory = this.client.sslSocketFactory();
            hostnameVerifier = this.client.hostnameVerifier();
            certificatePinner = this.client.certificatePinner();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(url.host(), url.port(), this.client.dns(), this.client.socketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, this.client.proxyAuthenticator(), this.client.proxy(), this.client.protocols(), this.client.connectionSpecs(), this.client.proxySelector());
    }

    public final boolean retryAfterFailure() {
        ExchangeFinder exchangeFinder = this.exchangeFinder;
        Intrinsics.checkNotNull(exchangeFinder);
        return exchangeFinder.retryAfterFailure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String toLoggableString() {
        return (getCanceled() ? "canceled " : "") + (this.forWebSocket ? "web socket" : NotificationCompat.CATEGORY_CALL) + " to " + redactedUrl$okhttp();
    }

    public final String redactedUrl$okhttp() {
        return this.originalRequest.url().redact();
    }

    /* compiled from: RealCall.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0012\u0010\u001a\u001a\u00020\u00172\n\u0010\u001b\u001a\u00060\u0000R\u00020\u0006J\b\u0010\u001c\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "responseCallback", "Lokhttp3/Callback;", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V", NotificationCompat.CATEGORY_CALL, "Lokhttp3/internal/connection/RealCall;", "getCall", "()Lokhttp3/internal/connection/RealCall;", "<set-?>", "Ljava/util/concurrent/atomic/AtomicInteger;", "callsPerHost", "getCallsPerHost", "()Ljava/util/concurrent/atomic/AtomicInteger;", "host", "", "getHost", "()Ljava/lang/String;", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", "getRequest", "()Lokhttp3/Request;", "executeOn", "", "executorService", "Ljava/util/concurrent/ExecutorService;", "reuseCallsPerHostFrom", "other", "run", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public final class AsyncCall implements Runnable {
        private volatile AtomicInteger callsPerHost;
        private final Callback responseCallback;
        final /* synthetic */ RealCall this$0;

        /* renamed from: getCall, reason: from getter */
        public final RealCall getThis$0() {
            return this.this$0;
        }

        public final AtomicInteger getCallsPerHost() {
            return this.callsPerHost;
        }

        public AsyncCall(RealCall realCall, Callback responseCallback) {
            Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
            this.this$0 = realCall;
            this.responseCallback = responseCallback;
            this.callsPerHost = new AtomicInteger(0);
        }

        public final void reuseCallsPerHostFrom(AsyncCall other) {
            Intrinsics.checkNotNullParameter(other, "other");
            this.callsPerHost = other.callsPerHost;
        }

        public final String getHost() {
            return this.this$0.getOriginalRequest().url().host();
        }

        public final okhttp3.Request getRequest() {
            return this.this$0.getOriginalRequest();
        }

        public final void executeOn(ExecutorService executorService) {
            Intrinsics.checkNotNullParameter(executorService, "executorService");
            Dispatcher dispatcher = this.this$0.getClient().dispatcher();
            if (!Util.assertionsEnabled || !Thread.holdsLock(dispatcher)) {
                try {
                    try {
                        executorService.execute(this);
                        return;
                    } catch (RejectedExecutionException e) {
                        InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                        interruptedIOException.initCause(e);
                        this.this$0.noMoreExchanges$okhttp(interruptedIOException);
                        this.responseCallback.onFailure(this.this$0, interruptedIOException);
                        this.this$0.getClient().dispatcher().finished$okhttp(this);
                        return;
                    }
                } catch (Throwable th) {
                    this.this$0.getClient().dispatcher().finished$okhttp(this);
                    throw th;
                }
            }
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
            throw new AssertionError(sb.append(currentThread.getName()).append(" MUST NOT hold lock on ").append(dispatcher).toString());
        }

        @Override // java.lang.Runnable
        public void run() {
            Dispatcher dispatcher;
            String str = "OkHttp " + this.this$0.redactedUrl$okhttp();
            Thread currentThread = Thread.currentThread();
            Intrinsics.checkNotNullExpressionValue(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(str);
            try {
                enter();
                boolean z = false;
                try {
                    try {
                        try {
                            this.responseCallback.onResponse(this.this$0, this.this$0.getResponseWithInterceptorChain$okhttp());
                            dispatcher = this.this$0.getClient().dispatcher();
                        } catch (IOException e) {
                            e = e;
                            z = true;
                            if (z) {
                                Platform.INSTANCE.get().log("Callback failure for " + this.this$0.toLoggableString(), 4, e);
                            } else {
                                this.responseCallback.onFailure(this.this$0, e);
                            }
                            dispatcher = this.this$0.getClient().dispatcher();
                            dispatcher.finished$okhttp(this);
                        } catch (Throwable th) {
                            th = th;
                            z = true;
                            this.this$0.cancel();
                            if (!z) {
                                IOException iOException = new IOException("canceled due to " + th);
                                ExceptionsKt.addSuppressed(iOException, th);
                                this.responseCallback.onFailure(this.this$0, iOException);
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        this.this$0.getClient().dispatcher().finished$okhttp(this);
                        throw th2;
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (Throwable th3) {
                    th = th3;
                }
                dispatcher.finished$okhttp(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: RealCall.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "referent", "callStackTrace", "", "(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V", "getCallStackTrace", "()Ljava/lang/Object;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class CallReference extends WeakReference<RealCall> {
        private final Object callStackTrace;

        public final Object getCallStackTrace() {
            return this.callStackTrace;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallReference(RealCall referent, Object obj) {
            super(referent);
            Intrinsics.checkNotNullParameter(referent, "referent");
            this.callStackTrace = obj;
        }
    }

    public final void acquireConnectionNoEvents(RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (Util.assertionsEnabled && !Thread.holdsLock(connection)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
            throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(connection).toString());
        }
        if (!(this.connection == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.connection = connection;
        connection.getCalls().add(new CallReference(this, this.callStackTrace));
    }

    private final <E extends IOException> E callDone(E e) {
        Socket releaseConnectionNoEvents$okhttp;
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            RealConnection realConnection = this.connection;
            if (realConnection != null) {
                if (!Util.assertionsEnabled || !Thread.holdsLock(realConnection)) {
                    synchronized (realConnection) {
                        releaseConnectionNoEvents$okhttp = releaseConnectionNoEvents$okhttp();
                    }
                    if (this.connection == null) {
                        if (releaseConnectionNoEvents$okhttp != null) {
                            Util.closeQuietly(releaseConnectionNoEvents$okhttp);
                        }
                        this.eventListener.connectionReleased(this, realConnection);
                    } else {
                        if (!(releaseConnectionNoEvents$okhttp == null)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                    }
                } else {
                    StringBuilder sb = new StringBuilder("Thread ");
                    Thread currentThread = Thread.currentThread();
                    Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
                    throw new AssertionError(sb.append(currentThread.getName()).append(" MUST NOT hold lock on ").append(realConnection).toString());
                }
            }
            E e2 = (E) timeoutExit(e);
            if (e != null) {
                Intrinsics.checkNotNull(e2);
                this.eventListener.callFailed(this, e2);
            } else {
                this.eventListener.callEnd(this);
            }
            return e2;
        }
        StringBuilder sb2 = new StringBuilder("Thread ");
        Thread currentThread2 = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread2, "Thread.currentThread()");
        throw new AssertionError(sb2.append(currentThread2.getName()).append(" MUST NOT hold lock on ").append(this).toString());
    }
}
