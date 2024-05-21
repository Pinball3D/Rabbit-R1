package io.sentry;

import java.io.IOException;

/* loaded from: classes3.dex */
public interface ObjectWriter {
    ObjectWriter beginArray() throws IOException;

    ObjectWriter beginObject() throws IOException;

    ObjectWriter endArray() throws IOException;

    ObjectWriter endObject() throws IOException;

    ObjectWriter name(String str) throws IOException;

    ObjectWriter nullValue() throws IOException;

    ObjectWriter value(double d) throws IOException;

    ObjectWriter value(long j) throws IOException;

    ObjectWriter value(ILogger iLogger, Object obj) throws IOException;

    ObjectWriter value(Boolean bool) throws IOException;

    ObjectWriter value(Number number) throws IOException;

    ObjectWriter value(String str) throws IOException;

    ObjectWriter value(boolean z) throws IOException;
}
