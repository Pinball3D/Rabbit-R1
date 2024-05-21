package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okio.BufferedSink;
import okio.Okio;

/* compiled from: CallServerInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "forWebSocket", "", "(Z)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response.Builder builder;
        boolean z;
        Response build;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange = realInterceptorChain.getExchange();
        Intrinsics.checkNotNull(exchange);
        Request request = realInterceptorChain.getRequest();
        RequestBody body = request.body();
        long currentTimeMillis = System.currentTimeMillis();
        exchange.writeRequestHeaders(request);
        if (HttpMethod.permitsRequestBody(request.method()) && body != null) {
            if (StringsKt.equals("100-continue", request.header(com.google.common.net.HttpHeaders.EXPECT), true)) {
                exchange.flushRequest();
                builder = exchange.readResponseHeaders(true);
                exchange.responseHeadersStart();
                z = false;
            } else {
                builder = null;
                z = true;
            }
            if (builder == null) {
                if (body.isDuplex()) {
                    exchange.flushRequest();
                    body.writeTo(Okio.buffer(exchange.createRequestBody(request, true)));
                } else {
                    BufferedSink buffer = Okio.buffer(exchange.createRequestBody(request, false));
                    body.writeTo(buffer);
                    buffer.close();
                }
            } else {
                exchange.noRequestBody();
                if (!exchange.getConnection().isMultiplexed$okhttp()) {
                    exchange.noNewExchangesOnConnection();
                }
            }
        } else {
            exchange.noRequestBody();
            builder = null;
            z = true;
        }
        if (body == null || !body.isDuplex()) {
            exchange.finishRequest();
        }
        if (builder == null) {
            builder = exchange.readResponseHeaders(false);
            Intrinsics.checkNotNull(builder);
            if (z) {
                exchange.responseHeadersStart();
                z = false;
            }
        }
        Response build2 = builder.request(request).handshake(exchange.getConnection().getHandshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int code = build2.code();
        if (code == 100) {
            Response.Builder readResponseHeaders = exchange.readResponseHeaders(false);
            Intrinsics.checkNotNull(readResponseHeaders);
            if (z) {
                exchange.responseHeadersStart();
            }
            build2 = readResponseHeaders.request(request).handshake(exchange.getConnection().getHandshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            code = build2.code();
        }
        exchange.responseHeadersEnd(build2);
        if (this.forWebSocket && code == 101) {
            build = build2.newBuilder().body(Util.EMPTY_RESPONSE).build();
        } else {
            build = build2.newBuilder().body(exchange.openResponseBody(build2)).build();
        }
        if (StringsKt.equals("close", build.request().header(com.google.common.net.HttpHeaders.CONNECTION), true) || StringsKt.equals("close", Response.header$default(build, com.google.common.net.HttpHeaders.CONNECTION, null, 2, null), true)) {
            exchange.noNewExchangesOnConnection();
        }
        if (code == 204 || code == 205) {
            ResponseBody body2 = build.body();
            if ((body2 != null ? body2.getContentLength() : -1L) > 0) {
                StringBuilder append = new StringBuilder("HTTP ").append(code).append(" had non-zero Content-Length: ");
                ResponseBody body3 = build.body();
                throw new ProtocolException(append.append(body3 != null ? Long.valueOf(body3.getContentLength()) : null).toString());
            }
        }
        return build;
    }
}
