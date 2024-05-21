package io.sentry.okhttp;

import androidx.core.app.NotificationCompat;
import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryDate;
import io.sentry.SpanDataConvention;
import io.sentry.SpanStatus;
import io.sentry.protocol.Request;
import io.sentry.protocol.Response;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;

/* compiled from: SentryOkHttpEventListener.kt */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 N2\u00020\u0001:\u0001NB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0019\b\u0016\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\nB\u0019\b\u0016\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bB6\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012%\b\u0002\u0010\f\u001a\u001f\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r¢\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\b\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J*\u0010\"\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J2\u0010)\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010*\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J&\u0010/\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u0002012\f\u00102\u001a\b\u0012\u0004\u0012\u00020403H\u0016J\u0018\u00105\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u000201H\u0016J&\u00106\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u0002082\f\u00109\u001a\b\u0012\u0004\u0012\u00020&03H\u0016J\u0018\u0010:\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010;\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010?\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010@\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010D\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010E\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010F\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010G\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0010\u0010H\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010I\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u001a\u0010J\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0010\u0010M\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R+\u0010\f\u001a\u001f\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0001\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Lio/sentry/okhttp/SentryOkHttpEventListener;", "Lokhttp3/EventListener;", "()V", "originalEventListener", "(Lokhttp3/EventListener;)V", "originalEventListenerFactory", "Lokhttp3/EventListener$Factory;", "(Lokhttp3/EventListener$Factory;)V", "hub", "Lio/sentry/IHub;", "(Lio/sentry/IHub;Lokhttp3/EventListener;)V", "(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;)V", "originalEventListenerCreator", "Lkotlin/Function1;", "Lokhttp3/Call;", "Lkotlin/ParameterName;", "name", NotificationCompat.CATEGORY_CALL, "(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V", "cacheConditionalHit", "", "cachedResponse", "Lokhttp3/Response;", "cacheHit", Response.TYPE, "cacheMiss", "callEnd", "callFailed", "ioe", "Ljava/io/IOException;", "callStart", "canCreateEventSpan", "", "canceled", "connectEnd", "inetSocketAddress", "Ljava/net/InetSocketAddress;", "proxy", "Ljava/net/Proxy;", "protocol", "Lokhttp3/Protocol;", "connectFailed", "connectStart", "connectionAcquired", SentryOkHttpEventListener.CONNECTION_EVENT, "Lokhttp3/Connection;", "connectionReleased", "dnsEnd", "domainName", "", "inetAddressList", "", "Ljava/net/InetAddress;", "dnsStart", "proxySelectEnd", Request.JsonKeys.URL, "Lokhttp3/HttpUrl;", "proxies", "proxySelectStart", "requestBodyEnd", "byteCount", "", "requestBodyStart", "requestFailed", "requestHeadersEnd", SentryBaseEvent.JsonKeys.REQUEST, "Lokhttp3/Request;", "requestHeadersStart", "responseBodyEnd", "responseBodyStart", "responseFailed", "responseHeadersEnd", "responseHeadersStart", "satisfactionFailure", "secureConnectEnd", "handshake", "Lokhttp3/Handshake;", "secureConnectStart", "Companion", "sentry-okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public class SentryOkHttpEventListener extends EventListener {
    public static final String CONNECTION_EVENT = "connection";
    public static final String CONNECT_EVENT = "connect";
    public static final String DNS_EVENT = "dns";
    public static final String PROXY_SELECT_EVENT = "proxy_select";
    public static final String REQUEST_BODY_EVENT = "request_body";
    public static final String REQUEST_HEADERS_EVENT = "request_headers";
    public static final String RESPONSE_BODY_EVENT = "response_body";
    public static final String RESPONSE_HEADERS_EVENT = "response_headers";
    public static final String SECURE_CONNECT_EVENT = "secure_connect";
    private final IHub hub;
    private EventListener originalEventListener;
    private final Function1<Call, EventListener> originalEventListenerCreator;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<Call, SentryOkHttpEvent> eventMap = new ConcurrentHashMap();

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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpEventListener.<init>(io.sentry.IHub, kotlin.jvm.functions.Function1, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SentryOkHttpEventListener(IHub hub, Function1<? super Call, ? extends EventListener> function1) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        this.hub = hub;
        this.originalEventListenerCreator = function1;
    }

    /* compiled from: SentryOkHttpEventListener.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;", "", "()V", "CONNECTION_EVENT", "", "CONNECT_EVENT", "DNS_EVENT", "PROXY_SELECT_EVENT", "REQUEST_BODY_EVENT", "REQUEST_HEADERS_EVENT", "RESPONSE_BODY_EVENT", "RESPONSE_HEADERS_EVENT", "SECURE_CONNECT_EVENT", "eventMap", "", "Lokhttp3/Call;", "Lio/sentry/okhttp/SentryOkHttpEvent;", "getEventMap$sentry_okhttp", "()Ljava/util/Map;", "sentry-okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map<Call, SentryOkHttpEvent> getEventMap$sentry_okhttp() {
            return SentryOkHttpEventListener.eventMap;
        }
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpEventListener.<init>():void");
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
            io.sentry.okhttp.SentryOkHttpEventListener$1 r1 = new io.sentry.okhttp.SentryOkHttpEventListener$1
            r1.<init>()
            kotlin.jvm.functions.Function1 r1 = (kotlin.jvm.functions.Function1) r1
            r2.<init>(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpEventListener.<init>(okhttp3.EventListener):void");
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
            io.sentry.okhttp.SentryOkHttpEventListener$2 r1 = new io.sentry.okhttp.SentryOkHttpEventListener$2
            r1.<init>()
            kotlin.jvm.functions.Function1 r1 = (kotlin.jvm.functions.Function1) r1
            r2.<init>(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpEventListener.<init>(okhttp3.EventListener$Factory):void");
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpEventListener.<init>(io.sentry.IHub, okhttp3.EventListener, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryOkHttpEventListener(IHub hub, final EventListener originalEventListener) {
        this(hub, new Function1<Call, EventListener>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener.3
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.okhttp.SentryOkHttpEventListener.<init>(io.sentry.IHub, okhttp3.EventListener$Factory, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryOkHttpEventListener(IHub hub, final EventListener.Factory originalEventListenerFactory) {
        this(hub, new Function1<Call, EventListener>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener.4
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
    public void callStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        Function1<Call, EventListener> function1 = this.originalEventListenerCreator;
        EventListener invoke = function1 != null ? function1.invoke(call) : null;
        this.originalEventListener = invoke;
        if (invoke != null) {
            invoke.callStart(call);
        }
        if (canCreateEventSpan()) {
            eventMap.put(call, new SentryOkHttpEvent(this.hub, call.request()));
        }
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(Call call, HttpUrl url) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.proxySelectStart(call, url);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(PROXY_SELECT_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(Call call, HttpUrl url, final List<? extends Proxy> proxies) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(proxies, "proxies");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.proxySelectEnd(call, url, proxies);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.finishSpan(PROXY_SELECT_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$proxySelectEnd$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (!proxies.isEmpty()) {
                        it.setData("proxies", CollectionsKt.joinToString$default(proxies, null, null, null, 0, null, new Function1<Proxy, CharSequence>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$proxySelectEnd$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public final CharSequence invoke(Proxy proxy) {
                                Intrinsics.checkNotNullParameter(proxy, "proxy");
                                String proxy2 = proxy.toString();
                                Intrinsics.checkNotNullExpressionValue(proxy2, "proxy.toString()");
                                return proxy2;
                            }
                        }, 31, null));
                    }
                }
            });
        }
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String domainName) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.dnsStart(call, domainName);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(DNS_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, final String domainName, final List<? extends InetAddress> inetAddressList) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.dnsEnd(call, domainName, inetAddressList);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.finishSpan(DNS_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$dnsEnd$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.setData("domain_name", domainName);
                    if (!inetAddressList.isEmpty()) {
                        it.setData("dns_addresses", CollectionsKt.joinToString$default(inetAddressList, null, null, null, 0, null, new Function1<InetAddress, CharSequence>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$dnsEnd$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public final CharSequence invoke(InetAddress address) {
                                Intrinsics.checkNotNullParameter(address, "address");
                                String inetAddress = address.toString();
                                Intrinsics.checkNotNullExpressionValue(inetAddress, "address.toString()");
                                return inetAddress;
                            }
                        }, 31, null));
                    }
                }
            });
        }
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.connectStart(call, inetSocketAddress, proxy);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(CONNECT_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.secureConnectStart(call);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(SECURE_CONNECT_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.secureConnectEnd(call, handshake);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            SentryOkHttpEvent.finishSpan$default(sentryOkHttpEvent, SECURE_CONNECT_EVENT, null, 2, null);
        }
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.connectEnd(call, inetSocketAddress, proxy, protocol);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.setProtocol(protocol != null ? protocol.name() : null);
            SentryOkHttpEvent.finishSpan$default(sentryOkHttpEvent, CONNECT_EVENT, null, 2, null);
        }
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, final IOException ioe) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.setProtocol(protocol != null ? protocol.name() : null);
            sentryOkHttpEvent.setError(ioe.getMessage());
            sentryOkHttpEvent.finishSpan(CONNECT_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$connectFailed$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.setThrowable(ioe);
                    it.setStatus(SpanStatus.INTERNAL_ERROR);
                }
            });
        }
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.connectionAcquired(call, connection);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(CONNECTION_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.connectionReleased(call, connection);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            SentryOkHttpEvent.finishSpan$default(sentryOkHttpEvent, CONNECTION_EVENT, null, 2, null);
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.requestHeadersStart(call);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(REQUEST_HEADERS_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, okhttp3.Request request) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.requestHeadersEnd(call, request);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            SentryOkHttpEvent.finishSpan$default(sentryOkHttpEvent, REQUEST_HEADERS_EVENT, null, 2, null);
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.requestBodyStart(call);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(REQUEST_BODY_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, final long byteCount) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.requestBodyEnd(call, byteCount);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.finishSpan(REQUEST_BODY_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$requestBodyEnd$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    long j = byteCount;
                    if (j > 0) {
                        it.setData("http.request_content_length", Long.valueOf(j));
                    }
                }
            });
            sentryOkHttpEvent.setRequestBodySize(byteCount);
        }
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, final IOException ioe) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.requestFailed(call, ioe);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.setError(ioe.getMessage());
            sentryOkHttpEvent.finishSpan(REQUEST_HEADERS_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$requestFailed$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.isFinished()) {
                        return;
                    }
                    it.setStatus(SpanStatus.INTERNAL_ERROR);
                    it.setThrowable(ioe);
                }
            });
            sentryOkHttpEvent.finishSpan(REQUEST_BODY_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$requestFailed$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.setStatus(SpanStatus.INTERNAL_ERROR);
                    it.setThrowable(ioe);
                }
            });
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.responseHeadersStart(call);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(RESPONSE_HEADERS_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, final okhttp3.Response response) {
        SentryOkHttpEvent sentryOkHttpEvent;
        SentryDate now;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.responseHeadersEnd(call, response);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.setResponse(response);
            ISpan finishSpan = sentryOkHttpEvent.finishSpan(RESPONSE_HEADERS_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.setData(SpanDataConvention.HTTP_STATUS_CODE_KEY, Integer.valueOf(okhttp3.Response.this.code()));
                    if (it.getStatus() == null) {
                        it.setStatus(SpanStatus.fromHttpStatusCode(okhttp3.Response.this.code()));
                    }
                }
            });
            if (finishSpan == null || (now = finishSpan.getFinishDate()) == null) {
                now = this.hub.getOptions().getDateProvider().now();
            }
            Intrinsics.checkNotNullExpressionValue(now, "responseHeadersSpan?.fin…ptions.dateProvider.now()");
            sentryOkHttpEvent.scheduleFinish(now);
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.responseBodyStart(call);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.startSpan(RESPONSE_BODY_EVENT);
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, final long byteCount) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.responseBodyEnd(call, byteCount);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.setResponseBodySize(byteCount);
            sentryOkHttpEvent.finishSpan(RESPONSE_BODY_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$responseBodyEnd$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    long j = byteCount;
                    if (j > 0) {
                        it.setData(SpanDataConvention.HTTP_RESPONSE_CONTENT_LENGTH_KEY, Long.valueOf(j));
                    }
                }
            });
        }
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, final IOException ioe) {
        SentryOkHttpEvent sentryOkHttpEvent;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.responseFailed(call, ioe);
        }
        if (canCreateEventSpan() && (sentryOkHttpEvent = eventMap.get(call)) != null) {
            sentryOkHttpEvent.setError(ioe.getMessage());
            sentryOkHttpEvent.finishSpan(RESPONSE_HEADERS_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$responseFailed$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.isFinished()) {
                        return;
                    }
                    it.setStatus(SpanStatus.INTERNAL_ERROR);
                    it.setThrowable(ioe);
                }
            });
            sentryOkHttpEvent.finishSpan(RESPONSE_BODY_EVENT, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$responseFailed$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.setStatus(SpanStatus.INTERNAL_ERROR);
                    it.setThrowable(ioe);
                }
            });
        }
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.callEnd(call);
        }
        SentryOkHttpEvent remove = eventMap.remove(call);
        if (remove == null) {
            return;
        }
        SentryOkHttpEvent.finishEvent$default(remove, null, null, 3, null);
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, final IOException ioe) {
        SentryOkHttpEvent remove;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.callFailed(call, ioe);
        }
        if (canCreateEventSpan() && (remove = eventMap.remove(call)) != null) {
            remove.setError(ioe.getMessage());
            SentryOkHttpEvent.finishEvent$default(remove, null, new Function1<ISpan, Unit>() { // from class: io.sentry.okhttp.SentryOkHttpEventListener$callFailed$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ISpan iSpan) {
                    invoke2(iSpan);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ISpan it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.setStatus(SpanStatus.INTERNAL_ERROR);
                    it.setThrowable(ioe);
                }
            }, 1, null);
        }
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.canceled(call);
        }
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(Call call, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.satisfactionFailure(call, response);
        }
    }

    @Override // okhttp3.EventListener
    public void cacheHit(Call call, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.cacheHit(call, response);
        }
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.cacheMiss(call);
        }
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(Call call, okhttp3.Response cachedResponse) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
        EventListener eventListener = this.originalEventListener;
        if (eventListener != null) {
            eventListener.cacheConditionalHit(call, cachedResponse);
        }
    }

    private final boolean canCreateEventSpan() {
        return !(this.originalEventListener instanceof SentryOkHttpEventListener);
    }
}
