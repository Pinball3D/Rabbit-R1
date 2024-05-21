package io.sentry.android.okhttp;

import io.sentry.HttpStatusCodeRange;
import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.android.okhttp.SentryOkHttpInterceptor;
import io.sentry.okhttp.SentryOkHttpInterceptor;
import io.sentry.protocol.Response;
import io.sentry.util.IntegrationUtils;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;

/* compiled from: SentryOkHttpInterceptor.kt */
@Deprecated(message = "Use SentryOkHttpInterceptor from sentry-okhttp instead", replaceWith = @ReplaceWith(expression = "SentryOkHttpInterceptor", imports = {"io.sentry.okhttp.SentryOkHttpInterceptor"}))
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u000f\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bBE\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\f¢\u0006\u0002\u0010\u0010J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0096\u0001R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lio/sentry/android/okhttp/SentryOkHttpInterceptor;", "Lokhttp3/Interceptor;", "()V", "hub", "Lio/sentry/IHub;", "(Lio/sentry/IHub;)V", "beforeSpan", "Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;", "(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V", "captureFailedRequests", "", "failedRequestStatusCodes", "", "Lio/sentry/HttpStatusCodeRange;", "failedRequestTargets", "", "(Lio/sentry/IHub;Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "BeforeSpanCallback", "sentry-android-okhttp_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryOkHttpInterceptor implements Interceptor {
    private final /* synthetic */ io.sentry.okhttp.SentryOkHttpInterceptor $$delegate_0;
    private final BeforeSpanCallback beforeSpan;
    private final boolean captureFailedRequests;
    private final List<HttpStatusCodeRange> failedRequestStatusCodes;
    private final List<String> failedRequestTargets;
    private final IHub hub;

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Deprecated(message = "Use BeforeSpanCallback from sentry-okhttp instead", replaceWith = @ReplaceWith(expression = "BeforeSpanCallback", imports = {"io.sentry.okhttp.SentryOkHttpInterceptor.BeforeSpanCallback"}))
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;", "", "execute", "Lio/sentry/ISpan;", "span", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", Response.TYPE, "Lokhttp3/Response;", "sentry-android-okhttp_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface BeforeSpanCallback {
        ISpan execute(ISpan span, Request request, okhttp3.Response response);
    }

    @Override // okhttp3.Interceptor
    public okhttp3.Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        return this.$$delegate_0.intercept(chain);
    }

    public SentryOkHttpInterceptor(IHub hub, final BeforeSpanCallback beforeSpanCallback, boolean z, List<HttpStatusCodeRange> failedRequestStatusCodes, List<String> failedRequestTargets) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(failedRequestStatusCodes, "failedRequestStatusCodes");
        Intrinsics.checkNotNullParameter(failedRequestTargets, "failedRequestTargets");
        this.hub = hub;
        this.beforeSpan = beforeSpanCallback;
        this.captureFailedRequests = z;
        this.failedRequestStatusCodes = failedRequestStatusCodes;
        this.failedRequestTargets = failedRequestTargets;
        this.$$delegate_0 = new io.sentry.okhttp.SentryOkHttpInterceptor(hub, new SentryOkHttpInterceptor.BeforeSpanCallback() { // from class: io.sentry.android.okhttp.SentryOkHttpInterceptor$$ExternalSyntheticLambda0
            @Override // io.sentry.okhttp.SentryOkHttpInterceptor.BeforeSpanCallback
            public final ISpan execute(ISpan iSpan, Request request, okhttp3.Response response) {
                ISpan __delegate_0$lambda$0;
                __delegate_0$lambda$0 = SentryOkHttpInterceptor.__delegate_0$lambda$0(SentryOkHttpInterceptor.BeforeSpanCallback.this, iSpan, request, response);
                return __delegate_0$lambda$0;
            }
        }, z, failedRequestStatusCodes, failedRequestTargets);
        IntegrationUtils.addIntegrationToSdkVersion(getClass());
        SentryIntegrationPackageStorage.getInstance().addPackage("maven:io.sentry:sentry-android-okhttp", "7.4.0");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryOkHttpInterceptor(io.sentry.IHub r4, io.sentry.android.okhttp.SentryOkHttpInterceptor.BeforeSpanCallback r5, boolean r6, java.util.List r7, java.util.List r8, int r9, kotlin.jvm.internal.DefaultConstructorMarker r10) {
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpInterceptor.<init>(io.sentry.IHub, io.sentry.android.okhttp.SentryOkHttpInterceptor$BeforeSpanCallback, boolean, java.util.List, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ISpan __delegate_0$lambda$0(BeforeSpanCallback beforeSpanCallback, ISpan span, Request request, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(span, "span");
        Intrinsics.checkNotNullParameter(request, "request");
        return beforeSpanCallback == null ? span : beforeSpanCallback.execute(span, request, response);
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpInterceptor.<init>():void");
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
    public SentryOkHttpInterceptor(io.sentry.android.okhttp.SentryOkHttpInterceptor.BeforeSpanCallback r11) {
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpInterceptor.<init>(io.sentry.android.okhttp.SentryOkHttpInterceptor$BeforeSpanCallback):void");
    }
}
