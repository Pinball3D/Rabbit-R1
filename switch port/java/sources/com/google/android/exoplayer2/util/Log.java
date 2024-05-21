package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes2.dex */
public final class Log {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_ERROR = 3;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_OFF = Integer.MAX_VALUE;
    public static final int LOG_LEVEL_WARNING = 2;
    private static int logLevel = 0;
    private static boolean logStackTraces = true;
    private static final Object lock = new Object();
    private static Logger logger = Logger.DEFAULT;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface LogLevel {
    }

    /* loaded from: classes2.dex */
    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: com.google.android.exoplayer2.util.Log.Logger.1
            @Override // com.google.android.exoplayer2.util.Log.Logger
            public void d(String str, String str2) {
                android.util.Log.d(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            public void i(String str, String str2) {
                android.util.Log.i(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            public void w(String str, String str2) {
                android.util.Log.w(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            public void e(String str, String str2) {
                android.util.Log.e(str, str2);
            }
        };

        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void w(String str, String str2);
    }

    private Log() {
    }

    @Pure
    public static int getLogLevel() {
        int i;
        synchronized (lock) {
            i = logLevel;
        }
        return i;
    }

    public static void setLogLevel(int i) {
        synchronized (lock) {
            logLevel = i;
        }
    }

    public static void setLogStackTraces(boolean z) {
        synchronized (lock) {
            logStackTraces = z;
        }
    }

    public static void setLogger(Logger logger2) {
        synchronized (lock) {
            logger = logger2;
        }
    }

    @Pure
    public static void d(String str, String str2) {
        synchronized (lock) {
            if (logLevel == 0) {
                logger.d(str, str2);
            }
        }
    }

    @Pure
    public static void d(String str, String str2, Throwable th) {
        d(str, appendThrowableString(str2, th));
    }

    @Pure
    public static void i(String str, String str2) {
        synchronized (lock) {
            if (logLevel <= 1) {
                logger.i(str, str2);
            }
        }
    }

    @Pure
    public static void i(String str, String str2, Throwable th) {
        i(str, appendThrowableString(str2, th));
    }

    @Pure
    public static void w(String str, String str2) {
        synchronized (lock) {
            if (logLevel <= 2) {
                logger.w(str, str2);
            }
        }
    }

    @Pure
    public static void w(String str, String str2, Throwable th) {
        w(str, appendThrowableString(str2, th));
    }

    @Pure
    public static void e(String str, String str2) {
        synchronized (lock) {
            if (logLevel <= 3) {
                logger.e(str, str2);
            }
        }
    }

    @Pure
    public static void e(String str, String str2, Throwable th) {
        e(str, appendThrowableString(str2, th));
    }

    @Pure
    public static String getThrowableString(Throwable th) {
        synchronized (lock) {
            if (th == null) {
                return null;
            }
            if (isCausedByUnknownHostException(th)) {
                return "UnknownHostException (no network)";
            }
            if (!logStackTraces) {
                return th.getMessage();
            }
            return android.util.Log.getStackTraceString(th).trim().replace("\t", "    ");
        }
    }

    @Pure
    private static String appendThrowableString(String str, Throwable th) {
        String throwableString = getThrowableString(th);
        return !TextUtils.isEmpty(throwableString) ? str + "\n  " + throwableString.replace("\n", "\n  ") + '\n' : str;
    }

    @Pure
    private static boolean isCausedByUnknownHostException(Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }
}
