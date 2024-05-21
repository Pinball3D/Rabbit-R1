package androidx.media3.decoder;

import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import java.util.ArrayDeque;

/* loaded from: classes2.dex */
public abstract class SimpleDecoder<I extends DecoderInputBuffer, O extends DecoderOutputBuffer, E extends DecoderException> implements Decoder<I, O, E> {
    private int availableInputBufferCount;
    private final I[] availableInputBuffers;
    private int availableOutputBufferCount;
    private final O[] availableOutputBuffers;
    private final Thread decodeThread;
    private I dequeuedInputBuffer;
    private E exception;
    private boolean flushed;
    private final Object lock = new Object();
    private final ArrayDeque<I> queuedInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<O> queuedOutputBuffers = new ArrayDeque<>();
    private boolean released;
    private int skippedOutputBufferCount;

    protected abstract I createInputBuffer();

    protected abstract O createOutputBuffer();

    protected abstract E createUnexpectedDecodeException(Throwable th);

    protected abstract E decode(I i, O o, boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleDecoder(I[] iArr, O[] oArr) {
        this.availableInputBuffers = iArr;
        this.availableInputBufferCount = iArr.length;
        for (int i = 0; i < this.availableInputBufferCount; i++) {
            this.availableInputBuffers[i] = createInputBuffer();
        }
        this.availableOutputBuffers = oArr;
        this.availableOutputBufferCount = oArr.length;
        for (int i2 = 0; i2 < this.availableOutputBufferCount; i2++) {
            this.availableOutputBuffers[i2] = createOutputBuffer();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: androidx.media3.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleDecoder.this.run();
            }
        };
        this.decodeThread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setInitialInputBufferSize(int i) {
        Assertions.checkState(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (I i2 : this.availableInputBuffers) {
            i2.ensureSpaceForWrite(i);
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final I dequeueInputBuffer() throws DecoderException {
        I i;
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkState(this.dequeuedInputBuffer == null);
            int i2 = this.availableInputBufferCount;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.availableInputBuffers;
                int i3 = i2 - 1;
                this.availableInputBufferCount = i3;
                i = iArr[i3];
            }
            this.dequeuedInputBuffer = i;
        }
        return i;
    }

    @Override // androidx.media3.decoder.Decoder
    public final void queueInputBuffer(I i) throws DecoderException {
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkArgument(i == this.dequeuedInputBuffer);
            this.queuedInputBuffers.addLast(i);
            maybeNotifyDecodeLoop();
            this.dequeuedInputBuffer = null;
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final O dequeueOutputBuffer() throws DecoderException {
        synchronized (this.lock) {
            maybeThrowException();
            if (this.queuedOutputBuffers.isEmpty()) {
                return null;
            }
            return this.queuedOutputBuffers.removeFirst();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void releaseOutputBuffer(O o) {
        synchronized (this.lock) {
            releaseOutputBufferInternal(o);
            maybeNotifyDecodeLoop();
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final void flush() {
        synchronized (this.lock) {
            this.flushed = true;
            this.skippedOutputBufferCount = 0;
            I i = this.dequeuedInputBuffer;
            if (i != null) {
                releaseInputBufferInternal(i);
                this.dequeuedInputBuffer = null;
            }
            while (!this.queuedInputBuffers.isEmpty()) {
                releaseInputBufferInternal(this.queuedInputBuffers.removeFirst());
            }
            while (!this.queuedOutputBuffers.isEmpty()) {
                this.queuedOutputBuffers.removeFirst().release();
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public void release() {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    private void maybeThrowException() throws DecoderException {
        E e = this.exception;
        if (e != null) {
            throw e;
        }
    }

    private void maybeNotifyDecodeLoop() {
        if (canDecodeBuffer()) {
            this.lock.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (decode());
    }

    private boolean decode() throws InterruptedException {
        E createUnexpectedDecodeException;
        synchronized (this.lock) {
            while (!this.released && !canDecodeBuffer()) {
                this.lock.wait();
            }
            if (this.released) {
                return false;
            }
            I removeFirst = this.queuedInputBuffers.removeFirst();
            O[] oArr = this.availableOutputBuffers;
            int i = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i;
            O o = oArr[i];
            boolean z = this.flushed;
            this.flushed = false;
            if (removeFirst.isEndOfStream()) {
                o.addFlag(4);
            } else {
                if (removeFirst.isDecodeOnly()) {
                    o.addFlag(Integer.MIN_VALUE);
                }
                if (removeFirst.isFirstSample()) {
                    o.addFlag(134217728);
                }
                try {
                    createUnexpectedDecodeException = decode(removeFirst, o, z);
                } catch (OutOfMemoryError e) {
                    createUnexpectedDecodeException = createUnexpectedDecodeException(e);
                } catch (RuntimeException e2) {
                    createUnexpectedDecodeException = createUnexpectedDecodeException(e2);
                }
                if (createUnexpectedDecodeException != null) {
                    synchronized (this.lock) {
                        this.exception = createUnexpectedDecodeException;
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                if (this.flushed) {
                    o.release();
                } else if (o.isDecodeOnly()) {
                    this.skippedOutputBufferCount++;
                    o.release();
                } else {
                    o.skippedOutputBufferCount = this.skippedOutputBufferCount;
                    this.skippedOutputBufferCount = 0;
                    this.queuedOutputBuffers.addLast(o);
                }
                releaseInputBufferInternal(removeFirst);
            }
            return true;
        }
    }

    private boolean canDecodeBuffer() {
        return !this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0;
    }

    private void releaseInputBufferInternal(I i) {
        i.clear();
        I[] iArr = this.availableInputBuffers;
        int i2 = this.availableInputBufferCount;
        this.availableInputBufferCount = i2 + 1;
        iArr[i2] = i;
    }

    private void releaseOutputBufferInternal(O o) {
        o.clear();
        O[] oArr = this.availableOutputBuffers;
        int i = this.availableOutputBufferCount;
        this.availableOutputBufferCount = i + 1;
        oArr[i] = o;
    }
}
