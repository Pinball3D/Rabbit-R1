package io.sentry.vendor.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class JsonWriter implements Closeable, Flushable {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private static final String[] REPLACEMENT_CHARS = new String[128];
    private String deferredName;
    private boolean htmlSafe;
    private String indent;
    private boolean lenient;
    private final Writer out;
    private String separator;
    private boolean serializeNulls;
    private int[] stack = new int[32];
    private int stackSize = 0;

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public final void setHtmlSafe(boolean z) {
        this.htmlSafe = z;
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final void setSerializeNulls(boolean z) {
        this.serializeNulls = z;
    }

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        HTML_SAFE_REPLACEMENT_CHARS = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        push(6);
        this.separator = ":";
        this.serializeNulls = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.indent = null;
            this.separator = ":";
        } else {
            this.indent = str;
            this.separator = ": ";
        }
    }

    public JsonWriter beginArray() throws IOException {
        writeDeferredName();
        return open(1, '[');
    }

    public JsonWriter endArray() throws IOException {
        return close(1, 2, ']');
    }

    public JsonWriter beginObject() throws IOException {
        writeDeferredName();
        return open(3, '{');
    }

    public JsonWriter endObject() throws IOException {
        return close(3, 5, '}');
    }

    private JsonWriter open(int i, char c) throws IOException {
        beforeValue();
        push(i);
        this.out.write(c);
        return this;
    }

    private JsonWriter close(int i, int i2, char c) throws IOException {
        int peek = peek();
        if (peek != i2 && peek != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.deferredName != null) {
            throw new IllegalStateException("Dangling name: " + this.deferredName);
        }
        this.stackSize--;
        if (peek == i2) {
            newline();
        }
        this.out.write(c);
        return this;
    }

    private void push(int i) {
        int i2 = this.stackSize;
        int[] iArr = this.stack;
        if (i2 == iArr.length) {
            this.stack = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.stack;
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        iArr2[i3] = i;
    }

    private int peek() {
        int i = this.stackSize;
        if (i == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.stack[i - 1];
    }

    private void replaceTop(int i) {
        this.stack[this.stackSize - 1] = i;
    }

    public JsonWriter name(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.deferredName != null) {
            throw new IllegalStateException();
        }
        if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.deferredName = str;
        return this;
    }

    private void writeDeferredName() throws IOException {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        string(str);
        return this;
    }

    public JsonWriter jsonValue(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.append((CharSequence) str);
        return this;
    }

    public JsonWriter nullValue() throws IOException {
        if (this.deferredName != null) {
            if (!this.serializeNulls) {
                this.deferredName = null;
                return this;
            }
            writeDeferredName();
        }
        beforeValue();
        this.out.write("null");
        return this;
    }

    public JsonWriter value(boolean z) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(z ? "true" : "false");
        return this;
    }

    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public JsonWriter value(double d) throws IOException {
        writeDeferredName();
        if (!this.lenient && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        beforeValue();
        this.out.append((CharSequence) Double.toString(d));
        return this;
    }

    public JsonWriter value(long j) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(Long.toString(j));
        return this;
    }

    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        writeDeferredName();
        String obj = number.toString();
        if (!this.lenient && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        beforeValue();
        this.out.append((CharSequence) obj);
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        int i = this.stackSize;
        if (i > 1 || (i == 1 && this.stack[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.stackSize = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void string(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.htmlSafe
            if (r0 == 0) goto L7
            java.lang.String[] r0 = io.sentry.vendor.gson.stream.JsonWriter.HTML_SAFE_REPLACEMENT_CHARS
            goto L9
        L7:
            java.lang.String[] r0 = io.sentry.vendor.gson.stream.JsonWriter.REPLACEMENT_CHARS
        L9:
            java.io.Writer r1 = r8.out
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = r3
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.out
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.out
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.out
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r8 = r8.out
            r8.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.JsonWriter.string(java.lang.String):void");
    }

    private void newline() throws IOException {
        if (this.indent == null) {
            return;
        }
        this.out.write(10);
        int i = this.stackSize;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.indent);
        }
    }

    private void beforeName() throws IOException {
        int peek = peek();
        if (peek == 5) {
            this.out.write(44);
        } else if (peek != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        newline();
        replaceTop(4);
    }

    private void beforeValue() throws IOException {
        int peek = peek();
        if (peek == 1) {
            replaceTop(2);
            newline();
            return;
        }
        if (peek == 2) {
            this.out.append(',');
            newline();
        } else {
            if (peek != 4) {
                if (peek != 6) {
                    if (peek != 7) {
                        throw new IllegalStateException("Nesting problem.");
                    }
                    if (!this.lenient) {
                        throw new IllegalStateException("JSON must have only one top-level value.");
                    }
                }
                replaceTop(7);
                return;
            }
            this.out.append((CharSequence) this.separator);
            replaceTop(5);
        }
    }
}
