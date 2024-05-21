package io.sentry.android.okhttp;

import androidx.core.app.NotificationCompat;
import io.sentry.IHub;
import io.sentry.SentryBaseEvent;
import io.sentry.protocol.Request;
import io.sentry.protocol.Response;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;

/* compiled from: SentryOkHttpEventListener.kt */
@Deprecated(message = "Use SentryOkHttpEventListener from sentry-okhttp instead", replaceWith = @ReplaceWith(expression = "SentryOkHttpEventListener", imports = {"io.sentry.okhttp.SentryOkHttpEventListener"}))
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0019\b\u0016\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\nB\u0019\b\u0016\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bB6\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012%\b\u0002\u0010\f\u001a\u001f\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r¢\u0006\u0002\u0010\u0012J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J*\u0010\"\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J2\u0010)\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J \u0010*\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010+\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J&\u0010/\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u0002012\f\u00102\u001a\b\u0012\u0004\u0012\u00020403H\u0016J\u0018\u00105\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u000201H\u0016J&\u00106\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u0002082\f\u00109\u001a\b\u0012\u0004\u0012\u00020&03H\u0016J\u0018\u0010:\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010;\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010?\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010@\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010D\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010E\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010F\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010G\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0010\u0010H\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010I\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u001a\u0010J\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0010\u0010M\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006N"}, d2 = {"Lio/sentry/android/okhttp/SentryOkHttpEventListener;", "Lokhttp3/EventListener;", "()V", "originalEventListener", "(Lokhttp3/EventListener;)V", "originalEventListenerFactory", "Lokhttp3/EventListener$Factory;", "(Lokhttp3/EventListener$Factory;)V", "hub", "Lio/sentry/IHub;", "(Lio/sentry/IHub;Lokhttp3/EventListener;)V", "(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;)V", "originalEventListenerCreator", "Lkotlin/Function1;", "Lokhttp3/Call;", "Lkotlin/ParameterName;", "name", NotificationCompat.CATEGORY_CALL, "(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V", "delegate", "Lio/sentry/okhttp/SentryOkHttpEventListener;", "cacheConditionalHit", "", "cachedResponse", "Lokhttp3/Response;", "cacheHit", Response.TYPE, "cacheMiss", "callEnd", "callFailed", "ioe", "Ljava/io/IOException;", "callStart", "canceled", "connectEnd", "inetSocketAddress", "Ljava/net/InetSocketAddress;", "proxy", "Ljava/net/Proxy;", "protocol", "Lokhttp3/Protocol;", "connectFailed", "connectStart", "connectionAcquired", io.sentry.okhttp.SentryOkHttpEventListener.CONNECTION_EVENT, "Lokhttp3/Connection;", "connectionReleased", "dnsEnd", "domainName", "", "inetAddressList", "", "Ljava/net/InetAddress;", "dnsStart", "proxySelectEnd", Request.JsonKeys.URL, "Lokhttp3/HttpUrl;", "proxies", "proxySelectStart", "requestBodyEnd", "byteCount", "", "requestBodyStart", "requestFailed", "requestHeadersEnd", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", "requestHeadersStart", "responseBodyEnd", "responseBodyStart", "responseFailed", "responseHeadersEnd", "responseHeadersStart", "satisfactionFailure", "secureConnectEnd", "handshake", "Lokhttp3/Handshake;", "secureConnectStart", "sentry-android-okhttp_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryOkHttpEventListener extends EventListener {
    private final io.sentry.okhttp.SentryOkHttpEventListener delegate;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryOkHttpEventListener(io.sentry.IHub r1, kotlin.jvm.functions.Function1 r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r4 = r3 & 1
            if (r4 == 0) goto Lf
            io.sentry.HubAdapter r1 = io.sentry.HubAdapter.getInstance()
            java.lang.String r4 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r4)
            io.sentry.IHub r1 = (io.sentry.IHub) r1
        Lf:
            r3 = r3 & 2
            if (r3 == 0) goto L14
            r2 = 0
        L14:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpEventListener.<init>(io.sentry.IHub, kotlin.jvm.functions.Function1, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public SentryOkHttpEventListener(IHub hub, Function1<? super Call, ? extends EventListener> function1) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        this.delegate = new io.sentry.okhttp.SentryOkHttpEventListener(hub, function1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SentryOkHttpEventListener() {
        /*
            r2 = this;
            io.sentry.HubAdapter r0 = io.sentry.HubAdapter.getInstance()
            java.lang.String r1 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            io.sentry.IHub r0 = (io.sentry.IHub) r0
            r1 = 0
            r2.<init>(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpEventListener.<init>():void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SentryOkHttpEventListener(final okhttp3.EventListener r3) {
        /*
            r2 = this;
            java.lang.String r0 = "originalEventListener"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            io.sentry.HubAdapter r0 = io.sentry.HubAdapter.getInstance()
            java.lang.String r1 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            io.sentry.IHub r0 = (io.sentry.IHub) r0
            io.sentry.android.okhttp.SentryOkHttpEventListener$1 r1 = new io.sentry.android.okhttp.SentryOkHttpEventListener$1
            r1.<init>()
            kotlin.jvm.functions.Function1 r1 = (kotlin.jvm.functions.Function1) r1
            r2.<init>(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpEventListener.<init>(okhttp3.EventListener):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SentryOkHttpEventListener(final okhttp3.EventListener.Factory r3) {
        /*
            r2 = this;
            java.lang.String r0 = "originalEventListenerFactory"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            io.sentry.HubAdapter r0 = io.sentry.HubAdapter.getInstance()
            java.lang.String r1 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            io.sentry.IHub r0 = (io.sentry.IHub) r0
            io.sentry.android.okhttp.SentryOkHttpEventListener$2 r1 = new io.sentry.android.okhttp.SentryOkHttpEventListener$2
            r1.<init>()
            kotlin.jvm.functions.Function1 r1 = (kotlin.jvm.functions.Function1) r1
            r2.<init>(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpEventListener.<init>(okhttp3.EventListener$Factory):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryOkHttpEventListener(io.sentry.IHub r1, okhttp3.EventListener r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 1
            if (r3 == 0) goto Lf
            io.sentry.HubAdapter r1 = io.sentry.HubAdapter.getInstance()
            java.lang.String r3 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            io.sentry.IHub r1 = (io.sentry.IHub) r1
        Lf:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpEventListener.<init>(io.sentry.IHub, okhttp3.EventListener, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryOkHttpEventListener(IHub hub, final EventListener originalEventListener) {
        this(hub, new Function1<Call, EventListener>() { // from class: io.sentry.android.okhttp.SentryOkHttpEventListener.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final EventListener invoke(Call it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return EventListener.this;
            }
        });
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(originalEventListener, "originalEventListener");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryOkHttpEventListener(io.sentry.IHub r1, okhttp3.EventListener.Factory r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 1
            if (r3 == 0) goto Lf
            io.sentry.HubAdapter r1 = io.sentry.HubAdapter.getInstance()
            java.lang.String r3 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            io.sentry.IHub r1 = (io.sentry.IHub) r1
        Lf:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.SentryOkHttpEventListener.<init>(io.sentry.IHub, okhttp3.EventListener$Factory, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryOkHttpEventListener(IHub hub, final EventListener.Factory originalEventListenerFactory) {
        this(hub, new Function1<Call, EventListener>() { // from class: io.sentry.android.okhttp.SentryOkHttpEventListener.4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final EventListener invoke(Call it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return EventListener.Factory.this.create(it);
            }
        });
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(originalEventListenerFactory, "originalEventListenerFactory");
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(Call call, okhttp3.Response cachedResponse) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
        this.delegate.cacheConditionalHit(call, cachedResponse);
    }

    @Override // okhttp3.EventListener
    public void cacheHit(Call call, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        this.delegate.cacheHit(call, response);
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.cacheMiss(call);
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.callEnd(call);
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        this.delegate.callFailed(call, ioe);
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.callStart(call);
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.canceled(call);
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        this.delegate.connectEnd(call, inetSocketAddress, proxy, protocol);
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        this.delegate.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        this.delegate.connectStart(call, inetSocketAddress, proxy);
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.delegate.connectionAcquired(call, connection);
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.delegate.connectionReleased(call, connection);
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String domainName, List<? extends InetAddress> inetAddressList) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
        this.delegate.dnsEnd(call, domainName, inetAddressList);
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String domainName) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        this.delegate.dnsStart(call, domainName);
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(Call call, HttpUrl url, List<? extends Proxy> proxies) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(proxies, "proxies");
        this.delegate.proxySelectEnd(call, url, proxies);
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(Call call, HttpUrl url) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        this.delegate.proxySelectStart(call, url);
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long byteCount) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.requestBodyEnd(call, byteCount);
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.requestBodyStart(call);
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        this.delegate.requestFailed(call, ioe);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, okhttp3.Request request) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
        this.delegate.requestHeadersEnd(call, request);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.requestHeadersStart(call);
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long byteCount) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.responseBodyEnd(call, byteCount);
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.responseBodyStart(call);
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        this.delegate.responseFailed(call, ioe);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        this.delegate.responseHeadersEnd(call, response);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.responseHeadersStart(call);
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(Call call, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        this.delegate.satisfactionFailure(call, response);
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.secureConnectEnd(call, handshake);
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.delegate.secureConnectStart(call);
    }
}
