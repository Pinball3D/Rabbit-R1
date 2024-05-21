package org.mediasoup.droid;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes3.dex */
public class Logger {
    private static LogHandlerInterface logHandler;
    private static long nativeHandler;

    /* loaded from: classes3.dex */
    public interface LogHandlerInterface {
        void OnLog(LogLevel logLevel, String str, String str2);
    }

    private static native void nativeFreeLogHandler(long j);

    private static native long nativeSetHandler(LogHandlerInterface logHandlerInterface);

    private static native void nativeSetLogLevel(int i);

    static {
        System.loadLibrary("mediasoupclient_so");
    }

    /* loaded from: classes3.dex */
    public enum LogLevel {
        LOG_NONE(0),
        LOG_ERROR(1),
        LOG_WARN(2),
        LOG_DEBUG(3),
        LOG_TRACE(4);

        private final int value;

        int getValue() {
            return this.value;
        }

        LogLevel(int i) {
            this.value = i;
        }

        public static LogLevel getLogLevel(int i) {
            LogLevel[] values = values();
            for (int i2 = 0; i2 < values.length; i2++) {
                if (values[i2].getValue() == i) {
                    return values[i2];
                }
            }
            throw new IllegalArgumentException("wrong log level");
        }
    }

    /* loaded from: classes3.dex */
    private static class DefaultLogHandler implements LogHandlerInterface {
        private DefaultLogHandler() {
        }

        /* synthetic */ DefaultLogHandler(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.mediasoup.droid.Logger.LogHandlerInterface
        public void OnLog(LogLevel logLevel, String str, String str2) {
            int i = AnonymousClass1.$SwitchMap$org$mediasoup$droid$Logger$LogLevel[logLevel.ordinal()];
            int i2 = 0;
            if (i == 1) {
                while (i2 < str2.length()) {
                    int i3 = i2 + 2048;
                    Log.e(str, str2.substring(i2, Math.min(str2.length(), i3)));
                    i2 = i3;
                }
                return;
            }
            if (i == 2) {
                while (i2 < str2.length()) {
                    int i4 = i2 + 2048;
                    Log.w(str, str2.substring(i2, Math.min(str2.length(), i4)));
                    i2 = i4;
                }
                return;
            }
            if (i == 3) {
                while (i2 < str2.length()) {
                    int i5 = i2 + 2048;
                    Log.d(str, str2.substring(i2, Math.min(str2.length(), i5)));
                    i2 = i5;
                }
                return;
            }
            if (i != 4) {
                return;
            }
            while (i2 < str2.length()) {
                int i6 = i2 + 2048;
                Log.i(str, str2.substring(i2, Math.min(str2.length(), i6)));
                i2 = i6;
            }
        }
    }

    /* renamed from: org.mediasoup.droid.Logger$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$mediasoup$droid$Logger$LogLevel;

        static {
            int[] iArr = new int[LogLevel.values().length];
            $SwitchMap$org$mediasoup$droid$Logger$LogLevel = iArr;
            try {
                iArr[LogLevel.LOG_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$mediasoup$droid$Logger$LogLevel[LogLevel.LOG_WARN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$mediasoup$droid$Logger$LogLevel[LogLevel.LOG_DEBUG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$mediasoup$droid$Logger$LogLevel[LogLevel.LOG_TRACE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void setLogLevel(LogLevel logLevel) {
        if (logLevel == null) {
            throw new IllegalArgumentException("Logging level may not be null.");
        }
        nativeSetLogLevel(logLevel.getValue());
    }

    public static void setDefaultHandler() {
        setHandler(new DefaultLogHandler(null));
    }

    public static void setHandler(LogHandlerInterface logHandlerInterface) {
        logHandler = logHandlerInterface;
        nativeHandler = nativeSetHandler(logHandlerInterface);
    }

    public static void freeHandler() {
        nativeFreeLogHandler(nativeHandler);
        nativeHandler = 0L;
    }

    public static void d(String str, String str2) {
        log(LogLevel.LOG_DEBUG, str, str2);
    }

    public static void e(String str, String str2) {
        log(LogLevel.LOG_ERROR, str, str2);
    }

    public static void w(String str, String str2) {
        log(LogLevel.LOG_WARN, str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        log(LogLevel.LOG_ERROR, str, str2);
        log(LogLevel.LOG_ERROR, str, th.toString());
        log(LogLevel.LOG_ERROR, str, getStackTraceString(th));
    }

    public static void w(String str, String str2, Throwable th) {
        log(LogLevel.LOG_WARN, str, str2);
        log(LogLevel.LOG_WARN, str, th.toString());
        log(LogLevel.LOG_WARN, str, getStackTraceString(th));
    }

    public static void v(String str, String str2) {
        log(LogLevel.LOG_TRACE, str, str2);
    }

    private static String getStackTraceString(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static void log(LogLevel logLevel, String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("Log tag or message may not be null.");
        }
        LogHandlerInterface logHandlerInterface = logHandler;
        if (logHandlerInterface != null) {
            logHandlerInterface.OnLog(logLevel, str, str2);
        }
    }
}
