package io.sentry;

import java.io.IOException;

/* loaded from: classes3.dex */
public interface JsonSerializable {
    void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException;
}
