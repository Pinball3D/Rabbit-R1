package io.sentry.instrumentation.file;

import io.sentry.HubAdapter;
import io.sentry.IHub;
import io.sentry.ISpan;
import io.sentry.instrumentation.file.FileIOSpanManager;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class SentryFileOutputStream extends FileOutputStream {
    private final FileOutputStream delegate;
    private final FileIOSpanManager spanManager;

    public SentryFileOutputStream(String str) throws FileNotFoundException {
        this(str != null ? new File(str) : null, false, (IHub) HubAdapter.getInstance());
    }

    public SentryFileOutputStream(String str, boolean z) throws FileNotFoundException {
        this(init(str != null ? new File(str) : null, z, null, HubAdapter.getInstance()));
    }

    public SentryFileOutputStream(File file) throws FileNotFoundException {
        this(file, false, (IHub) HubAdapter.getInstance());
    }

    public SentryFileOutputStream(File file, boolean z) throws FileNotFoundException {
        this(init(file, z, null, HubAdapter.getInstance()));
    }

    public SentryFileOutputStream(FileDescriptor fileDescriptor) {
        this(init(fileDescriptor, null, HubAdapter.getInstance()), fileDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SentryFileOutputStream(File file, boolean z, IHub iHub) throws FileNotFoundException {
        this(init(file, z, null, iHub));
    }

    private SentryFileOutputStream(FileOutputStreamInitData fileOutputStreamInitData, FileDescriptor fileDescriptor) {
        super(fileDescriptor);
        this.spanManager = new FileIOSpanManager(fileOutputStreamInitData.span, fileOutputStreamInitData.file, fileOutputStreamInitData.options);
        this.delegate = fileOutputStreamInitData.delegate;
    }

    private SentryFileOutputStream(FileOutputStreamInitData fileOutputStreamInitData) throws FileNotFoundException {
        super(getFileDescriptor(fileOutputStreamInitData.delegate));
        this.spanManager = new FileIOSpanManager(fileOutputStreamInitData.span, fileOutputStreamInitData.file, fileOutputStreamInitData.options);
        this.delegate = fileOutputStreamInitData.delegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FileOutputStreamInitData init(File file, boolean z, FileOutputStream fileOutputStream, IHub iHub) throws FileNotFoundException {
        ISpan startSpan = FileIOSpanManager.startSpan(iHub, "file.write");
        if (fileOutputStream == null) {
            fileOutputStream = new FileOutputStream(file, z);
        }
        return new FileOutputStreamInitData(file, z, startSpan, fileOutputStream, iHub.getOptions());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FileOutputStreamInitData init(FileDescriptor fileDescriptor, FileOutputStream fileOutputStream, IHub iHub) {
        ISpan startSpan = FileIOSpanManager.startSpan(iHub, "file.write");
        if (fileOutputStream == null) {
            fileOutputStream = new FileOutputStream(fileDescriptor);
        }
        return new FileOutputStreamInitData(null, false, startSpan, fileOutputStream, iHub.getOptions());
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(final int i) throws IOException {
        this.spanManager.performIO(new FileIOSpanManager.FileIOCallable() { // from class: io.sentry.instrumentation.file.SentryFileOutputStream$$ExternalSyntheticLambda1
            @Override // io.sentry.instrumentation.file.FileIOSpanManager.FileIOCallable
            public final Object call() {
                return SentryFileOutputStream.this.m5684x4f861af1(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$write$0$io-sentry-instrumentation-file-SentryFileOutputStream, reason: not valid java name */
    public /* synthetic */ Integer m5684x4f861af1(int i) throws IOException {
        this.delegate.write(i);
        return 1;
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(final byte[] bArr) throws IOException {
        this.spanManager.performIO(new FileIOSpanManager.FileIOCallable() { // from class: io.sentry.instrumentation.file.SentryFileOutputStream$$ExternalSyntheticLambda2
            @Override // io.sentry.instrumentation.file.FileIOSpanManager.FileIOCallable
            public final Object call() {
                return SentryFileOutputStream.this.m5685x78da7032(bArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$write$1$io-sentry-instrumentation-file-SentryFileOutputStream, reason: not valid java name */
    public /* synthetic */ Integer m5685x78da7032(byte[] bArr) throws IOException {
        this.delegate.write(bArr);
        return Integer.valueOf(bArr.length);
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(final byte[] bArr, final int i, final int i2) throws IOException {
        this.spanManager.performIO(new FileIOSpanManager.FileIOCallable() { // from class: io.sentry.instrumentation.file.SentryFileOutputStream$$ExternalSyntheticLambda0
            @Override // io.sentry.instrumentation.file.FileIOSpanManager.FileIOCallable
            public final Object call() {
                return SentryFileOutputStream.this.m5686xa22ec573(bArr, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$write$2$io-sentry-instrumentation-file-SentryFileOutputStream, reason: not valid java name */
    public /* synthetic */ Integer m5686xa22ec573(byte[] bArr, int i, int i2) throws IOException {
        this.delegate.write(bArr, i, i2);
        return Integer.valueOf(i2);
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.spanManager.finish(this.delegate);
    }

    private static FileDescriptor getFileDescriptor(FileOutputStream fileOutputStream) throws FileNotFoundException {
        try {
            return fileOutputStream.getFD();
        } catch (IOException unused) {
            throw new FileNotFoundException("No file descriptor");
        }
    }

    /* loaded from: classes3.dex */
    public static final class Factory {
        public static FileOutputStream create(FileOutputStream fileOutputStream, String str) throws FileNotFoundException {
            return new SentryFileOutputStream(SentryFileOutputStream.init(str != null ? new File(str) : null, false, fileOutputStream, HubAdapter.getInstance()));
        }

        public static FileOutputStream create(FileOutputStream fileOutputStream, String str, boolean z) throws FileNotFoundException {
            return new SentryFileOutputStream(SentryFileOutputStream.init(str != null ? new File(str) : null, z, fileOutputStream, HubAdapter.getInstance()));
        }

        public static FileOutputStream create(FileOutputStream fileOutputStream, File file) throws FileNotFoundException {
            return new SentryFileOutputStream(SentryFileOutputStream.init(file, false, fileOutputStream, HubAdapter.getInstance()));
        }

        public static FileOutputStream create(FileOutputStream fileOutputStream, File file, boolean z) throws FileNotFoundException {
            return new SentryFileOutputStream(SentryFileOutputStream.init(file, z, fileOutputStream, HubAdapter.getInstance()));
        }

        public static FileOutputStream create(FileOutputStream fileOutputStream, FileDescriptor fileDescriptor) {
            return new SentryFileOutputStream(SentryFileOutputStream.init(fileDescriptor, fileOutputStream, HubAdapter.getInstance()), fileDescriptor);
        }
    }
}
