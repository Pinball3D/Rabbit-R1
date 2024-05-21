package okhttp3.internal.http;

import androidx.core.app.NotificationCompat;
import io.sentry.protocol.Request;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;

/* compiled from: RetryAndFollowUpInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "client", "Lokhttp3/OkHttpClient;", "(Lokhttp3/OkHttpClient;)V", "buildRedirectRequest", "Lokhttp3/Request;", "userResponse", "Lokhttp3/Response;", Request.JsonKeys.METHOD, "", "followUpRequest", "exchange", "Lokhttp3/internal/connection/Exchange;", "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "isRecoverable", "", "e", "Ljava/io/IOException;", "requestSendStarted", "recover", NotificationCompat.CATEGORY_CALL, "Lokhttp3/internal/connection/RealCall;", "userRequest", "requestIsOneShot", "retryAfter", "", "defaultDelay", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private final OkHttpClient client;

    public RetryAndFollowUpInterceptor(OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.client = client;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
    
        if (r7 == null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        r0 = r0.newBuilder().priorResponse(r7.newBuilder().body(null).build()).build();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
    
        r7 = r0;
        r0 = r1.getInterceptorScopedExchange();
        r6 = followUpRequest(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        if (r6 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005d, code lost:
    
        r0 = r6.body();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0061, code lost:
    
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0067, code lost:
    
        if (r0.isOneShot() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        r1.exitNetworkInterceptorExchange$okhttp(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        r0 = r7.body();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0071, code lost:
    
        if (r0 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
    
        okhttp3.internal.Util.closeQuietly(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
    
        if (r8 > 20) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009d, code lost:
    
        throw new java.net.ProtocolException("Too many follow-up requests: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
    
        if (r0 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0054, code lost:
    
        if (r0.getIsDuplex() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0056, code lost:
    
        r1.timeoutEarlyExit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0059, code lost:
    
        r1.exitNetworkInterceptorExchange$okhttp(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005c, code lost:
    
        return r7;
     */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(okhttp3.Interceptor.Chain r11) throws java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "chain"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            okhttp3.internal.http.RealInterceptorChain r11 = (okhttp3.internal.http.RealInterceptorChain) r11
            okhttp3.Request r0 = r11.getRequest()
            okhttp3.internal.connection.RealCall r1 = r11.getCall()
            r2 = 0
            r3 = r2
            okhttp3.Response r3 = (okhttp3.Response) r3
            java.util.List r3 = kotlin.collections.CollectionsKt.emptyList()
            r4 = 0
            r5 = 1
            r7 = r2
            r8 = r4
        L1b:
            r6 = r5
        L1c:
            r1.enterNetworkInterceptorExchange(r0, r6)
            boolean r6 = r1.getCanceled()     // Catch: java.lang.Throwable -> Le6
            if (r6 != 0) goto Ldc
            okhttp3.Response r0 = r11.proceed(r0)     // Catch: java.io.IOException -> L9e okhttp3.internal.connection.RouteException -> Lb6 java.lang.Throwable -> Le6
            if (r7 == 0) goto L43
            okhttp3.Response$Builder r0 = r0.newBuilder()     // Catch: java.lang.Throwable -> Le6
            okhttp3.Response$Builder r6 = r7.newBuilder()     // Catch: java.lang.Throwable -> Le6
            okhttp3.Response$Builder r6 = r6.body(r2)     // Catch: java.lang.Throwable -> Le6
            okhttp3.Response r6 = r6.build()     // Catch: java.lang.Throwable -> Le6
            okhttp3.Response$Builder r0 = r0.priorResponse(r6)     // Catch: java.lang.Throwable -> Le6
            okhttp3.Response r0 = r0.build()     // Catch: java.lang.Throwable -> Le6
        L43:
            r7 = r0
            okhttp3.internal.connection.Exchange r0 = r1.getInterceptorScopedExchange()     // Catch: java.lang.Throwable -> Le6
            okhttp3.Request r6 = r10.followUpRequest(r7, r0)     // Catch: java.lang.Throwable -> Le6
            if (r6 != 0) goto L5d
            if (r0 == 0) goto L59
            boolean r10 = r0.getIsDuplex()     // Catch: java.lang.Throwable -> Le6
            if (r10 == 0) goto L59
            r1.timeoutEarlyExit()     // Catch: java.lang.Throwable -> Le6
        L59:
            r1.exitNetworkInterceptorExchange$okhttp(r4)
            return r7
        L5d:
            okhttp3.RequestBody r0 = r6.body()     // Catch: java.lang.Throwable -> Le6
            if (r0 == 0) goto L6d
            boolean r0 = r0.isOneShot()     // Catch: java.lang.Throwable -> Le6
            if (r0 == 0) goto L6d
            r1.exitNetworkInterceptorExchange$okhttp(r4)
            return r7
        L6d:
            okhttp3.ResponseBody r0 = r7.body()     // Catch: java.lang.Throwable -> Le6
            if (r0 == 0) goto L78
            java.io.Closeable r0 = (java.io.Closeable) r0     // Catch: java.lang.Throwable -> Le6
            okhttp3.internal.Util.closeQuietly(r0)     // Catch: java.lang.Throwable -> Le6
        L78:
            int r8 = r8 + 1
            r0 = 20
            if (r8 > r0) goto L83
            r1.exitNetworkInterceptorExchange$okhttp(r5)
            r0 = r6
            goto L1b
        L83:
            java.net.ProtocolException r10 = new java.net.ProtocolException     // Catch: java.lang.Throwable -> Le6
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le6
            r11.<init>()     // Catch: java.lang.Throwable -> Le6
            java.lang.String r0 = "Too many follow-up requests: "
            java.lang.StringBuilder r11 = r11.append(r0)     // Catch: java.lang.Throwable -> Le6
            java.lang.StringBuilder r11 = r11.append(r8)     // Catch: java.lang.Throwable -> Le6
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> Le6
            r10.<init>(r11)     // Catch: java.lang.Throwable -> Le6
            java.lang.Throwable r10 = (java.lang.Throwable) r10     // Catch: java.lang.Throwable -> Le6
            throw r10     // Catch: java.lang.Throwable -> Le6
        L9e:
            r6 = move-exception
            boolean r9 = r6 instanceof okhttp3.internal.http2.ConnectionShutdownException     // Catch: java.lang.Throwable -> Le6
            r9 = r9 ^ r5
            boolean r9 = r10.recover(r6, r1, r0, r9)     // Catch: java.lang.Throwable -> Le6
            if (r9 == 0) goto Laf
            java.util.Collection r3 = (java.util.Collection) r3     // Catch: java.lang.Throwable -> Le6
            java.util.List r3 = kotlin.collections.CollectionsKt.plus(r3, r6)     // Catch: java.lang.Throwable -> Le6
            goto Lcb
        Laf:
            java.lang.Exception r6 = (java.lang.Exception) r6     // Catch: java.lang.Throwable -> Le6
            java.lang.Throwable r10 = okhttp3.internal.Util.withSuppressed(r6, r3)     // Catch: java.lang.Throwable -> Le6
            throw r10     // Catch: java.lang.Throwable -> Le6
        Lb6:
            r6 = move-exception
            java.io.IOException r9 = r6.getLastConnectException()     // Catch: java.lang.Throwable -> Le6
            boolean r9 = r10.recover(r9, r1, r0, r4)     // Catch: java.lang.Throwable -> Le6
            if (r9 == 0) goto Ld1
            java.util.Collection r3 = (java.util.Collection) r3     // Catch: java.lang.Throwable -> Le6
            java.io.IOException r6 = r6.getFirstConnectException()     // Catch: java.lang.Throwable -> Le6
            java.util.List r3 = kotlin.collections.CollectionsKt.plus(r3, r6)     // Catch: java.lang.Throwable -> Le6
        Lcb:
            r1.exitNetworkInterceptorExchange$okhttp(r5)
            r6 = r4
            goto L1c
        Ld1:
            java.io.IOException r10 = r6.getFirstConnectException()     // Catch: java.lang.Throwable -> Le6
            java.lang.Exception r10 = (java.lang.Exception) r10     // Catch: java.lang.Throwable -> Le6
            java.lang.Throwable r10 = okhttp3.internal.Util.withSuppressed(r10, r3)     // Catch: java.lang.Throwable -> Le6
            throw r10     // Catch: java.lang.Throwable -> Le6
        Ldc:
            java.io.IOException r10 = new java.io.IOException     // Catch: java.lang.Throwable -> Le6
            java.lang.String r11 = "Canceled"
            r10.<init>(r11)     // Catch: java.lang.Throwable -> Le6
            java.lang.Throwable r10 = (java.lang.Throwable) r10     // Catch: java.lang.Throwable -> Le6
            throw r10     // Catch: java.lang.Throwable -> Le6
        Le6:
            r10 = move-exception
            r1.exitNetworkInterceptorExchange$okhttp(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.RetryAndFollowUpInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    private final boolean recover(IOException e, RealCall call, okhttp3.Request userRequest, boolean requestSendStarted) {
        if (this.client.retryOnConnectionFailure()) {
            return !(requestSendStarted && requestIsOneShot(e, userRequest)) && isRecoverable(e, requestSendStarted) && call.retryAfterFailure();
        }
        return false;
    }

    private final boolean requestIsOneShot(IOException e, okhttp3.Request userRequest) {
        RequestBody body = userRequest.body();
        return (body != null && body.isOneShot()) || (e instanceof FileNotFoundException);
    }

    private final boolean isRecoverable(IOException e, boolean requestSendStarted) {
        if (e instanceof ProtocolException) {
            return false;
        }
        return e instanceof InterruptedIOException ? (e instanceof SocketTimeoutException) && !requestSendStarted : (((e instanceof SSLHandshakeException) && (e.getCause() instanceof CertificateException)) || (e instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final okhttp3.Request followUpRequest(Response userResponse, Exchange exchange) throws IOException {
        RealConnection connection;
        Route route = (exchange == null || (connection = exchange.getConnection()) == null) ? null : connection.getRoute();
        int code = userResponse.code();
        String method = userResponse.request().method();
        if (code != 307 && code != 308) {
            if (code == 401) {
                return this.client.authenticator().authenticate(route, userResponse);
            }
            if (code == 421) {
                RequestBody body = userResponse.request().body();
                if ((body != null && body.isOneShot()) || exchange == null || !exchange.isCoalescedConnection$okhttp()) {
                    return null;
                }
                exchange.getConnection().noCoalescedConnections$okhttp();
                return userResponse.request();
            }
            if (code == 503) {
                Response priorResponse = userResponse.priorResponse();
                if ((priorResponse == null || priorResponse.code() != 503) && retryAfter(userResponse, Integer.MAX_VALUE) == 0) {
                    return userResponse.request();
                }
                return null;
            }
            if (code == 407) {
                Intrinsics.checkNotNull(route);
                if (route.proxy().type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.client.proxyAuthenticator().authenticate(route, userResponse);
            }
            if (code == 408) {
                if (!this.client.retryOnConnectionFailure()) {
                    return null;
                }
                RequestBody body2 = userResponse.request().body();
                if (body2 != null && body2.isOneShot()) {
                    return null;
                }
                Response priorResponse2 = userResponse.priorResponse();
                if ((priorResponse2 == null || priorResponse2.code() != 408) && retryAfter(userResponse, 0) <= 0) {
                    return userResponse.request();
                }
                return null;
            }
            switch (code) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        return buildRedirectRequest(userResponse, method);
    }

    private final okhttp3.Request buildRedirectRequest(Response userResponse, String method) {
        String header$default;
        HttpUrl resolve;
        if (!this.client.followRedirects() || (header$default = Response.header$default(userResponse, com.google.common.net.HttpHeaders.LOCATION, null, 2, null)) == null || (resolve = userResponse.request().url().resolve(header$default)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(resolve.scheme(), userResponse.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder newBuilder = userResponse.request().newBuilder();
        if (HttpMethod.permitsRequestBody(method)) {
            int code = userResponse.code();
            boolean z = HttpMethod.INSTANCE.redirectsWithBody(method) || code == 308 || code == 307;
            if (HttpMethod.INSTANCE.redirectsToGet(method) && code != 308 && code != 307) {
                newBuilder.method("GET", null);
            } else {
                newBuilder.method(method, z ? userResponse.request().body() : null);
            }
            if (!z) {
                newBuilder.removeHeader(com.google.common.net.HttpHeaders.TRANSFER_ENCODING);
                newBuilder.removeHeader(com.google.common.net.HttpHeaders.CONTENT_LENGTH);
                newBuilder.removeHeader(com.google.common.net.HttpHeaders.CONTENT_TYPE);
            }
        }
        if (!Util.canReuseConnectionFor(userResponse.request().url(), resolve)) {
            newBuilder.removeHeader(com.google.common.net.HttpHeaders.AUTHORIZATION);
        }
        return newBuilder.url(resolve).build();
    }

    private final int retryAfter(Response userResponse, int defaultDelay) {
        String header$default = Response.header$default(userResponse, com.google.common.net.HttpHeaders.RETRY_AFTER, null, 2, null);
        if (header$default == null) {
            return defaultDelay;
        }
        if (!new Regex("\\d+").matches(header$default)) {
            return Integer.MAX_VALUE;
        }
        Integer valueOf = Integer.valueOf(header$default);
        Intrinsics.checkNotNullExpressionValue(valueOf, "Integer.valueOf(header)");
        return valueOf.intValue();
    }
}
