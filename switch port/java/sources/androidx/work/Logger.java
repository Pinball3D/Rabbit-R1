package androidx.work;

import android.util.Log;

/* loaded from: classes2.dex */
public abstract class Logger {
    private static final int MAX_PREFIXED_TAG_LENGTH = 20;
    private static final int MAX_TAG_LENGTH = 23;
    private static final String TAG_PREFIX = "WM-";
    private static final Object sLock = new Object();
    private static volatile Logger sLogger;

    public abstract void debug(String tag, String message);

    public abstract void debug(String tag, String message, Throwable throwable);

    public abstract void error(String tag, String message);

    public abstract void error(String tag, String message, Throwable throwable);

    public abstract void info(String tag, String message);

    public abstract void info(String tag, String message, Throwable throwable);

    public abstract void verbose(String tag, String message);

    public abstract void verbose(String tag, String message, Throwable throwable);

    public abstract void warning(String tag, String message);

    public abstract void warning(String tag, String message, Throwable throwable);

    public static void setLogger(Logger logger) {
        synchronized (sLock) {
            sLogger = logger;
        }
    }

    public static String tagWithPrefix(String tag) {
        int length = tag.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append(TAG_PREFIX);
        int i = MAX_PREFIXED_TAG_LENGTH;
        if (length >= i) {
            sb.append(tag.substring(0, i));
        } else {
            sb.append(tag);
        }
        return sb.toString();
    }

    public static Logger get() {
        Logger logger;
        synchronized (sLock) {
            if (sLogger == null) {
                sLogger = new LogcatLogger(3);
            }
            logger = sLogger;
        }
        return logger;
    }

    public Logger(int loggingLevel) {
    }

    /* loaded from: classes2.dex */
    public static class LogcatLogger extends Logger {
        private final int mLoggingLevel;

        public LogcatLogger(int loggingLevel) {
            super(loggingLevel);
            this.mLoggingLevel = loggingLevel;
        }

        @Override // androidx.work.Logger
        public void verbose(String tag, String message) {
            if (this.mLoggingLevel <= 2) {
                Log.v(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void verbose(String tag, String message, Throwable throwable) {
            if (this.mLoggingLevel <= 2) {
                Log.v(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void debug(String tag, String message) {
            if (this.mLoggingLevel <= 3) {
                Log.d(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void debug(String tag, String message, Throwable throwable) {
            if (this.mLoggingLevel <= 3) {
                Log.d(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void info(String tag, String message) {
            if (this.mLoggingLevel <= 4) {
                Log.i(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void info(String tag, String message, Throwable throwable) {
            if (this.mLoggingLevel <= 4) {
                Log.i(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void warning(String tag, String message) {
            if (this.mLoggingLevel <= 5) {
                Log.w(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void warning(String tag, String message, Throwable throwable) {
            if (this.mLoggingLevel <= 5) {
                Log.w(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void error(String tag, String message) {
            if (this.mLoggingLevel <= 6) {
                Log.e(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void error(String tag, String message, Throwable throwable) {
            if (this.mLoggingLevel <= 6) {
                Log.e(tag, message, throwable);
            }
        }
    }
}
