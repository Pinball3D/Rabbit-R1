package okhttp3.internal.http2;

import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.okhttp.SentryOkHttpEventListener;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.TransactionInfo;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

/* compiled from: Http2Connection.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 \u0099\u00012\u00020\u0001:\b\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010P\u001a\u00020QJ\b\u0010R\u001a\u00020QH\u0016J'\u0010R\u001a\u00020Q2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020T2\b\u0010V\u001a\u0004\u0018\u00010WH\u0000¢\u0006\u0002\bXJ\u0012\u0010Y\u001a\u00020Q2\b\u0010Z\u001a\u0004\u0018\u00010WH\u0002J\u0006\u0010[\u001a\u00020QJ\u0010\u0010\\\u001a\u0004\u0018\u00010B2\u0006\u0010]\u001a\u00020\u0012J\u000e\u0010^\u001a\u00020\t2\u0006\u0010_\u001a\u00020\u0006J&\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tH\u0002J\u001c\u0010`\u001a\u00020B2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tJ\u0006\u0010f\u001a\u00020\u0012J-\u0010g\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020\u00122\u0006\u0010l\u001a\u00020\tH\u0000¢\u0006\u0002\bmJ+\u0010n\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010l\u001a\u00020\tH\u0000¢\u0006\u0002\boJ#\u0010p\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0002\bqJ\u001d\u0010r\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010s\u001a\u00020TH\u0000¢\u0006\u0002\btJ$\u0010u\u001a\u00020B2\u0006\u0010a\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tJ\u0015\u0010v\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u0012H\u0000¢\u0006\u0002\bwJ\u0017\u0010x\u001a\u0004\u0018\u00010B2\u0006\u0010h\u001a\u00020\u0012H\u0000¢\u0006\u0002\byJ\r\u0010z\u001a\u00020QH\u0000¢\u0006\u0002\b{J\u000e\u0010|\u001a\u00020Q2\u0006\u0010}\u001a\u00020&J\u000e\u0010~\u001a\u00020Q2\u0006\u0010\u007f\u001a\u00020TJ\u001e\u0010\u0080\u0001\u001a\u00020Q2\t\b\u0002\u0010\u0081\u0001\u001a\u00020\t2\b\b\u0002\u0010E\u001a\u00020FH\u0007J\u0018\u0010\u0082\u0001\u001a\u00020Q2\u0007\u0010\u0083\u0001\u001a\u00020\u0006H\u0000¢\u0006\u0003\b\u0084\u0001J,\u0010\u0085\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0086\u0001\u001a\u00020\t2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00012\u0006\u0010k\u001a\u00020\u0006J/\u0010\u0089\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0086\u0001\u001a\u00020\t2\r\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0003\b\u008b\u0001J\u0007\u0010\u008c\u0001\u001a\u00020QJ\"\u0010\u008c\u0001\u001a\u00020Q2\u0007\u0010\u008d\u0001\u001a\u00020\t2\u0007\u0010\u008e\u0001\u001a\u00020\u00122\u0007\u0010\u008f\u0001\u001a\u00020\u0012J\u0007\u0010\u0090\u0001\u001a\u00020QJ\u001f\u0010\u0091\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010\u007f\u001a\u00020TH\u0000¢\u0006\u0003\b\u0092\u0001J\u001f\u0010\u0093\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010s\u001a\u00020TH\u0000¢\u0006\u0003\b\u0094\u0001J \u0010\u0095\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0000¢\u0006\u0003\b\u0097\u0001R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001dR\u0011\u0010%\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010(\"\u0004\b+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u001e\u00105\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b6\u00104R\u0015\u00107\u001a\u000608R\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u000e\u0010;\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u00020=X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R \u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020B0AX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u000e\u0010E\u001a\u00020FX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010G\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bH\u00104R\u001e\u0010I\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bJ\u00104R\u0011\u0010K\u001a\u00020L¢\u0006\b\n\u0000\u001a\u0004\bM\u0010NR\u000e\u0010O\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u009c\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "builder", "Lokhttp3/internal/http2/Http2Connection$Builder;", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "awaitPingsSent", "", "awaitPongsReceived", "client", "", "getClient$okhttp", "()Z", "connectionName", "", "getConnectionName$okhttp", "()Ljava/lang/String;", "currentPushRequests", "", "", "degradedPingsSent", "degradedPongDeadlineNs", "degradedPongsReceived", "intervalPingsSent", "intervalPongsReceived", "isShutdown", "lastGoodStreamId", "getLastGoodStreamId$okhttp", "()I", "setLastGoodStreamId$okhttp", "(I)V", "listener", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "nextStreamId", "getNextStreamId$okhttp", "setNextStreamId$okhttp", "okHttpSettings", "Lokhttp3/internal/http2/Settings;", "getOkHttpSettings", "()Lokhttp3/internal/http2/Settings;", "peerSettings", "getPeerSettings", "setPeerSettings", "(Lokhttp3/internal/http2/Settings;)V", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "pushQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "<set-?>", "readBytesAcknowledged", "getReadBytesAcknowledged", "()J", "readBytesTotal", "getReadBytesTotal", "readerRunnable", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "getReaderRunnable", "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "settingsListenerQueue", "socket", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "streams", "", "Lokhttp3/internal/http2/Http2Stream;", "getStreams$okhttp", "()Ljava/util/Map;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "writeBytesMaximum", "getWriteBytesMaximum", "writeBytesTotal", "getWriteBytesTotal", "writer", "Lokhttp3/internal/http2/Http2Writer;", "getWriter", "()Lokhttp3/internal/http2/Http2Writer;", "writerQueue", "awaitPong", "", "close", "connectionCode", "Lokhttp3/internal/http2/ErrorCode;", "streamCode", "cause", "Ljava/io/IOException;", "close$okhttp", "failConnection", "e", "flush", "getStream", "id", "isHealthy", "nowNs", "newStream", "associatedStreamId", "requestHeaders", "", "Lokhttp3/internal/http2/Header;", "out", "openStreamCount", "pushDataLater", "streamId", TransactionInfo.JsonKeys.SOURCE, "Lokio/BufferedSource;", "byteCount", "inFinished", "pushDataLater$okhttp", "pushHeadersLater", "pushHeadersLater$okhttp", "pushRequestLater", "pushRequestLater$okhttp", "pushResetLater", "errorCode", "pushResetLater$okhttp", "pushStream", "pushedStream", "pushedStream$okhttp", "removeStream", "removeStream$okhttp", "sendDegradedPingLater", "sendDegradedPingLater$okhttp", "setSettings", "settings", "shutdown", "statusCode", "start", "sendConnectionPreface", "updateConnectionFlowControl", "read", "updateConnectionFlowControl$okhttp", "writeData", "outFinished", "buffer", "Lokio/Buffer;", "writeHeaders", "alternating", "writeHeaders$okhttp", "writePing", "reply", "payload1", "payload2", "writePingAndAwaitPong", "writeSynReset", "writeSynReset$okhttp", "writeSynResetLater", "writeSynResetLater$okhttp", "writeWindowUpdateLater", "unacknowledgedBytesRead", "writeWindowUpdateLater$okhttp", "Builder", "Companion", "Listener", "ReaderRunnable", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class Http2Connection implements Closeable {
    public static final int AWAIT_PING = 3;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Settings DEFAULT_SETTINGS;
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private long awaitPingsSent;
    private long awaitPongsReceived;
    private final boolean client;
    private final String connectionName;
    private final Set<Integer> currentPushRequests;
    private long degradedPingsSent;
    private long degradedPongDeadlineNs;
    private long degradedPongsReceived;
    private long intervalPingsSent;
    private long intervalPongsReceived;
    private boolean isShutdown;
    private int lastGoodStreamId;
    private final Listener listener;
    private int nextStreamId;
    private final Settings okHttpSettings;
    private Settings peerSettings;
    private final PushObserver pushObserver;
    private final TaskQueue pushQueue;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    private final ReaderRunnable readerRunnable;
    private final TaskQueue settingsListenerQueue;
    private final Socket socket;
    private final Map<Integer, Http2Stream> streams;
    private final TaskRunner taskRunner;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final Http2Writer writer;
    private final TaskQueue writerQueue;

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", "", "()V", "onSettings", "", SentryOkHttpEventListener.CONNECTION_EVENT, "Lokhttp3/internal/http2/Http2Connection;", "settings", "Lokhttp3/internal/http2/Settings;", "onStream", "stream", "Lokhttp3/internal/http2/Http2Stream;", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream stream) throws IOException {
                Intrinsics.checkNotNullParameter(stream, "stream");
                stream.close(ErrorCode.REFUSED_STREAM, null);
            }
        };

        public void onSettings(Http2Connection r1, Settings settings) {
            Intrinsics.checkNotNullParameter(r1, "connection");
            Intrinsics.checkNotNullParameter(settings, "settings");
        }

        public abstract void onStream(Http2Stream stream) throws IOException;
    }

    /* renamed from: getClient$okhttp, reason: from getter */
    public final boolean getClient() {
        return this.client;
    }

    /* renamed from: getConnectionName$okhttp, reason: from getter */
    public final String getConnectionName() {
        return this.connectionName;
    }

    /* renamed from: getLastGoodStreamId$okhttp, reason: from getter */
    public final int getLastGoodStreamId() {
        return this.lastGoodStreamId;
    }

    /* renamed from: getListener$okhttp, reason: from getter */
    public final Listener getListener() {
        return this.listener;
    }

    /* renamed from: getNextStreamId$okhttp, reason: from getter */
    public final int getNextStreamId() {
        return this.nextStreamId;
    }

    public final Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    public final Settings getPeerSettings() {
        return this.peerSettings;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    /* renamed from: getSocket$okhttp, reason: from getter */
    public final Socket getSocket() {
        return this.socket;
    }

    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.streams;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final boolean pushedStream$okhttp(int streamId) {
        return streamId != 0 && (streamId & 1) == 0;
    }

    public final void setLastGoodStreamId$okhttp(int i) {
        this.lastGoodStreamId = i;
    }

    public final void setNextStreamId$okhttp(int i) {
        this.nextStreamId = i;
    }

    public final void setPeerSettings(Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "<set-?>");
        this.peerSettings = settings;
    }

    public final void start() throws IOException {
        start$default(this, false, null, 3, null);
    }

    public final void start(boolean z) throws IOException {
        start$default(this, z, null, 2, null);
    }

    public Http2Connection(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        boolean client = builder.getClient();
        this.client = client;
        this.listener = builder.getListener();
        this.streams = new LinkedHashMap();
        String connectionName$okhttp = builder.getConnectionName$okhttp();
        this.connectionName = connectionName$okhttp;
        this.nextStreamId = builder.getClient() ? 3 : 2;
        TaskRunner taskRunner = builder.getTaskRunner();
        this.taskRunner = taskRunner;
        TaskQueue newQueue = taskRunner.newQueue();
        this.writerQueue = newQueue;
        this.pushQueue = taskRunner.newQueue();
        this.settingsListenerQueue = taskRunner.newQueue();
        this.pushObserver = builder.getPushObserver();
        Settings settings = new Settings();
        if (builder.getClient()) {
            settings.set(7, 16777216);
        }
        Unit unit = Unit.INSTANCE;
        this.okHttpSettings = settings;
        this.peerSettings = DEFAULT_SETTINGS;
        this.writeBytesMaximum = r2.getInitialWindowSize();
        this.socket = builder.getSocket$okhttp();
        this.writer = new Http2Writer(builder.getSink$okhttp(), client);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.getSource$okhttp(), client));
        this.currentPushRequests = new LinkedHashSet();
        if (builder.getPingIntervalMillis() != 0) {
            final long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getPingIntervalMillis());
            final String str = connectionName$okhttp + " ping";
            newQueue.schedule(new Task(str) { // from class: okhttp3.internal.http2.Http2Connection$$special$$inlined$schedule$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    long j;
                    long j2;
                    boolean z;
                    synchronized (this) {
                        long j3 = this.intervalPongsReceived;
                        j = this.intervalPingsSent;
                        if (j3 < j) {
                            z = true;
                        } else {
                            Http2Connection http2Connection = this;
                            j2 = http2Connection.intervalPingsSent;
                            http2Connection.intervalPingsSent = j2 + 1;
                            z = false;
                        }
                    }
                    if (z) {
                        this.failConnection(null);
                        return -1L;
                    }
                    this.writePing(false, 1, 0);
                    return nanos;
                }
            }, nanos);
        }
    }

    public final synchronized int openStreamCount() {
        return this.streams.size();
    }

    public final synchronized Http2Stream getStream(int id) {
        return this.streams.get(Integer.valueOf(id));
    }

    public final synchronized Http2Stream removeStream$okhttp(int streamId) {
        Http2Stream remove;
        remove = this.streams.remove(Integer.valueOf(streamId));
        notifyAll();
        return remove;
    }

    public final synchronized void updateConnectionFlowControl$okhttp(long read) {
        long j = this.readBytesTotal + read;
        this.readBytesTotal = j;
        long j2 = j - this.readBytesAcknowledged;
        if (j2 >= this.okHttpSettings.getInitialWindowSize() / 2) {
            writeWindowUpdateLater$okhttp(0, j2);
            this.readBytesAcknowledged += j2;
        }
    }

    public final Http2Stream pushStream(int associatedStreamId, List<Header> requestHeaders, boolean out) throws IOException {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (!(!this.client)) {
            throw new IllegalStateException("Client cannot push requests.".toString());
        }
        return newStream(associatedStreamId, requestHeaders, out);
    }

    public final Http2Stream newStream(List<Header> requestHeaders, boolean out) throws IOException {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        return newStream(0, requestHeaders, out);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[Catch: all -> 0x0087, TryCatch #0 {, blocks: (B:6:0x0007, B:8:0x000e, B:9:0x0013, B:11:0x0017, B:13:0x002a, B:15:0x0032, B:19:0x0042, B:21:0x0048, B:22:0x0051, B:38:0x007f, B:39:0x0086), top: B:5:0x0007, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final okhttp3.internal.http2.Http2Stream newStream(int r11, java.util.List<okhttp3.internal.http2.Header> r12, boolean r13) throws java.io.IOException {
        /*
            r10 = this;
            r6 = r13 ^ 1
            r4 = 0
            okhttp3.internal.http2.Http2Writer r7 = r10.writer
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L8a
            int r0 = r10.nextStreamId     // Catch: java.lang.Throwable -> L87
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L13
            okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.REFUSED_STREAM     // Catch: java.lang.Throwable -> L87
            r10.shutdown(r0)     // Catch: java.lang.Throwable -> L87
        L13:
            boolean r0 = r10.isShutdown     // Catch: java.lang.Throwable -> L87
            if (r0 != 0) goto L7f
            int r8 = r10.nextStreamId     // Catch: java.lang.Throwable -> L87
            int r0 = r8 + 2
            r10.nextStreamId = r0     // Catch: java.lang.Throwable -> L87
            okhttp3.internal.http2.Http2Stream r9 = new okhttp3.internal.http2.Http2Stream     // Catch: java.lang.Throwable -> L87
            r5 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L87
            r0 = 1
            if (r13 == 0) goto L41
            long r1 = r10.writeBytesTotal     // Catch: java.lang.Throwable -> L87
            long r3 = r10.writeBytesMaximum     // Catch: java.lang.Throwable -> L87
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 >= 0) goto L41
            long r1 = r9.getWriteBytesTotal()     // Catch: java.lang.Throwable -> L87
            long r3 = r9.getWriteBytesMaximum()     // Catch: java.lang.Throwable -> L87
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 < 0) goto L3f
            goto L41
        L3f:
            r13 = 0
            goto L42
        L41:
            r13 = r0
        L42:
            boolean r1 = r9.isOpen()     // Catch: java.lang.Throwable -> L87
            if (r1 == 0) goto L51
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r1 = r10.streams     // Catch: java.lang.Throwable -> L87
            java.lang.Integer r2 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L87
            r1.put(r2, r9)     // Catch: java.lang.Throwable -> L87
        L51:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L87
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L8a
            if (r11 != 0) goto L5c
            okhttp3.internal.http2.Http2Writer r11 = r10.writer     // Catch: java.lang.Throwable -> L8a
            r11.headers(r6, r8, r12)     // Catch: java.lang.Throwable -> L8a
            goto L66
        L5c:
            boolean r1 = r10.client     // Catch: java.lang.Throwable -> L8a
            r0 = r0 ^ r1
            if (r0 == 0) goto L71
            okhttp3.internal.http2.Http2Writer r0 = r10.writer     // Catch: java.lang.Throwable -> L8a
            r0.pushPromise(r11, r8, r12)     // Catch: java.lang.Throwable -> L8a
        L66:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L8a
            monitor-exit(r7)
            if (r13 == 0) goto L70
            okhttp3.internal.http2.Http2Writer r10 = r10.writer
            r10.flush()
        L70:
            return r9
        L71:
            java.lang.String r10 = "client streams shouldn't have associated stream IDs"
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L8a
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> L8a
            r11.<init>(r10)     // Catch: java.lang.Throwable -> L8a
            java.lang.Throwable r11 = (java.lang.Throwable) r11     // Catch: java.lang.Throwable -> L8a
            throw r11     // Catch: java.lang.Throwable -> L8a
        L7f:
            okhttp3.internal.http2.ConnectionShutdownException r11 = new okhttp3.internal.http2.ConnectionShutdownException     // Catch: java.lang.Throwable -> L87
            r11.<init>()     // Catch: java.lang.Throwable -> L87
            java.lang.Throwable r11 = (java.lang.Throwable) r11     // Catch: java.lang.Throwable -> L87
            throw r11     // Catch: java.lang.Throwable -> L87
        L87:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L8a
            throw r11     // Catch: java.lang.Throwable -> L8a
        L8a:
            r10 = move-exception
            monitor-exit(r7)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.newStream(int, java.util.List, boolean):okhttp3.internal.http2.Http2Stream");
    }

    public final void writeHeaders$okhttp(int streamId, boolean outFinished, List<Header> alternating) throws IOException {
        Intrinsics.checkNotNullParameter(alternating, "alternating");
        this.writer.headers(outFinished, streamId, alternating);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
    
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.writer.getMaxFrameSize());
        r6 = r2;
        r8.writeBytesTotal += r6;
        r4 = kotlin.Unit.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeData(int r9, boolean r10, okio.Buffer r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            okhttp3.internal.http2.Http2Writer r8 = r8.writer
            r8.data(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L73
            monitor-enter(r8)
        L12:
            long r4 = r8.writeBytesTotal     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            long r6 = r8.writeBytesMaximum     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L37
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r2 = r8.streams     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            if (r2 == 0) goto L2d
            r2 = r8
            java.lang.Object r2 = (java.lang.Object) r2     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            r2.wait()     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            goto L12
        L2d:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            java.lang.Throwable r9 = (java.lang.Throwable) r9     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
            throw r9     // Catch: java.lang.Throwable -> L60 java.lang.InterruptedException -> L62
        L37:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L60
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L60
            okhttp3.internal.http2.Http2Writer r4 = r8.writer     // Catch: java.lang.Throwable -> L60
            int r4 = r4.getMaxFrameSize()     // Catch: java.lang.Throwable -> L60
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L60
            long r4 = r8.writeBytesTotal     // Catch: java.lang.Throwable -> L60
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L60
            long r4 = r4 + r6
            r8.writeBytesTotal = r4     // Catch: java.lang.Throwable -> L60
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L60
            monitor-exit(r8)
            long r12 = r12 - r6
            okhttp3.internal.http2.Http2Writer r4 = r8.writer
            if (r10 == 0) goto L5b
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L5b
            r5 = 1
            goto L5c
        L5b:
            r5 = r3
        L5c:
            r4.data(r5, r9, r11, r2)
            goto Ld
        L60:
            r9 = move-exception
            goto L71
        L62:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L60
            r9.interrupt()     // Catch: java.lang.Throwable -> L60
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L60
            r9.<init>()     // Catch: java.lang.Throwable -> L60
            java.lang.Throwable r9 = (java.lang.Throwable) r9     // Catch: java.lang.Throwable -> L60
            throw r9     // Catch: java.lang.Throwable -> L60
        L71:
            monitor-exit(r8)
            throw r9
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    public final void writeSynResetLater$okhttp(final int streamId, final ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        TaskQueue taskQueue = this.writerQueue;
        final String str = this.connectionName + '[' + streamId + "] writeSynReset";
        final boolean z = true;
        taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.writeSynReset$okhttp(streamId, errorCode);
                    return -1L;
                } catch (IOException e) {
                    this.failConnection(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void writeSynReset$okhttp(int streamId, ErrorCode statusCode) throws IOException {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        this.writer.rstStream(streamId, statusCode);
    }

    public final void writeWindowUpdateLater$okhttp(final int streamId, final long unacknowledgedBytesRead) {
        TaskQueue taskQueue = this.writerQueue;
        final String str = this.connectionName + '[' + streamId + "] windowUpdate";
        final boolean z = true;
        taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.getWriter().windowUpdate(streamId, unacknowledgedBytesRead);
                    return -1L;
                } catch (IOException e) {
                    this.failConnection(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void writePing(boolean reply, int payload1, int payload2) {
        try {
            this.writer.ping(reply, payload1, payload2);
        } catch (IOException e) {
            failConnection(e);
        }
    }

    public final void writePingAndAwaitPong() throws InterruptedException {
        writePing();
        awaitPong();
    }

    public final void writePing() throws InterruptedException {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }

    public final void flush() throws IOException {
        this.writer.flush();
    }

    public final void shutdown(ErrorCode statusCode) throws IOException {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    return;
                }
                this.isShutdown = true;
                int i = this.lastGoodStreamId;
                Unit unit = Unit.INSTANCE;
                this.writer.goAway(i, statusCode, Util.EMPTY_BYTE_ARRAY);
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void failConnection(IOException e) {
        close$okhttp(ErrorCode.PROTOCOL_ERROR, ErrorCode.PROTOCOL_ERROR, e);
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z, TaskRunner taskRunner, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            taskRunner = TaskRunner.INSTANCE;
        }
        http2Connection.start(z, taskRunner);
    }

    public final void start(boolean sendConnectionPreface, TaskRunner taskRunner) throws IOException {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        if (sendConnectionPreface) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            if (this.okHttpSettings.getInitialWindowSize() != 65535) {
                this.writer.windowUpdate(0, r7 - 65535);
            }
        }
        TaskQueue newQueue = taskRunner.newQueue();
        String str = this.connectionName;
        newQueue.schedule(new TaskQueue$execute$1(this.readerRunnable, str, true, str, true), 0L);
    }

    public final void setSettings(Settings settings) throws IOException {
        Intrinsics.checkNotNullParameter(settings, "settings");
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
                Unit unit = Unit.INSTANCE;
            }
            this.writer.settings(settings);
            Unit unit2 = Unit.INSTANCE;
        }
    }

    public final synchronized boolean isHealthy(long nowNs) {
        if (this.isShutdown) {
            return false;
        }
        if (this.degradedPongsReceived < this.degradedPingsSent) {
            if (nowNs >= this.degradedPongDeadlineNs) {
                return false;
            }
        }
        return true;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            long j = this.degradedPongsReceived;
            long j2 = this.degradedPingsSent;
            if (j < j2) {
                return;
            }
            this.degradedPingsSent = j2 + 1;
            this.degradedPongDeadlineNs = System.nanoTime() + 1000000000;
            Unit unit = Unit.INSTANCE;
            TaskQueue taskQueue = this.writerQueue;
            final String str = this.connectionName + " ping";
            final boolean z = true;
            taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.writePing(false, 2, 0);
                    return -1L;
                }
            }, 0L);
        }
    }

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u00107\u001a\u000208J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ.\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\b\b\u0002\u00109\u001a\u00020\f2\b\b\u0002\u0010/\u001a\u0002002\b\b\u0002\u0010#\u001a\u00020$H\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020*X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010/\u001a\u000200X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", "", "client", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "getClient$okhttp", "()Z", "setClient$okhttp", "(Z)V", "connectionName", "", "getConnectionName$okhttp", "()Ljava/lang/String;", "setConnectionName$okhttp", "(Ljava/lang/String;)V", "listener", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "setListener$okhttp", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "pingIntervalMillis", "", "getPingIntervalMillis$okhttp", "()I", "setPingIntervalMillis$okhttp", "(I)V", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "getPushObserver$okhttp", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "sink", "Lokio/BufferedSink;", "getSink$okhttp", "()Lokio/BufferedSink;", "setSink$okhttp", "(Lokio/BufferedSink;)V", "socket", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "setSocket$okhttp", "(Ljava/net/Socket;)V", TransactionInfo.JsonKeys.SOURCE, "Lokio/BufferedSource;", "getSource$okhttp", "()Lokio/BufferedSource;", "setSource$okhttp", "(Lokio/BufferedSource;)V", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", OperatingSystem.JsonKeys.BUILD, "Lokhttp3/internal/http2/Http2Connection;", "peerName", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {
        private boolean client;
        public String connectionName;
        private Listener listener;
        private int pingIntervalMillis;
        private PushObserver pushObserver;
        public BufferedSink sink;
        public Socket socket;
        public BufferedSource source;
        private final TaskRunner taskRunner;

        /* renamed from: getClient$okhttp, reason: from getter */
        public final boolean getClient() {
            return this.client;
        }

        /* renamed from: getListener$okhttp, reason: from getter */
        public final Listener getListener() {
            return this.listener;
        }

        /* renamed from: getPingIntervalMillis$okhttp, reason: from getter */
        public final int getPingIntervalMillis() {
            return this.pingIntervalMillis;
        }

        /* renamed from: getPushObserver$okhttp, reason: from getter */
        public final PushObserver getPushObserver() {
            return this.pushObserver;
        }

        /* renamed from: getTaskRunner$okhttp, reason: from getter */
        public final TaskRunner getTaskRunner() {
            return this.taskRunner;
        }

        public final void setClient$okhttp(boolean z) {
            this.client = z;
        }

        public final void setConnectionName$okhttp(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.connectionName = str;
        }

        public final void setListener$okhttp(Listener listener) {
            Intrinsics.checkNotNullParameter(listener, "<set-?>");
            this.listener = listener;
        }

        public final void setPingIntervalMillis$okhttp(int i) {
            this.pingIntervalMillis = i;
        }

        public final void setPushObserver$okhttp(PushObserver pushObserver) {
            Intrinsics.checkNotNullParameter(pushObserver, "<set-?>");
            this.pushObserver = pushObserver;
        }

        public final void setSink$okhttp(BufferedSink bufferedSink) {
            Intrinsics.checkNotNullParameter(bufferedSink, "<set-?>");
            this.sink = bufferedSink;
        }

        public final void setSocket$okhttp(Socket socket) {
            Intrinsics.checkNotNullParameter(socket, "<set-?>");
            this.socket = socket;
        }

        public final void setSource$okhttp(BufferedSource bufferedSource) {
            Intrinsics.checkNotNullParameter(bufferedSource, "<set-?>");
            this.source = bufferedSource;
        }

        public final Builder socket(Socket socket) throws IOException {
            return socket$default(this, socket, null, null, null, 14, null);
        }

        public final Builder socket(Socket socket, String str) throws IOException {
            return socket$default(this, socket, str, null, null, 12, null);
        }

        public final Builder socket(Socket socket, String str, BufferedSource bufferedSource) throws IOException {
            return socket$default(this, socket, str, bufferedSource, null, 8, null);
        }

        public Builder(boolean z, TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            this.client = z;
            this.taskRunner = taskRunner;
            this.listener = Listener.REFUSE_INCOMING_STREAMS;
            this.pushObserver = PushObserver.CANCEL;
        }

        public final Socket getSocket$okhttp() {
            Socket socket = this.socket;
            if (socket == null) {
                Intrinsics.throwUninitializedPropertyAccessException("socket");
            }
            return socket;
        }

        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            }
            return str;
        }

        public final BufferedSource getSource$okhttp() {
            BufferedSource bufferedSource = this.source;
            if (bufferedSource == null) {
                Intrinsics.throwUninitializedPropertyAccessException(TransactionInfo.JsonKeys.SOURCE);
            }
            return bufferedSource;
        }

        public final BufferedSink getSink$okhttp() {
            BufferedSink bufferedSink = this.sink;
            if (bufferedSink == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sink");
            }
            return bufferedSink;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink, int i, Object obj) throws IOException {
            if ((i & 2) != 0) {
                str = Util.peerName(socket);
            }
            if ((i & 4) != 0) {
                bufferedSource = Okio.buffer(Okio.source(socket));
            }
            if ((i & 8) != 0) {
                bufferedSink = Okio.buffer(Okio.sink(socket));
            }
            return builder.socket(socket, str, bufferedSource, bufferedSink);
        }

        public final Builder socket(Socket socket, String peerName, BufferedSource r4, BufferedSink sink) throws IOException {
            String str;
            Intrinsics.checkNotNullParameter(socket, "socket");
            Intrinsics.checkNotNullParameter(peerName, "peerName");
            Intrinsics.checkNotNullParameter(r4, "source");
            Intrinsics.checkNotNullParameter(sink, "sink");
            this.socket = socket;
            if (this.client) {
                str = Util.okHttpName + ' ' + peerName;
            } else {
                str = "MockWebServer " + peerName;
            }
            this.connectionName = str;
            this.source = r4;
            this.sink = sink;
            return this;
        }

        public final Builder listener(Listener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.listener = listener;
            return this;
        }

        public final Builder pushObserver(PushObserver pushObserver) {
            Intrinsics.checkNotNullParameter(pushObserver, "pushObserver");
            this.pushObserver = pushObserver;
            return this;
        }

        public final Builder pingIntervalMillis(int pingIntervalMillis) {
            this.pingIntervalMillis = pingIntervalMillis;
            return this;
        }

        public final Http2Connection build() {
            return new Http2Connection(this);
        }
    }

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0003H\u0016J8\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\fH\u0016J \u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0010H\u0016J.\u0010$\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010%\u001a\u00020\f2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\t\u0010)\u001a\u00020\u0003H\u0096\u0002J \u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020\fH\u0016J(\u0010.\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020\f2\u0006\u00101\u001a\u00020\u0017H\u0016J&\u00102\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00103\u001a\u00020\f2\f\u00104\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\u0018\u00105\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u00106\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00107\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u00068"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", "", "reader", "Lokhttp3/internal/http2/Http2Reader;", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", "ackSettings", "alternateService", "streamId", "", "origin", "", "protocol", "Lokio/ByteString;", "host", "port", "maxAge", "", "applyAndAckSettings", "clearPrevious", "", "settings", "Lokhttp3/internal/http2/Settings;", "data", "inFinished", TransactionInfo.JsonKeys.SOURCE, "Lokio/BufferedSource;", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "goAway", "lastGoodStreamId", "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "debugData", "headers", "associatedStreamId", "headerBlock", "", "Lokhttp3/internal/http2/Header;", "invoke", "ping", "ack", "payload1", "payload2", SentryThread.JsonKeys.PRIORITY, "streamDependency", "weight", "exclusive", "pushPromise", "promisedStreamId", "requestHeaders", "rstStream", "windowUpdate", "windowSizeIncrement", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {
        private final Http2Reader reader;
        final /* synthetic */ Http2Connection this$0;

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int streamId, String origin, ByteString protocol, String host, int port, long maxAge) {
            Intrinsics.checkNotNullParameter(origin, "origin");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Intrinsics.checkNotNullParameter(host, "host");
        }

        /* renamed from: getReader$okhttp, reason: from getter */
        public final Http2Reader getReader() {
            return this.reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i, int i2, int i3, boolean z) {
        }

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = http2Connection;
            this.reader = reader;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v5, types: [java.io.Closeable] */
        /* renamed from: invoke */
        public void invoke2() {
            ErrorCode errorCode = ErrorCode.INTERNAL_ERROR;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e = null;
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    do {
                    } while (this.reader.nextFrame(false, this));
                    errorCode = ErrorCode.NO_ERROR;
                    errorCode2 = ErrorCode.CANCEL;
                } catch (IOException e2) {
                    e = e2;
                    errorCode = ErrorCode.PROTOCOL_ERROR;
                    errorCode2 = ErrorCode.PROTOCOL_ERROR;
                }
            } finally {
                this.this$0.close$okhttp(errorCode, errorCode2, e);
                Util.closeQuietly(this.reader);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean inFinished, int streamId, BufferedSource r4, int r5) throws IOException {
            Intrinsics.checkNotNullParameter(r4, "source");
            if (this.this$0.pushedStream$okhttp(streamId)) {
                this.this$0.pushDataLater$okhttp(streamId, r4, r5, inFinished);
                return;
            }
            Http2Stream stream = this.this$0.getStream(streamId);
            if (stream == null) {
                this.this$0.writeSynResetLater$okhttp(streamId, ErrorCode.PROTOCOL_ERROR);
                long j = r5;
                this.this$0.updateConnectionFlowControl$okhttp(j);
                r4.skip(j);
                return;
            }
            stream.receiveData(r4, r5);
            if (inFinished) {
                stream.receiveHeaders(Util.EMPTY_HEADERS, true);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(final boolean inFinished, final int streamId, int associatedStreamId, final List<Header> headerBlock) {
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.this$0.pushedStream$okhttp(streamId)) {
                this.this$0.pushHeadersLater$okhttp(streamId, headerBlock, inFinished);
                return;
            }
            synchronized (this.this$0) {
                final Http2Stream stream = this.this$0.getStream(streamId);
                if (stream == null) {
                    if (this.this$0.isShutdown) {
                        return;
                    }
                    if (streamId <= this.this$0.getLastGoodStreamId()) {
                        return;
                    }
                    if (streamId % 2 == this.this$0.getNextStreamId() % 2) {
                        return;
                    }
                    final Http2Stream http2Stream = new Http2Stream(streamId, this.this$0, false, inFinished, Util.toHeaders(headerBlock));
                    this.this$0.setLastGoodStreamId$okhttp(streamId);
                    this.this$0.getStreams$okhttp().put(Integer.valueOf(streamId), http2Stream);
                    TaskQueue newQueue = this.this$0.taskRunner.newQueue();
                    final String str = this.this$0.getConnectionName() + '[' + streamId + "] onStream";
                    final boolean z = true;
                    newQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1
                        @Override // okhttp3.internal.concurrent.Task
                        public long runOnce() {
                            try {
                                this.this$0.getListener().onStream(http2Stream);
                                return -1L;
                            } catch (IOException e) {
                                Platform.INSTANCE.get().log("Http2Connection.Listener failure for " + this.this$0.getConnectionName(), 4, e);
                                try {
                                    http2Stream.close(ErrorCode.PROTOCOL_ERROR, e);
                                    return -1L;
                                } catch (IOException unused) {
                                    return -1L;
                                }
                            }
                        }
                    }, 0L);
                    return;
                }
                Unit unit = Unit.INSTANCE;
                stream.receiveHeaders(Util.toHeaders(headerBlock), inFinished);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int streamId, ErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            if (this.this$0.pushedStream$okhttp(streamId)) {
                this.this$0.pushResetLater$okhttp(streamId, errorCode);
                return;
            }
            Http2Stream removeStream$okhttp = this.this$0.removeStream$okhttp(streamId);
            if (removeStream$okhttp != null) {
                removeStream$okhttp.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(final boolean clearPrevious, final Settings settings) {
            Intrinsics.checkNotNullParameter(settings, "settings");
            TaskQueue taskQueue = this.this$0.writerQueue;
            final String str = this.this$0.getConnectionName() + " applyAndAckSettings";
            final boolean z = true;
            taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.applyAndAckSettings(clearPrevious, settings);
                    return -1L;
                }
            }, 0L);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:(2:15|(10:17|18|19|20|21|22|23|24|25|26)(2:51|52))|20|21|22|23|24|25|26) */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00e0, code lost:
        
            r21.this$0.failConnection(r0);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void applyAndAckSettings(final boolean r22, final okhttp3.internal.http2.Settings r23) {
            /*
                Method dump skipped, instructions count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.applyAndAckSettings(boolean, okhttp3.internal.http2.Settings):void");
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean ack, final int payload1, final int payload2) {
            if (!ack) {
                TaskQueue taskQueue = this.this$0.writerQueue;
                final String str = this.this$0.getConnectionName() + " ping";
                final boolean z = true;
                taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$1
                    @Override // okhttp3.internal.concurrent.Task
                    public long runOnce() {
                        this.this$0.writePing(true, payload1, payload2);
                        return -1L;
                    }
                }, 0L);
                return;
            }
            synchronized (this.this$0) {
                if (payload1 == 1) {
                    Http2Connection http2Connection = this.this$0;
                    long j = http2Connection.intervalPongsReceived;
                    http2Connection.intervalPongsReceived = 1 + j;
                    Long.valueOf(j);
                } else if (payload1 == 2) {
                    Http2Connection http2Connection2 = this.this$0;
                    long j2 = http2Connection2.degradedPongsReceived;
                    http2Connection2.degradedPongsReceived = 1 + j2;
                    Long.valueOf(j2);
                } else {
                    if (payload1 == 3) {
                        this.this$0.awaitPongsReceived++;
                        Http2Connection http2Connection3 = this.this$0;
                        if (http2Connection3 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                        }
                        http2Connection3.notifyAll();
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int lastGoodStreamId, ErrorCode errorCode, ByteString debugData) {
            int i;
            Http2Stream[] http2StreamArr;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(debugData, "debugData");
            debugData.size();
            synchronized (this.this$0) {
                Object[] array = this.this$0.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                if (array != null) {
                    http2StreamArr = (Http2Stream[]) array;
                    this.this$0.isShutdown = true;
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > lastGoodStreamId && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.this$0.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int streamId, long windowSizeIncrement) {
            if (streamId == 0) {
                synchronized (this.this$0) {
                    Http2Connection http2Connection = this.this$0;
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + windowSizeIncrement;
                    Http2Connection http2Connection2 = this.this$0;
                    if (http2Connection2 != null) {
                        http2Connection2.notifyAll();
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                }
                return;
            }
            Http2Stream stream = this.this$0.getStream(streamId);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(windowSizeIncrement);
                    Unit unit2 = Unit.INSTANCE;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int streamId, int promisedStreamId, List<Header> requestHeaders) {
            Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
            this.this$0.pushRequestLater$okhttp(promisedStreamId, requestHeaders);
        }
    }

    public final void pushRequestLater$okhttp(final int streamId, final List<Header> requestHeaders) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(streamId))) {
                writeSynResetLater$okhttp(streamId, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(streamId));
            TaskQueue taskQueue = this.pushQueue;
            final String str = this.connectionName + '[' + streamId + "] onRequest";
            final boolean z = true;
            taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    PushObserver pushObserver;
                    Set set;
                    pushObserver = this.pushObserver;
                    if (!pushObserver.onRequest(streamId, requestHeaders)) {
                        return -1L;
                    }
                    try {
                        this.getWriter().rstStream(streamId, ErrorCode.CANCEL);
                        synchronized (this) {
                            set = this.currentPushRequests;
                            set.remove(Integer.valueOf(streamId));
                        }
                        return -1L;
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
            }, 0L);
        }
    }

    public final void pushHeadersLater$okhttp(final int streamId, final List<Header> requestHeaders, final boolean inFinished) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + '[' + streamId + "] onHeaders";
        final boolean z = true;
        taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.pushObserver;
                boolean onHeaders = pushObserver.onHeaders(streamId, requestHeaders, inFinished);
                if (onHeaders) {
                    try {
                        this.getWriter().rstStream(streamId, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
                if (!onHeaders && !inFinished) {
                    return -1L;
                }
                synchronized (this) {
                    set = this.currentPushRequests;
                    set.remove(Integer.valueOf(streamId));
                }
                return -1L;
            }
        }, 0L);
    }

    public final void pushDataLater$okhttp(final int streamId, BufferedSource r13, final int byteCount, final boolean inFinished) throws IOException {
        Intrinsics.checkNotNullParameter(r13, "source");
        final Buffer buffer = new Buffer();
        long j = byteCount;
        r13.require(j);
        r13.read(buffer, j);
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + '[' + streamId + "] onData";
        final boolean z = true;
        taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                PushObserver pushObserver;
                Set set;
                try {
                    pushObserver = this.pushObserver;
                    boolean onData = pushObserver.onData(streamId, buffer, byteCount, inFinished);
                    if (onData) {
                        this.getWriter().rstStream(streamId, ErrorCode.CANCEL);
                    }
                    if (!onData && !inFinished) {
                        return -1L;
                    }
                    synchronized (this) {
                        set = this.currentPushRequests;
                        set.remove(Integer.valueOf(streamId));
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void pushResetLater$okhttp(final int streamId, final ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + '[' + streamId + "] onReset";
        final boolean z = true;
        taskQueue.schedule(new Task(str, z) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.pushObserver;
                pushObserver.onReset(streamId, errorCode);
                synchronized (this) {
                    set = this.currentPushRequests;
                    set.remove(Integer.valueOf(streamId));
                    Unit unit = Unit.INSTANCE;
                }
                return -1L;
            }
        }, 0L);
    }

    /* compiled from: Http2Connection.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", "", "()V", "AWAIT_PING", "", "DEFAULT_SETTINGS", "Lokhttp3/internal/http2/Settings;", "getDEFAULT_SETTINGS", "()Lokhttp3/internal/http2/Settings;", "DEGRADED_PING", "DEGRADED_PONG_TIMEOUT_NS", "INTERVAL_PING", "OKHTTP_CLIENT_WINDOW_SIZE", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Settings getDEFAULT_SETTINGS() {
            return Http2Connection.DEFAULT_SETTINGS;
        }
    }

    static {
        Settings settings = new Settings();
        settings.set(7, 65535);
        settings.set(5, 16384);
        DEFAULT_SETTINGS = settings;
    }

    public final synchronized void awaitPong() throws InterruptedException {
        while (this.awaitPongsReceived < this.awaitPingsSent) {
            wait();
        }
    }

    public final void close$okhttp(ErrorCode connectionCode, ErrorCode streamCode, IOException cause) {
        int i;
        Intrinsics.checkNotNullParameter(connectionCode, "connectionCode");
        Intrinsics.checkNotNullParameter(streamCode, "streamCode");
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            try {
                shutdown(connectionCode);
            } catch (IOException unused) {
            }
            Http2Stream[] http2StreamArr = null;
            synchronized (this) {
                if (!this.streams.isEmpty()) {
                    Object[] array = this.streams.values().toArray(new Http2Stream[0]);
                    if (array != null) {
                        http2StreamArr = (Http2Stream[]) array;
                        this.streams.clear();
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
            if (http2StreamArr != null) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    try {
                        http2Stream.close(streamCode, cause);
                    } catch (IOException unused2) {
                    }
                }
            }
            try {
                this.writer.close();
            } catch (IOException unused3) {
            }
            try {
                this.socket.close();
            } catch (IOException unused4) {
            }
            this.writerQueue.shutdown();
            this.pushQueue.shutdown();
            this.settingsListenerQueue.shutdown();
            return;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST NOT hold lock on ").append(this).toString());
    }
}
