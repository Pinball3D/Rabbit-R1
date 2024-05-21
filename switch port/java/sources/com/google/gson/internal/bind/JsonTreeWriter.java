package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class JsonTreeWriter extends JsonWriter {
    private String pendingName;
    private JsonElement product;
    private final List<JsonElement> stack;
    private static final Writer UNWRITABLE_WRITER = new Writer() { // from class: com.google.gson.internal.bind.JsonTreeWriter.1
        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }
    };
    private static final JsonPrimitive SENTINEL_CLOSED = new JsonPrimitive("closed");

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() throws IOException {
    }

    public JsonTreeWriter() {
        super(UNWRITABLE_WRITER);
        this.stack = new ArrayList();
        this.product = JsonNull.INSTANCE;
    }

    public JsonElement get() {
        if (this.stack.isEmpty()) {
            return this.product;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.stack);
    }

    private JsonElement peek() {
        return this.stack.get(r1.size() - 1);
    }

    private void put(JsonElement jsonElement) {
        if (this.pendingName != null) {
            if (!jsonElement.isJsonNull() || getSerializeNulls()) {
                ((JsonObject) peek()).add(this.pendingName, jsonElement);
            }
            this.pendingName = null;
            return;
        }
        if (this.stack.isEmpty()) {
            this.product = jsonElement;
            return;
        }
        JsonElement peek = peek();
        if (peek instanceof JsonArray) {
            ((JsonArray) peek).add(jsonElement);
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginArray() throws IOException {
        JsonArray jsonArray = new JsonArray();
        put(jsonArray);
        this.stack.add(jsonArray);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endArray() throws IOException {
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        }
        if (peek() instanceof JsonArray) {
            this.stack.remove(r0.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginObject() throws IOException {
        JsonObject jsonObject = new JsonObject();
        put(jsonObject);
        this.stack.add(jsonObject);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endObject() throws IOException {
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        }
        if (peek() instanceof JsonObject) {
            this.stack.remove(r0.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter name(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        }
        if (!(peek() instanceof JsonObject)) {
            throw new IllegalStateException();
        }
        this.pendingName = str;
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        put(new JsonPrimitive(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter nullValue() throws IOException {
        put(JsonNull.INSTANCE);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(boolean z) throws IOException {
        put(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        put(new JsonPrimitive(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(double d) throws IOException {
        if (!isLenient() && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d);
        }
        put(new JsonPrimitive(Double.valueOf(d)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(long j) throws IOException {
        put(new JsonPrimitive(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        put(new JsonPrimitive(number));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.stack.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.stack.add(SENTINEL_CLOSED);
    }
}
