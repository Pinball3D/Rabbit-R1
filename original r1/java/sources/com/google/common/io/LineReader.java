package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class LineReader {
    private final char[] buf;
    private final CharBuffer cbuf;
    private final LineBuffer lineBuf;
    private final Queue<String> lines;
    private final Readable readable;

    @CheckForNull
    private final Reader reader;

    public LineReader(Readable readable) {
        CharBuffer createBuffer = CharStreams.createBuffer();
        this.cbuf = createBuffer;
        this.buf = createBuffer.array();
        this.lines = new ArrayDeque();
        this.lineBuf = new LineBuffer() { // from class: com.google.common.io.LineReader.1
            @Override // com.google.common.io.LineBuffer
            protected void handleLine(String str, String str2) {
                LineReader.this.lines.add(str);
            }
        };
        this.readable = (Readable) Preconditions.checkNotNull(readable);
        this.reader = readable instanceof Reader ? (Reader) readable : null;
    }

    @CheckForNull
    public String readLine() throws IOException {
        int read;
        while (true) {
            if (this.lines.peek() != null) {
                break;
            }
            Java8Compatibility.clear(this.cbuf);
            Reader reader = this.reader;
            if (reader != null) {
                char[] cArr = this.buf;
                read = reader.read(cArr, 0, cArr.length);
            } else {
                read = this.readable.read(this.cbuf);
            }
            if (read == -1) {
                this.lineBuf.finish();
                break;
            }
            this.lineBuf.add(this.buf, 0, read);
        }
        return this.lines.poll();
    }
}
