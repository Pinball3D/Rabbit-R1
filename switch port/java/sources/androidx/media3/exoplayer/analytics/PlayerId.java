package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;

/* loaded from: classes2.dex */
public final class PlayerId {
    public static final PlayerId UNSET;
    private final LogSessionIdApi31 logSessionIdApi31;

    static {
        UNSET = Util.SDK_INT < 31 ? new PlayerId() : new PlayerId(LogSessionIdApi31.UNSET);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PlayerId() {
        this((LogSessionIdApi31) null);
        Assertions.checkState(Util.SDK_INT < 31);
    }

    public PlayerId(LogSessionId logSessionId) {
        this(new LogSessionIdApi31(logSessionId));
    }

    private PlayerId(LogSessionIdApi31 logSessionIdApi31) {
        this.logSessionIdApi31 = logSessionIdApi31;
    }

    public LogSessionId getLogSessionId() {
        return ((LogSessionIdApi31) Assertions.checkNotNull(this.logSessionIdApi31)).logSessionId;
    }

    /* loaded from: classes2.dex */
    private static final class LogSessionIdApi31 {
        public static final LogSessionIdApi31 UNSET = new LogSessionIdApi31(LogSessionId.LOG_SESSION_ID_NONE);
        public final LogSessionId logSessionId;

        public LogSessionIdApi31(LogSessionId logSessionId) {
            this.logSessionId = logSessionId;
        }
    }
}
