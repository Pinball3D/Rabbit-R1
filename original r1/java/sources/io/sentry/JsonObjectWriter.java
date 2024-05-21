package io.sentry;

import io.sentry.vendor.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes3.dex */
public final class JsonObjectWriter implements ObjectWriter {
    private final JsonObjectSerializer jsonObjectSerializer;
    private final JsonWriter jsonWriter;

    public JsonObjectWriter(Writer writer, int i) {
        this.jsonWriter = new JsonWriter(writer);
        this.jsonObjectSerializer = new JsonObjectSerializer(i);
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter beginArray() throws IOException {
        this.jsonWriter.beginArray();
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter endArray() throws IOException {
        this.jsonWriter.endArray();
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter beginObject() throws IOException {
        this.jsonWriter.beginObject();
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter endObject() throws IOException {
        this.jsonWriter.endObject();
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter name(String str) throws IOException {
        this.jsonWriter.name(str);
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter value(String str) throws IOException {
        this.jsonWriter.value(str);
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter nullValue() throws IOException {
        this.jsonWriter.nullValue();
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter value(boolean z) throws IOException {
        this.jsonWriter.value(z);
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter value(Boolean bool) throws IOException {
        this.jsonWriter.value(bool);
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter value(double d) throws IOException {
        this.jsonWriter.value(d);
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter value(long j) throws IOException {
        this.jsonWriter.value(j);
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter value(Number number) throws IOException {
        this.jsonWriter.value(number);
        return this;
    }

    @Override // io.sentry.ObjectWriter
    public JsonObjectWriter value(ILogger iLogger, Object obj) throws IOException {
        this.jsonObjectSerializer.serialize(this, iLogger, obj);
        return this;
    }

    public void setIndent(String str) {
        this.jsonWriter.setIndent(str);
    }
}
