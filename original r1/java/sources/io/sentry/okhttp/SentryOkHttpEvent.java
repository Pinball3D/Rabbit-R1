package io.sentry.okhttp;

import androidx.core.app.NotificationCompat;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.ITransaction;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryDate;
import io.sentry.SentryLevel;
import io.sentry.SpanContext;
import io.sentry.SpanDataConvention;
import io.sentry.TypeCheckHint;
import io.sentry.protocol.Request;
import io.sentry.protocol.Response;
import io.sentry.util.Platform;
import io.sentry.util.UrlUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;

/* compiled from: SentryOkHttpEvent.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J9\u0010\u0018\u001a\u00020\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2%\b\u0002\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001dJ7\u0010!\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u00112%\b\u0002\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001dJ\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\nH\u0002J\u000e\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001bJ\u000e\u0010%\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u000eJ\u0010\u0010&\u001a\u00020\u00192\b\u0010'\u001a\u0004\u0018\u00010\u0011J\u0010\u0010(\u001a\u00020\u00192\b\u0010)\u001a\u0004\u0018\u00010\u0011J\u000e\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u000eJ\u000e\u0010.\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,J\u000e\u0010/\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0011R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\n0\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lio/sentry/okhttp/SentryOkHttpEvent;", "", "hub", "Lio/sentry/IHub;", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", "(Lio/sentry/IHub;Lokhttp3/Request;)V", "breadcrumb", "Lio/sentry/Breadcrumb;", "callRootSpan", "Lio/sentry/ISpan;", "getCallRootSpan$sentry_okhttp", "()Lio/sentry/ISpan;", "clientErrorResponse", "Lokhttp3/Response;", "eventSpans", "", "", "isEventFinished", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isReadingResponseBody", Response.TYPE, "findParentSpan", NotificationCompat.CATEGORY_EVENT, "finishEvent", "", "finishDate", "Lio/sentry/SentryDate;", "beforeFinish", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "span", "finishSpan", "moveThrowableToRootSpan", "scheduleFinish", "timestamp", "setClientErrorResponse", "setError", "errorMessage", "setProtocol", "protocolName", "setRequestBodySize", "byteCount", "", "setResponse", "setResponseBodySize", "startSpan", "sentry-okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryOkHttpEvent {
    private final Breadcrumb breadcrumb;
    private final ISpan callRootSpan;
    private okhttp3.Response clientErrorResponse;
    private final Map<String, ISpan> eventSpans;
    private final IHub hub;
    private final AtomicBoolean isEventFinished;
    private final AtomicBoolean isReadingResponseBody;
    private final Request request;
    private okhttp3.Response response;

    /* renamed from: getCallRootSpan$sentry_okhttp, reason: from getter */
    public final ISpan getCallRootSpan() {
        return this.callRootSpan;
    }

    public final void setClientErrorResponse(okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.clientErrorResponse = response;
    }

    public SentryOkHttpEvent(IHub hub, Request request) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(request, "request");
        this.hub = hub;
        this.request = request;
        this.eventSpans = new ConcurrentHashMap();
        this.isReadingResponseBody = new AtomicBoolean(false);
        this.isEventFinished = new AtomicBoolean(false);
        UrlUtils.UrlDetails parse = UrlUtils.parse(request.url().getUrl());
        Intrinsics.checkNotNullExpressionValue(parse, "parse(request.url.toString())");
        String urlOrFallback = parse.getUrlOrFallback();
        Intrinsics.checkNotNullExpressionValue(urlOrFallback, "urlDetails.urlOrFallback");
        String host = request.url().host();
        String encodedPath = request.url().encodedPath();
        String method = request.method();
        ITransaction transaction = Platform.isAndroid() ? hub.getTransaction() : hub.getSpan();
        ISpan startChild = transaction != null ? transaction.startChild("http.client", method + ' ' + urlOrFallback) : null;
        this.callRootSpan = startChild;
        SpanContext spanContext = startChild != null ? startChild.getSpanContext() : null;
        if (spanContext != null) {
            spanContext.setOrigin(SentryOkHttpEventKt.TRACE_ORIGIN);
        }
        parse.applyToSpan(startChild);
        Breadcrumb http = Breadcrumb.http(urlOrFallback, method);
        Intrinsics.checkNotNullExpressionValue(http, "http(url, method)");
        this.breadcrumb = http;
        http.setData("host", host);
        http.setData("path", encodedPath);
        if (startChild != null) {
            startChild.setData(Request.JsonKeys.URL, urlOrFallback);
        }
        if (startChild != null) {
            startChild.setData("host", host);
        }
        if (startChild != null) {
            startChild.setData("path", encodedPath);
        }
        if (startChild != null) {
            Locale ROOT = Locale.ROOT;
            Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
            String upperCase = method.toUpperCase(ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            startChild.setData(SpanDataConvention.HTTP_METHOD_KEY, upperCase);
        }
    }

    public final void setResponse(okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.response = response;
        this.breadcrumb.setData("protocol", response.protocol().name());
        this.breadcrumb.setData(Response.JsonKeys.STATUS_CODE, Integer.valueOf(response.code()));
        ISpan iSpan = this.callRootSpan;
        if (iSpan != null) {
            iSpan.setData("protocol", response.protocol().name());
        }
        ISpan iSpan2 = this.callRootSpan;
        if (iSpan2 != null) {
            iSpan2.setData(SpanDataConvention.HTTP_STATUS_CODE_KEY, Integer.valueOf(response.code()));
        }
    }

    public final void setProtocol(String protocolName) {
        if (protocolName != null) {
            this.breadcrumb.setData("protocol", protocolName);
            ISpan iSpan = this.callRootSpan;
            if (iSpan != null) {
                iSpan.setData("protocol", protocolName);
            }
        }
    }

    public final void setRequestBodySize(long byteCount) {
        if (byteCount > -1) {
            this.breadcrumb.setData("request_content_length", Long.valueOf(byteCount));
            ISpan iSpan = this.callRootSpan;
            if (iSpan != null) {
                iSpan.setData("http.request_content_length", Long.valueOf(byteCount));
            }
        }
    }

    public final void setResponseBodySize(long byteCount) {
        if (byteCount > -1) {
            this.breadcrumb.setData("response_content_length", Long.valueOf(byteCount));
            ISpan iSpan = this.callRootSpan;
            if (iSpan != null) {
                iSpan.setData(SpanDataConvention.HTTP_RESPONSE_CONTENT_LENGTH_KEY, Long.valueOf(byteCount));
            }
        }
    }

    public final void setError(String errorMessage) {
        if (errorMessage != null) {
            this.breadcrumb.setData("error_message", errorMessage);
            ISpan iSpan = this.callRootSpan;
            if (iSpan != null) {
                iSpan.setData("error_message", errorMessage);
            }
        }
    }

    public final void startSpan(String event) {
        ISpan startChild;
        Intrinsics.checkNotNullParameter(event, "event");
        ISpan findParentSpan = findParentSpan(event);
        if (findParentSpan == null || (startChild = findParentSpan.startChild("http.client." + event)) == null) {
            return;
        }
        if (Intrinsics.areEqual(event, SentryOkHttpEventListener.RESPONSE_BODY_EVENT)) {
            this.isReadingResponseBody.set(true);
        }
        startChild.getSpanContext().setOrigin(SentryOkHttpEventKt.TRACE_ORIGIN);
        this.eventSpans.put(event, startChild);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ISpan finishSpan$default(SentryOkHttpEvent sentryOkHttpEvent, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return sentryOkHttpEvent.finishSpan(str, function1);
    }

    public final ISpan finishSpan(String event, Function1<? super ISpan, Unit> beforeFinish) {
        Intrinsics.checkNotNullParameter(event, "event");
        ISpan iSpan = this.eventSpans.get(event);
        if (iSpan == null) {
            return null;
        }
        ISpan findParentSpan = findParentSpan(event);
        if (beforeFinish != null) {
            beforeFinish.invoke(iSpan);
        }
        moveThrowableToRootSpan(iSpan);
        if (findParentSpan != null && !Intrinsics.areEqual(findParentSpan, this.callRootSpan)) {
            if (beforeFinish != null) {
                beforeFinish.invoke(findParentSpan);
            }
            moveThrowableToRootSpan(findParentSpan);
        }
        ISpan iSpan2 = this.callRootSpan;
        if (iSpan2 != null && beforeFinish != null) {
            beforeFinish.invoke(iSpan2);
        }
        iSpan.finish();
        return iSpan;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void finishEvent$default(SentryOkHttpEvent sentryOkHttpEvent, SentryDate sentryDate, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            sentryDate = null;
        }
        if ((i & 2) != 0) {
            function1 = null;
        }
        sentryOkHttpEvent.finishEvent(sentryDate, function1);
    }

    public final void finishEvent(SentryDate finishDate, Function1<? super ISpan, Unit> beforeFinish) {
        if (this.isEventFinished.getAndSet(true)) {
            return;
        }
        Hint hint = new Hint();
        hint.set(TypeCheckHint.OKHTTP_REQUEST, this.request);
        okhttp3.Response response = this.response;
        if (response != null) {
            hint.set(TypeCheckHint.OKHTTP_RESPONSE, response);
        }
        this.hub.addBreadcrumb(this.breadcrumb, hint);
        if (this.callRootSpan == null) {
            okhttp3.Response response2 = this.clientErrorResponse;
            if (response2 != null) {
                SentryOkHttpUtils.INSTANCE.captureClientError$sentry_okhttp(this.hub, response2.request(), response2);
                return;
            }
            return;
        }
        Collection<ISpan> values = this.eventSpans.values();
        ArrayList<ISpan> arrayList = new ArrayList();
        for (Object obj : values) {
            if (!((ISpan) obj).isFinished()) {
                arrayList.add(obj);
            }
        }
        for (ISpan iSpan : arrayList) {
            moveThrowableToRootSpan(iSpan);
            if (finishDate != null) {
                iSpan.finish(iSpan.getStatus(), finishDate);
            } else {
                iSpan.finish();
            }
        }
        if (beforeFinish != null) {
            beforeFinish.invoke(this.callRootSpan);
        }
        okhttp3.Response response3 = this.clientErrorResponse;
        if (response3 != null) {
            SentryOkHttpUtils.INSTANCE.captureClientError$sentry_okhttp(this.hub, response3.request(), response3);
        }
        if (finishDate != null) {
            ISpan iSpan2 = this.callRootSpan;
            iSpan2.finish(iSpan2.getStatus(), finishDate);
        } else {
            this.callRootSpan.finish();
        }
    }

    private final void moveThrowableToRootSpan(ISpan span) {
        if (Intrinsics.areEqual(span, this.callRootSpan) || span.getThrowable() == null || span.getStatus() == null) {
            return;
        }
        ISpan iSpan = this.callRootSpan;
        if (iSpan != null) {
            iSpan.setThrowable(span.getThrowable());
        }
        ISpan iSpan2 = this.callRootSpan;
        if (iSpan2 != null) {
            iSpan2.setStatus(span.getStatus());
        }
        span.setThrowable(null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final ISpan findParentSpan(String event) {
        ISpan iSpan;
        switch (event.hashCode()) {
            case -1551625182:
                if (event.equals(SentryOkHttpEventListener.SECURE_CONNECT_EVENT)) {
                    iSpan = this.eventSpans.get(SentryOkHttpEventListener.CONNECT_EVENT);
                    break;
                }
                iSpan = this.callRootSpan;
                break;
            case -21341816:
                if (event.equals(SentryOkHttpEventListener.RESPONSE_HEADERS_EVENT)) {
                    iSpan = this.eventSpans.get(SentryOkHttpEventListener.CONNECTION_EVENT);
                    break;
                }
                iSpan = this.callRootSpan;
                break;
            case 1302741330:
                if (event.equals(SentryOkHttpEventListener.REQUEST_BODY_EVENT)) {
                    iSpan = this.eventSpans.get(SentryOkHttpEventListener.CONNECTION_EVENT);
                    break;
                }
                iSpan = this.callRootSpan;
                break;
            case 1382943190:
                if (event.equals(SentryOkHttpEventListener.REQUEST_HEADERS_EVENT)) {
                    iSpan = this.eventSpans.get(SentryOkHttpEventListener.CONNECTION_EVENT);
                    break;
                }
                iSpan = this.callRootSpan;
                break;
            case 1676238560:
                if (event.equals(SentryOkHttpEventListener.RESPONSE_BODY_EVENT)) {
                    iSpan = this.eventSpans.get(SentryOkHttpEventListener.CONNECTION_EVENT);
                    break;
                }
                iSpan = this.callRootSpan;
                break;
            default:
                iSpan = this.callRootSpan;
                break;
        }
        return iSpan == null ? this.callRootSpan : iSpan;
    }

    public final void scheduleFinish(final SentryDate timestamp) {
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        try {
            this.hub.getOptions().getExecutorService().schedule(new Runnable() { // from class: io.sentry.okhttp.SentryOkHttpEvent$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SentryOkHttpEvent.scheduleFinish$lambda$7(SentryOkHttpEvent.this, timestamp);
                }
            }, 800L);
        } catch (RejectedExecutionException e) {
            this.hub.getOptions().getLogger().log(SentryLevel.ERROR, "Failed to call the executor. OkHttp span will not be finished automatically. Did you call Sentry.close()?", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scheduleFinish$lambda$7(SentryOkHttpEvent this$0, SentryDate timestamp) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(timestamp, "$timestamp");
        if (this$0.isReadingResponseBody.get()) {
            return;
        }
        Collection<ISpan> values = this$0.eventSpans.values();
        if (!(values instanceof Collection) || !values.isEmpty()) {
            Iterator<T> it = values.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (!((ISpan) it.next()).isFinished()) {
                    ISpan iSpan = this$0.callRootSpan;
                    if (iSpan != null && iSpan.isFinished()) {
                        return;
                    }
                }
            }
        }
        finishEvent$default(this$0, timestamp, null, 2, null);
    }
}
