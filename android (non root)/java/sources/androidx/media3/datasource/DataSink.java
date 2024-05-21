package androidx.media3.datasource;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface DataSink {

    /* loaded from: classes2.dex */
    public interface Factory {
        DataSink createDataSink();
    }

    void close() throws IOException;

    void open(DataSpec dataSpec) throws IOException;

    void write(byte[] bArr, int i, int i2) throws IOException;
}
