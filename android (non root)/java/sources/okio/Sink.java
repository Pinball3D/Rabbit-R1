package okio;

import io.sentry.ProfilingTraceData;
import io.sentry.protocol.TransactionInfo;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import kotlin.Metadata;

/* compiled from: Sink.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0004H&J\b\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&¨\u0006\r"}, d2 = {"Lokio/Sink;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "close", "", "flush", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "Lokio/Timeout;", "write", TransactionInfo.JsonKeys.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface Sink extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    Timeout timeout();

    void write(Buffer source, long byteCount) throws IOException;
}
