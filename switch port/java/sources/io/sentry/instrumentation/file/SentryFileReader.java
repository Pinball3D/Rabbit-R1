package io.sentry.instrumentation.file;

import io.sentry.IHub;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;

/* loaded from: classes3.dex */
public final class SentryFileReader extends InputStreamReader {
    public SentryFileReader(String str) throws FileNotFoundException {
        super(new SentryFileInputStream(str));
    }

    public SentryFileReader(File file) throws FileNotFoundException {
        super(new SentryFileInputStream(file));
    }

    public SentryFileReader(FileDescriptor fileDescriptor) {
        super(new SentryFileInputStream(fileDescriptor));
    }

    SentryFileReader(File file, IHub iHub) throws FileNotFoundException {
        super(new SentryFileInputStream(file, iHub));
    }
}
