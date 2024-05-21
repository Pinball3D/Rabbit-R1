package io.sentry.instrumentation.file;

import io.sentry.HubAdapter;
import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.instrumentation.file.FileIOSpanManager;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class SentryFileInputStream extends FileInputStream {
    private final FileInputStream delegate;
    private final FileIOSpanManager spanManager;

    public SentryFileInputStream(String str) throws FileNotFoundException {
        this(str != null ? new File(str) : null, HubAdapter.getInstance());
    }

    public SentryFileInputStream(File file) throws FileNotFoundException {
        this(file, HubAdapter.getInstance());
    }

    public SentryFileInputStream(FileDescriptor fileDescriptor) {
        this(fileDescriptor, HubAdapter.getInstance());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SentryFileInputStream(File file, IHub iHub) throws FileNotFoundException {
        this(init(file, (FileInputStream) null, iHub));
    }

    SentryFileInputStream(FileDescriptor fileDescriptor, IHub iHub) {
        this(init(fileDescriptor, (FileInputStream) null, iHub), fileDescriptor);
    }

    private SentryFileInputStream(FileInputStreamInitData fileInputStreamInitData, FileDescriptor fileDescriptor) {
        super(fileDescriptor);
        this.spanManager = new FileIOSpanManager(fileInputStreamInitData.span, fileInputStreamInitData.file, fileInputStreamInitData.options);
        this.delegate = fileInputStreamInitData.delegate;
    }

    private SentryFileInputStream(FileInputStreamInitData fileInputStreamInitData) throws FileNotFoundException {
        super(getFileDescriptor(fileInputStreamInitData.delegate));
        this.spanManager = new FileIOSpanManager(fileInputStreamInitData.span, fileInputStreamInitData.file, fileInputStreamInitData.options);
        this.delegate = fileInputStreamInitData.delegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FileInputStreamInitData init(File file, FileInputStream fileInputStream, IHub iHub) throws FileNotFoundException {
        ISpan startSpan = FileIOSpanManager.startSpan(iHub, "file.read");
        if (fileInputStream == null) {
            fileInputStream = new FileInputStream(file);
        }
        return new FileInputStreamInitData(file, startSpan, fileInputStream, iHub.getOptions());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FileInputStreamInitData init(FileDescriptor fileDescriptor, FileInputStream fileInputStream, IHub iHub) {
        ISpan startSpan = FileIOSpanManager.startSpan(iHub, "file.read");
        if (fileInputStream == null) {
            fileInputStream = new FileInputStream(fileDescriptor);
        }
        return new FileInputStreamInitData(null, startSpan, fileInputStream, iHub.getOptions());
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public int read() throws IOException {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        this.spanManager.performIO(new FileIOSpanManager.FileIOCallable() { // from class: io.sentry.instrumentation.file.SentryFileInputStream$$ExternalSyntheticLambda0
            @Override // io.sentry.instrumentation.file.FileIOSpanManager.FileIOCallable
            public final Object call() {
                return SentryFileInputStream.this.m5680xfe779029(atomicInteger);
            }
        });
        return atomicInteger.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$read$0$io-sentry-instrumentation-file-SentryFileInputStream, reason: not valid java name */
    public /* synthetic */ Integer m5680xfe779029(AtomicInteger atomicInteger) throws IOException {
        int read = this.delegate.read();
        atomicInteger.set(read);
        return Integer.valueOf(read != -1 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$read$1$io-sentry-instrumentation-file-SentryFileInputStream, reason: not valid java name */
    public /* synthetic */ Integer m5681x18930ec8(byte[] bArr) throws IOException {
        return Integer.valueOf(this.delegate.read(bArr));
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public int read(final byte[] bArr) throws IOException {
        return ((Integer) this.spanManager.performIO(new FileIOSpanManager.FileIOCallable() { // from class: io.sentry.instrumentation.file.SentryFileInputStream$$ExternalSyntheticLambda2
            @Override // io.sentry.instrumentation.file.FileIOSpanManager.FileIOCallable
            public final Object call() {
                return SentryFileInputStream.this.m5681x18930ec8(bArr);
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$read$2$io-sentry-instrumentation-file-SentryFileInputStream, reason: not valid java name */
    public /* synthetic */ Integer m5682x32ae8d67(byte[] bArr, int i, int i2) throws IOException {
        return Integer.valueOf(this.delegate.read(bArr, i, i2));
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public int read(final byte[] bArr, final int i, final int i2) throws IOException {
        return ((Integer) this.spanManager.performIO(new FileIOSpanManager.FileIOCallable() { // from class: io.sentry.instrumentation.file.SentryFileInputStream$$ExternalSyntheticLambda1
            @Override // io.sentry.instrumentation.file.FileIOSpanManager.FileIOCallable
            public final Object call() {
                return SentryFileInputStream.this.m5682x32ae8d67(bArr, i, i2);
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$skip$3$io-sentry-instrumentation-file-SentryFileInputStream, reason: not valid java name */
    public /* synthetic */ Long m5683xe63a8dfd(long j) throws IOException {
        return Long.valueOf(this.delegate.skip(j));
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public long skip(final long j) throws IOException {
        return ((Long) this.spanManager.performIO(new FileIOSpanManager.FileIOCallable() { // from class: io.sentry.instrumentation.file.SentryFileInputStream$$ExternalSyntheticLambda3
            @Override // io.sentry.instrumentation.file.FileIOSpanManager.FileIOCallable
            public final Object call() {
                return SentryFileInputStream.this.m5683xe63a8dfd(j);
            }
        })).longValue();
    }

    @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.spanManager.finish(this.delegate);
    }

    private static FileDescriptor getFileDescriptor(FileInputStream fileInputStream) throws FileNotFoundException {
        try {
            return fileInputStream.getFD();
        } catch (IOException unused) {
            throw new FileNotFoundException("No file descriptor");
        }
    }

    /* loaded from: classes3.dex */
    public static final class Factory {
        public static FileInputStream create(FileInputStream fileInputStream, String str) throws FileNotFoundException {
            return new SentryFileInputStream(SentryFileInputStream.init(str != null ? new File(str) : null, fileInputStream, HubAdapter.getInstance()));
        }

        public static FileInputStream create(FileInputStream fileInputStream, File file) throws FileNotFoundException {
            return new SentryFileInputStream(SentryFileInputStream.init(file, fileInputStream, HubAdapter.getInstance()));
        }

        public static FileInputStream create(FileInputStream fileInputStream, FileDescriptor fileDescriptor) {
            return new SentryFileInputStream(SentryFileInputStream.init(fileDescriptor, fileInputStream, HubAdapter.getInstance()), fileDescriptor);
        }

        static FileInputStream create(FileInputStream fileInputStream, File file, IHub iHub) throws FileNotFoundException {
            return new SentryFileInputStream(SentryFileInputStream.init(file, fileInputStream, iHub));
        }
    }
}
