package androidx.media3.datasource;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    @Override // androidx.media3.datasource.DataSink
    public void open(DataSpec dataSpec) {
        if (dataSpec.length == -1) {
            this.stream = new ByteArrayOutputStream();
        } else {
            Assertions.checkArgument(dataSpec.length <= 2147483647L);
            this.stream = new ByteArrayOutputStream((int) dataSpec.length);
        }
    }

    @Override // androidx.media3.datasource.DataSink
    public void close() throws IOException {
        ((ByteArrayOutputStream) Util.castNonNull(this.stream)).close();
    }

    @Override // androidx.media3.datasource.DataSink
    public void write(byte[] bArr, int i, int i2) {
        ((ByteArrayOutputStream) Util.castNonNull(this.stream)).write(bArr, i, i2);
    }

    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.stream;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toByteArray();
    }
}
