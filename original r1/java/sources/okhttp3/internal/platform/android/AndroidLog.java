package okhttp3.internal.platform.android;

import android.util.Log;
import io.sentry.SentryEvent;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;

/* compiled from: AndroidLog.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J/\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000¢\u0006\u0002\b\u0012J\u0006\u0010\u0013\u001a\u00020\fJ\u0018\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lokhttp3/internal/platform/android/AndroidLog;", "", "()V", "MAX_LOG_LENGTH", "", "configuredLoggers", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Ljava/util/logging/Logger;", "knownLoggers", "", "", "androidLog", "", "loggerName", "logLevel", "message", "t", "", "androidLog$okhttp", "enable", "enableLogging", SentryEvent.JsonKeys.LOGGER, ViewHierarchyNode.JsonKeys.TAG, "loggerTag", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class AndroidLog {
    private static final int MAX_LOG_LENGTH = 4000;
    private static final Map<String, String> knownLoggers;
    public static final AndroidLog INSTANCE = new AndroidLog();
    private static final CopyOnWriteArraySet<Logger> configuredLoggers = new CopyOnWriteArraySet<>();

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r1 = OkHttpClient.class.getPackage();
        String name = r1 != null ? r1.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        LinkedHashMap linkedHashMap2 = linkedHashMap;
        String name2 = OkHttpClient.class.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "OkHttpClient::class.java.name");
        linkedHashMap2.put(name2, "okhttp.OkHttpClient");
        String name3 = Http2.class.getName();
        Intrinsics.checkNotNullExpressionValue(name3, "Http2::class.java.name");
        linkedHashMap2.put(name3, "okhttp.Http2");
        String name4 = TaskRunner.class.getName();
        Intrinsics.checkNotNullExpressionValue(name4, "TaskRunner::class.java.name");
        linkedHashMap2.put(name4, "okhttp.TaskRunner");
        linkedHashMap2.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        knownLoggers = MapsKt.toMap(linkedHashMap2);
    }

    private AndroidLog() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
    
        r10 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void androidLog$okhttp(java.lang.String r7, int r8, java.lang.String r9, java.lang.Throwable r10) {
        /*
            r6 = this;
            java.lang.String r0 = "loggerName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "message"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r6 = r6.loggerTag(r7)
            boolean r7 = android.util.Log.isLoggable(r6, r8)
            if (r7 == 0) goto L6d
            if (r10 == 0) goto L31
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.StringBuilder r7 = r7.append(r9)
            java.lang.String r9 = "\n"
            java.lang.StringBuilder r7 = r7.append(r9)
            java.lang.String r9 = android.util.Log.getStackTraceString(r10)
            java.lang.StringBuilder r7 = r7.append(r9)
            java.lang.String r9 = r7.toString()
        L31:
            int r7 = r9.length()
            r10 = 0
        L36:
            if (r10 >= r7) goto L6d
            r0 = r9
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r1 = 10
            r3 = 0
            r4 = 4
            r5 = 0
            r2 = r10
            int r0 = kotlin.text.StringsKt.indexOf$default(r0, r1, r2, r3, r4, r5)
            r1 = -1
            if (r0 == r1) goto L49
            goto L4a
        L49:
            r0 = r7
        L4a:
            int r1 = r10 + 4000
            int r1 = java.lang.Math.min(r0, r1)
            if (r9 == 0) goto L65
            java.lang.String r10 = r9.substring(r10, r1)
            java.lang.String r2 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r2)
            android.util.Log.println(r8, r6, r10)
            if (r1 < r0) goto L63
            int r10 = r1 + 1
            goto L36
        L63:
            r10 = r1
            goto L4a
        L65:
            java.lang.NullPointerException r6 = new java.lang.NullPointerException
            java.lang.String r7 = "null cannot be cast to non-null type java.lang.String"
            r6.<init>(r7)
            throw r6
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.android.AndroidLog.androidLog$okhttp(java.lang.String, int, java.lang.String, java.lang.Throwable):void");
    }

    private final String loggerTag(String loggerName) {
        String str = knownLoggers.get(loggerName);
        return str != null ? str : StringsKt.take(loggerName, 23);
    }

    public final void enable() {
        for (Map.Entry<String, String> entry : knownLoggers.entrySet()) {
            enableLogging(entry.getKey(), entry.getValue());
        }
    }

    private final void enableLogging(String logger, String tag) {
        Level level;
        Logger logger2 = Logger.getLogger(logger);
        if (configuredLoggers.add(logger2)) {
            Intrinsics.checkNotNullExpressionValue(logger2, "logger");
            logger2.setUseParentHandlers(false);
            if (Log.isLoggable(tag, 3)) {
                level = Level.FINE;
            } else {
                level = Log.isLoggable(tag, 4) ? Level.INFO : Level.WARNING;
            }
            logger2.setLevel(level);
            logger2.addHandler(AndroidLogHandler.INSTANCE);
        }
    }
}
