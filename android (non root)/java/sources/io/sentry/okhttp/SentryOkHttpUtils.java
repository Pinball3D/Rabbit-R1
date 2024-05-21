package io.sentry.okhttp;

import com.google.common.net.HttpHeaders;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryEvent;
import io.sentry.TypeCheckHint;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.exception.SentryHttpClientException;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.Response;
import io.sentry.util.HttpUtils;
import io.sentry.util.UrlUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* compiled from: SentryOkHttpUtils.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u000bJ&\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J'\u0010\u0011\u001a\u00020\u0004*\u0004\u0018\u00010\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00040\u0014H\u0002¢\u0006\u0002\u0010\u0015¨\u0006\u0016"}, d2 = {"Lio/sentry/okhttp/SentryOkHttpUtils;", "", "()V", "captureClientError", "", "hub", "Lio/sentry/IHub;", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", Response.TYPE, "Lokhttp3/Response;", "captureClientError$sentry_okhttp", "getHeaders", "", "", "requestHeaders", "Lokhttp3/Headers;", "ifHasValidLength", "", "fn", "Lkotlin/Function1;", "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V", "sentry-okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryOkHttpUtils {
    public static final SentryOkHttpUtils INSTANCE = new SentryOkHttpUtils();

    private SentryOkHttpUtils() {
    }

    public final void captureClientError$sentry_okhttp(IHub hub, Request request, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(response, "response");
        UrlUtils.UrlDetails parse = UrlUtils.parse(request.url().getUrl());
        Intrinsics.checkNotNullExpressionValue(parse, "parse(request.url.toString())");
        Mechanism mechanism = new Mechanism();
        mechanism.setType("SentryOkHttpInterceptor");
        SentryEvent sentryEvent = new SentryEvent(new ExceptionMechanismException(mechanism, new SentryHttpClientException("HTTP Client Error with status code: " + response.code()), Thread.currentThread(), true));
        Hint hint = new Hint();
        hint.set(TypeCheckHint.OKHTTP_REQUEST, request);
        hint.set(TypeCheckHint.OKHTTP_RESPONSE, response);
        final io.sentry.protocol.Request request2 = new io.sentry.protocol.Request();
        parse.applyToRequest(request2);
        request2.setCookies(hub.getOptions().isSendDefaultPii() ? request.headers().get("Cookie") : null);
        request2.setMethod(request.method());
        SentryOkHttpUtils sentryOkHttpUtils = INSTANCE;
        request2.setHeaders(sentryOkHttpUtils.getHeaders(hub, request.headers()));
        RequestBody body = request.body();
        sentryOkHttpUtils.ifHasValidLength(body != null ? Long.valueOf(body.contentLength()) : null, new Function1<Long, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpUtils$captureClientError$sentryRequest$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                io.sentry.protocol.Request.this.setBodySize(Long.valueOf(j));
            }
        });
        final Response response2 = new Response();
        response2.setCookies(hub.getOptions().isSendDefaultPii() ? response.headers().get(HttpHeaders.SET_COOKIE) : null);
        response2.setHeaders(sentryOkHttpUtils.getHeaders(hub, response.headers()));
        response2.setStatusCode(Integer.valueOf(response.code()));
        ResponseBody body2 = response.body();
        sentryOkHttpUtils.ifHasValidLength(body2 != null ? Long.valueOf(body2.getContentLength()) : null, new Function1<Long, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpUtils$captureClientError$sentryResponse$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                Response.this.setBodySize(Long.valueOf(j));
            }
        });
        sentryEvent.setRequest(request2);
        sentryEvent.getContexts().setResponse(response2);
        hub.captureEvent(sentryEvent, hint);
    }

    private final void ifHasValidLength(Long l, Function1<? super Long, Unit> function1) {
        if (l == null || l.longValue() == -1) {
            return;
        }
        function1.invoke(l);
    }

    private final Map<String, String> getHeaders(IHub hub, Headers requestHeaders) {
        if (!hub.getOptions().isSendDefaultPii()) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = requestHeaders.size();
        for (int i = 0; i < size; i++) {
            String name = requestHeaders.name(i);
            if (!HttpUtils.containsSensitiveHeader(name)) {
                linkedHashMap.put(name, requestHeaders.value(i));
            }
        }
        return linkedHashMap;
    }
}
