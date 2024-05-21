package okio;

import io.sentry.ProfilingTraceData;
import io.sentry.protocol.TransactionInfo;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JvmOkio.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "out", "Ljava/io/OutputStream;", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "Lokio/Timeout;", "(Ljava/io/OutputStream;Lokio/Timeout;)V", "close", "", "flush", "toString", "", "write", TransactionInfo.JsonKeys.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class OutputStreamSink implements Sink {
    private final OutputStream out;
    private final Timeout timeout;

    @Override // okio.Sink
    /* renamed from: timeout, reason: from getter */
    public Timeout getTimeout() {
        return this.timeout;
    }

    public OutputStreamSink(OutputStream out, Timeout timeout) {
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.out = out;
        this.timeout = timeout;
    }

    @Override // okio.Sink
    public void write(Buffer source, long byteCount) {
        Intrinsics.checkNotNullParameter(source, "source");
        Util.checkOffsetAndCount(source.size(), 0L, byteCount);
        while (byteCount > 0) {
            this.timeout.throwIfReached();
            Segment segment = source.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(byteCount, segment.limit - segment.pos);
            this.out.write(segment.data, segment.pos, min);
            segment.pos += min;
            long j = min;
            byteCount -= j;
            source.setSize$okio(source.size() - j);
            if (segment.pos == segment.limit) {
                source.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.out.flush();
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.out.close();
    }

    public String toString() {
        return "sink(" + this.out + ')';
    }
}
