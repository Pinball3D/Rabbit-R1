package okhttp3.internal.http;

import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.GzipSource;
import okio.Okio;

/* compiled from: BridgeInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "cookieJar", "Lokhttp3/CookieJar;", "(Lokhttp3/CookieJar;)V", "cookieHeader", "", "cookies", "", "Lokhttp3/Cookie;", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(CookieJar cookieJar) {
        Intrinsics.checkNotNullParameter(cookieJar, "cookieJar");
        this.cookieJar = cookieJar;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        ResponseBody body;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        RequestBody body2 = request.body();
        if (body2 != null) {
            MediaType contentType = body2.getContentType();
            if (contentType != null) {
                newBuilder.header(com.google.common.net.HttpHeaders.CONTENT_TYPE, contentType.getMediaType());
            }
            long contentLength = body2.contentLength();
            if (contentLength != -1) {
                newBuilder.header(com.google.common.net.HttpHeaders.CONTENT_LENGTH, String.valueOf(contentLength));
                newBuilder.removeHeader(com.google.common.net.HttpHeaders.TRANSFER_ENCODING);
            } else {
                newBuilder.header(com.google.common.net.HttpHeaders.TRANSFER_ENCODING, "chunked");
                newBuilder.removeHeader(com.google.common.net.HttpHeaders.CONTENT_LENGTH);
            }
        }
        boolean z = false;
        if (request.header(com.google.common.net.HttpHeaders.HOST) == null) {
            newBuilder.header(com.google.common.net.HttpHeaders.HOST, Util.toHostHeader$default(request.url(), false, 1, null));
        }
        if (request.header(com.google.common.net.HttpHeaders.CONNECTION) == null) {
            newBuilder.header(com.google.common.net.HttpHeaders.CONNECTION, com.google.common.net.HttpHeaders.KEEP_ALIVE);
        }
        if (request.header(com.google.common.net.HttpHeaders.ACCEPT_ENCODING) == null && request.header(com.google.common.net.HttpHeaders.RANGE) == null) {
            newBuilder.header(com.google.common.net.HttpHeaders.ACCEPT_ENCODING, "gzip");
            z = true;
        }
        List<Cookie> loadForRequest = this.cookieJar.loadForRequest(request.url());
        if (!loadForRequest.isEmpty()) {
            newBuilder.header("Cookie", cookieHeader(loadForRequest));
        }
        if (request.header(com.google.common.net.HttpHeaders.USER_AGENT) == null) {
            newBuilder.header(com.google.common.net.HttpHeaders.USER_AGENT, Util.userAgent);
        }
        Response proceed = chain.proceed(newBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, request.url(), proceed.headers());
        Response.Builder request2 = proceed.newBuilder().request(request);
        if (z && StringsKt.equals("gzip", Response.header$default(proceed, com.google.common.net.HttpHeaders.CONTENT_ENCODING, null, 2, null), true) && HttpHeaders.promisesBody(proceed) && (body = proceed.body()) != null) {
            GzipSource gzipSource = new GzipSource(body.getSource());
            request2.headers(proceed.headers().newBuilder().removeAll(com.google.common.net.HttpHeaders.CONTENT_ENCODING).removeAll(com.google.common.net.HttpHeaders.CONTENT_LENGTH).build());
            request2.body(new RealResponseBody(Response.header$default(proceed, com.google.common.net.HttpHeaders.CONTENT_TYPE, null, 2, null), -1L, Okio.buffer(gzipSource)));
        }
        return request2.build();
    }

    private final String cookieHeader(List<Cookie> cookies) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Object obj : cookies) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Cookie cookie = (Cookie) obj;
            if (i > 0) {
                sb.append("; ");
            }
            sb.append(cookie.name()).append('=').append(cookie.value());
            i = i2;
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
