package io.sentry.instrumentation.file;

import io.sentry.ISpan;
import io.sentry.SentryOptions;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class FileOutputStreamInitData {
    final boolean append;
    final FileOutputStream delegate;
    final File file;
    final SentryOptions options;
    final ISpan span;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileOutputStreamInitData(File file, boolean z, ISpan iSpan, FileOutputStream fileOutputStream, SentryOptions sentryOptions) {
        this.file = file;
        this.append = z;
        this.span = iSpan;
        this.delegate = fileOutputStream;
        this.options = sentryOptions;
    }
}
