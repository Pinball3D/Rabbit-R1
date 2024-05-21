package okio;

import io.sentry.ProfilingTraceData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PeekSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lokio/PeekSource;", "Lokio/Source;", "upstream", "Lokio/BufferedSource;", "(Lokio/BufferedSource;)V", "buffer", "Lokio/Buffer;", "closed", "", "expectedPos", "", "expectedSegment", "Lokio/Segment;", "pos", "", "close", "", "read", "sink", "byteCount", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class PeekSource implements Source {
    private final Buffer buffer;
    private boolean closed;
    private int expectedPos;
    private Segment expectedSegment;
    private long pos;
    private final BufferedSource upstream;

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    public PeekSource(BufferedSource upstream) {
        Intrinsics.checkNotNullParameter(upstream, "upstream");
        this.upstream = upstream;
        Buffer buffer = upstream.getBuffer();
        this.buffer = buffer;
        this.expectedSegment = buffer.head;
        Segment segment = buffer.head;
        this.expectedPos = segment != null ? segment.pos : -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
    
        if (r5 == r6.pos) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(okio.Buffer r9, long r10) {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r2 < 0) goto Lf
            r5 = r4
            goto L10
        Lf:
            r5 = r3
        L10:
            if (r5 == 0) goto L97
            boolean r5 = r8.closed
            r5 = r5 ^ r4
            if (r5 == 0) goto L89
            okio.Segment r5 = r8.expectedSegment
            if (r5 == 0) goto L2e
            okio.Buffer r6 = r8.buffer
            okio.Segment r6 = r6.head
            if (r5 != r6) goto L2f
            int r5 = r8.expectedPos
            okio.Buffer r6 = r8.buffer
            okio.Segment r6 = r6.head
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            int r6 = r6.pos
            if (r5 != r6) goto L2f
        L2e:
            r3 = r4
        L2f:
            if (r3 == 0) goto L7b
            if (r2 != 0) goto L34
            return r0
        L34:
            okio.BufferedSource r0 = r8.upstream
            long r1 = r8.pos
            r3 = 1
            long r1 = r1 + r3
            boolean r0 = r0.request(r1)
            if (r0 != 0) goto L44
            r8 = -1
            return r8
        L44:
            okio.Segment r0 = r8.expectedSegment
            if (r0 != 0) goto L5f
            okio.Buffer r0 = r8.buffer
            okio.Segment r0 = r0.head
            if (r0 == 0) goto L5f
            okio.Buffer r0 = r8.buffer
            okio.Segment r0 = r0.head
            r8.expectedSegment = r0
            okio.Buffer r0 = r8.buffer
            okio.Segment r0 = r0.head
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r0 = r0.pos
            r8.expectedPos = r0
        L5f:
            okio.Buffer r0 = r8.buffer
            long r0 = r0.size()
            long r2 = r8.pos
            long r0 = r0 - r2
            long r10 = java.lang.Math.min(r10, r0)
            okio.Buffer r2 = r8.buffer
            long r4 = r8.pos
            r3 = r9
            r6 = r10
            r2.copyTo(r3, r4, r6)
            long r0 = r8.pos
            long r0 = r0 + r10
            r8.pos = r0
            return r10
        L7b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Peek source is invalid because upstream source was used"
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            throw r8
        L89:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "closed"
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            throw r8
        L97:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "byteCount < 0: "
            r8.<init>(r9)
            java.lang.StringBuilder r8 = r8.append(r10)
            java.lang.String r8 = r8.toString()
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r8 = r8.toString()
            r9.<init>(r8)
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.PeekSource.read(okio.Buffer, long):long");
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public Timeout getTimeout() {
        return this.upstream.getTimeout();
    }
}
