package io.sentry.instrumentation.file;

import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryOptions;
import io.sentry.SentryStackTraceFactory;
import io.sentry.SpanDataConvention;
import io.sentry.SpanStatus;
import io.sentry.util.Platform;
import io.sentry.util.StringUtils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

/* loaded from: classes3.dex */
final class FileIOSpanManager {
    private long byteCount;
    private final ISpan currentSpan;
    private final File file;
    private final SentryOptions options;
    private SpanStatus spanStatus = SpanStatus.OK;
    private final SentryStackTraceFactory stackTraceFactory;

    @FunctionalInterface
    /* loaded from: classes3.dex */
    interface FileIOCallable<T> {
        T call() throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ISpan startSpan(IHub iHub, String str) {
        ISpan transaction = Platform.isAndroid() ? iHub.getTransaction() : iHub.getSpan();
        if (transaction != null) {
            return transaction.startChild(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileIOSpanManager(ISpan iSpan, File file, SentryOptions sentryOptions) {
        this.currentSpan = iSpan;
        this.file = file;
        this.options = sentryOptions;
        this.stackTraceFactory = new SentryStackTraceFactory(sentryOptions);
        SentryIntegrationPackageStorage.getInstance().addIntegration("FileIO");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T performIO(FileIOCallable<T> fileIOCallable) throws IOException {
        try {
            T call = fileIOCallable.call();
            if (call instanceof Integer) {
                int intValue = ((Integer) call).intValue();
                if (intValue != -1) {
                    this.byteCount += intValue;
                }
            } else if (call instanceof Long) {
                long longValue = ((Long) call).longValue();
                if (longValue != -1) {
                    this.byteCount += longValue;
                }
            }
            return call;
        } catch (IOException e) {
            this.spanStatus = SpanStatus.INTERNAL_ERROR;
            ISpan iSpan = this.currentSpan;
            if (iSpan != null) {
                iSpan.setThrowable(e);
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void finish(Closeable closeable) throws IOException {
        try {
            try {
                closeable.close();
            } catch (IOException e) {
                this.spanStatus = SpanStatus.INTERNAL_ERROR;
                if (this.currentSpan != null) {
                    this.currentSpan.setThrowable(e);
                }
                throw e;
            }
        } finally {
            finishSpan();
        }
    }

    private void finishSpan() {
        if (this.currentSpan != null) {
            String byteCountToString = StringUtils.byteCountToString(this.byteCount);
            if (this.file != null) {
                this.currentSpan.setDescription(this.file.getName() + " (" + byteCountToString + ")");
                if (Platform.isAndroid() || this.options.isSendDefaultPii()) {
                    this.currentSpan.setData("file.path", this.file.getAbsolutePath());
                }
            } else {
                this.currentSpan.setDescription(byteCountToString);
            }
            this.currentSpan.setData("file.size", Long.valueOf(this.byteCount));
            boolean isMainThread = this.options.getMainThreadChecker().isMainThread();
            this.currentSpan.setData(SpanDataConvention.BLOCKED_MAIN_THREAD_KEY, Boolean.valueOf(isMainThread));
            if (isMainThread) {
                this.currentSpan.setData(SpanDataConvention.CALL_STACK_KEY, this.stackTraceFactory.getInAppCallStack());
            }
            this.currentSpan.finish(this.spanStatus);
        }
    }
}
