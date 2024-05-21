package io.sentry.okhttp;

import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.HttpStatusCodeRange;
import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SpanDataConvention;
import io.sentry.TypeCheckHint;
import io.sentry.protocol.Response;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.PropagationTargetsUtils;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* compiled from: SentryOkHttpInterceptor.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001:\u0001)B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u000f\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bBE\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J,\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\nH\u0002J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J)\u0010 \u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010!\u001a\u0004\u0018\u00010\u00132\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J'\u0010$\u001a\u00020\u0015*\u0004\u0018\u00010%2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00150'H\u0002¢\u0006\u0002\u0010(R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lio/sentry/okhttp/SentryOkHttpInterceptor;", "Lokhttp3/Interceptor;", "()V", "hub", "Lio/sentry/IHub;", "(Lio/sentry/IHub;)V", "beforeSpan", "Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;", "(Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V", "captureFailedRequests", "", "failedRequestStatusCodes", "", "Lio/sentry/HttpStatusCodeRange;", "failedRequestTargets", "", "(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V", "containsStatusCode", "statusCode", "", "finishSpan", "", "span", "Lio/sentry/ISpan;", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", Response.TYPE, "Lokhttp3/Response;", "isFromEventListener", "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "sendBreadcrumb", "code", "(Lokhttp3/Request;Ljava/lang/Integer;Lokhttp3/Response;)V", "shouldCaptureClientError", "ifHasValidLength", "", "fn", "Lkotlin/Function1;", "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V", "BeforeSpanCallback", "sentry-okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public class SentryOkHttpInterceptor implements Interceptor {
    private final BeforeSpanCallback beforeSpan;
    private final boolean captureFailedRequests;
    private final List<HttpStatusCodeRange> failedRequestStatusCodes;
    private final List<String> failedRequestTargets;
    private final IHub hub;

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;", "", "execute", "Lio/sentry/ISpan;", "span", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", Response.TYPE, "Lokhttp3/Response;", "sentry-okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface BeforeSpanCallback {
        ISpan execute(ISpan span, Request request, okhttp3.Response response);
    }

    public SentryOkHttpInterceptor(IHub hub, BeforeSpanCallback beforeSpanCallback, boolean z, List<HttpStatusCodeRange> failedRequestStatusCodes, List<String> failedRequestTargets) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(failedRequestStatusCodes, "failedRequestStatusCodes");
        Intrinsics.checkNotNullParameter(failedRequestTargets, "failedRequestTargets");
        this.hub = hub;
        this.beforeSpan = beforeSpanCallback;
        this.captureFailedRequests = z;
        this.failedRequestStatusCodes = failedRequestStatusCodes;
        this.failedRequestTargets = failedRequestTargets;
        IntegrationUtils.addIntegrationToSdkVersion(getClass());
        SentryIntegrationPackageStorage.getInstance().addPackage("maven:io.sentry:sentry-okhttp", "7.4.0");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryOkHttpInterceptor(io.sentry.IHub r4, io.sentry.okhttp.SentryOkHttpInterceptor.BeforeSpanCallback r5, boolean r6, java.util.List r7, java.util.List r8, int r9, kotlin.jvm.internal.DefaultConstructorMarker r10) {
        /*
            r3 = this;
            r10 = r9 & 1
            if (r10 == 0) goto Lf
            io.sentry.HubAdapter r4 = io.sentry.HubAdapter.getInstance()
            java.lang.String r10 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r10)
            io.sentry.IHub r4 = (io.sentry.IHub) r4
        Lf:
            r10 = r9 & 2
            if (r10 == 0) goto L14
            r5 = 0
        L14:
            r10 = r5
            r5 = r9 & 4
            if (r5 == 0) goto L1a
            r6 = 1
        L1a:
            r0 = r6
            r5 = r9 & 8
            if (r5 == 0) goto L2c
            io.sentry.HttpStatusCodeRange r5 = new io.sentry.HttpStatusCodeRange
            r6 = 500(0x1f4, float:7.0E-43)
            r7 = 599(0x257, float:8.4E-43)
            r5.<init>(r6, r7)
            java.util.List r7 = kotlin.collections.CollectionsKt.listOf(r5)
        L2c:
            r1 = r7
            r5 = r9 & 16
            if (r5 == 0) goto L37
            java.lang.String r5 = ".*"
            java.util.List r8 = kotlin.collections.CollectionsKt.listOf(r5)
        L37:
            r2 = r8
            r5 = r3
            r6 = r4
            r7 = r10
            r8 = r0
            r9 = r1
            r10 = r2
            r5.<init>(r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpInterceptor.<init>(io.sentry.IHub, io.sentry.okhttp.SentryOkHttpInterceptor$BeforeSpanCallback, boolean, java.util.List, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SentryOkHttpInterceptor() {
        /*
            r2 = this;
            io.sentry.HubAdapter r0 = io.sentry.HubAdapter.getInstance()
            java.lang.String r1 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            io.sentry.IHub r0 = (io.sentry.IHub) r0
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpInterceptor.<init>():void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryOkHttpInterceptor(IHub hub) {
        this(hub, null, false, null, null, 28, null);
        Intrinsics.checkNotNullParameter(hub, "hub");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SentryOkHttpInterceptor(io.sentry.okhttp.SentryOkHttpInterceptor.BeforeSpanCallback r11) {
        /*
            r10 = this;
            java.lang.String r0 = "beforeSpan"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            io.sentry.HubAdapter r0 = io.sentry.HubAdapter.getInstance()
            java.lang.String r1 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r3 = r0
            io.sentry.IHub r3 = (io.sentry.IHub) r3
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 28
            r9 = 0
            r2 = r10
            r4 = r11
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpInterceptor.<init>(io.sentry.okhttp.SentryOkHttpInterceptor$BeforeSpanCallback):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[SYNTHETIC] */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(okhttp3.Interceptor.Chain r13) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    private final void sendBreadcrumb(Request request, Integer code, okhttp3.Response response) {
        final Breadcrumb http = Breadcrumb.http(request.url().getUrl(), request.method(), code);
        Intrinsics.checkNotNullExpressionValue(http, "http(request.url.toString(), request.method, code)");
        RequestBody body = request.body();
        ifHasValidLength(body != null ? Long.valueOf(body.contentLength()) : null, new Function1<Long, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpInterceptor$sendBreadcrumb$1
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
                Breadcrumb.this.setData("http.request_content_length", Long.valueOf(j));
            }
        });
        Hint hint = new Hint();
        hint.set(TypeCheckHint.OKHTTP_REQUEST, request);
        if (response != null) {
            ResponseBody body2 = response.body();
            ifHasValidLength(body2 != null ? Long.valueOf(body2.getContentLength()) : null, new Function1<Long, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpInterceptor$sendBreadcrumb$2$1
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
                    Breadcrumb.this.setData(SpanDataConvention.HTTP_RESPONSE_CONTENT_LENGTH_KEY, Long.valueOf(j));
                }
            });
            hint.set(TypeCheckHint.OKHTTP_RESPONSE, response);
        }
        this.hub.addBreadcrumb(http, hint);
    }

    private final void finishSpan(ISpan span, Request request, okhttp3.Response response, boolean isFromEventListener) {
        if (span == null) {
            return;
        }
        BeforeSpanCallback beforeSpanCallback = this.beforeSpan;
        if (beforeSpanCallback == null) {
            if (isFromEventListener) {
                return;
            }
            span.finish();
        } else {
            if (beforeSpanCallback.execute(span, request, response) == null) {
                span.getSpanContext().setSampled(false);
            }
            if (isFromEventListener) {
                return;
            }
            span.finish();
        }
    }

    private final void ifHasValidLength(Long l, Function1<? super Long, Unit> function1) {
        if (l == null || l.longValue() == -1) {
            return;
        }
        function1.invoke(l);
    }

    private final boolean shouldCaptureClientError(Request request, okhttp3.Response response) {
        return this.captureFailedRequests && containsStatusCode(response.code()) && PropagationTargetsUtils.contain(this.failedRequestTargets, request.url().getUrl());
    }

    private final boolean containsStatusCode(int statusCode) {
        Iterator<HttpStatusCodeRange> it = this.failedRequestStatusCodes.iterator();
        while (it.hasNext()) {
            if (it.next().isInRange(statusCode)) {
                return true;
            }
        }
        return false;
    }
}
