package io.sentry.instrumentation.file;

import io.sentry.IHub;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.OutputStreamWriter;

/* loaded from: classes3.dex */
public final class SentryFileWriter extends OutputStreamWriter {
    public SentryFileWriter(String str) throws FileNotFoundException {
        super(new SentryFileOutputStream(str));
    }

    public SentryFileWriter(String str, boolean z) throws FileNotFoundException {
        super(new SentryFileOutputStream(str, z));
    }

    public SentryFileWriter(File file) throws FileNotFoundException {
        super(new SentryFileOutputStream(file));
    }

    public SentryFileWriter(File file, boolean z) throws FileNotFoundException {
        super(new SentryFileOutputStream(file, z));
    }

    public SentryFileWriter(FileDescriptor fileDescriptor) {
        super(new SentryFileOutputStream(fileDescriptor));
    }

    SentryFileWriter(File file, boolean z, IHub iHub) throws FileNotFoundException {
        super(new SentryFileOutputStream(file, z, iHub));
    }
}
