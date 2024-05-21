package io.sentry.android.sqlite;

import android.database.SQLException;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryStackTraceFactory;
import io.sentry.SpanContext;
import io.sentry.SpanDataConvention;
import io.sentry.SpanStatus;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SQLiteSpanManager.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J'\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\r¢\u0006\u0002\u0010\u000eR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lio/sentry/android/sqlite/SQLiteSpanManager;", "", "hub", "Lio/sentry/IHub;", "databaseName", "", "(Lio/sentry/IHub;Ljava/lang/String;)V", "stackTraceFactory", "Lio/sentry/SentryStackTraceFactory;", "performSql", ExifInterface.GPS_DIRECTION_TRUE, "sql", "operation", "Lkotlin/Function0;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "sentry-android-sqlite_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SQLiteSpanManager {
    private final String databaseName;
    private final IHub hub;
    private final SentryStackTraceFactory stackTraceFactory;

    /* JADX WARN: Multi-variable type inference failed */
    public SQLiteSpanManager() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public SQLiteSpanManager(IHub hub, String str) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        this.hub = hub;
        this.databaseName = str;
        this.stackTraceFactory = new SentryStackTraceFactory(hub.getOptions());
        SentryIntegrationPackageStorage.getInstance().addIntegration("SQLite");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SQLiteSpanManager(io.sentry.IHub r1, java.lang.String r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.sqlite.SQLiteSpanManager.<init>(io.sentry.IHub, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final <T> T performSql(String sql, Function0<? extends T> operation) throws SQLException {
        Intrinsics.checkNotNullParameter(sql, "sql");
        Intrinsics.checkNotNullParameter(operation, "operation");
        ISpan span = this.hub.getSpan();
        ISpan startChild = span != null ? span.startChild("db.sql.query", sql) : null;
        SpanContext spanContext = startChild != null ? startChild.getSpanContext() : null;
        if (spanContext != null) {
            spanContext.setOrigin("auto.db.sqlite");
        }
        try {
            T invoke = operation.invoke();
            if (startChild != null) {
                startChild.setStatus(SpanStatus.OK);
            }
            return invoke;
        } catch (Throwable th) {
            if (startChild != null) {
                try {
                    startChild.setStatus(SpanStatus.INTERNAL_ERROR);
                } finally {
                    if (startChild != null) {
                        boolean isMainThread = this.hub.getOptions().getMainThreadChecker().isMainThread();
                        startChild.setData(SpanDataConvention.BLOCKED_MAIN_THREAD_KEY, Boolean.valueOf(isMainThread));
                        if (isMainThread) {
                            startChild.setData(SpanDataConvention.CALL_STACK_KEY, this.stackTraceFactory.getInAppCallStack());
                        }
                        if (this.databaseName != null) {
                            startChild.setData(SpanDataConvention.DB_SYSTEM_KEY, "sqlite");
                            startChild.setData(SpanDataConvention.DB_NAME_KEY, this.databaseName);
                        } else {
                            startChild.setData(SpanDataConvention.DB_SYSTEM_KEY, "in-memory");
                        }
                        startChild.finish();
                    }
                }
            }
            if (startChild != null) {
                startChild.setThrowable(th);
            }
            throw th;
        }
    }
}
