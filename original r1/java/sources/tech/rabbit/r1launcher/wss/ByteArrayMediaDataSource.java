package tech.rabbit.r1launcher.wss;

import android.media.MediaDataSource;
import java.io.IOException;

/* loaded from: classes3.dex */
public class ByteArrayMediaDataSource extends MediaDataSource {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final byte[] data;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public ByteArrayMediaDataSource(byte[] bArr) {
        this.data = bArr;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = this.data;
        if (j >= bArr2.length) {
            return -1;
        }
        long j2 = i2;
        long j3 = j + j2;
        if (j3 > bArr2.length) {
            i2 = (int) (j2 - (j3 - bArr2.length));
        }
        System.arraycopy(bArr2, (int) j, bArr, i, i2);
        return i2;
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        return this.data.length;
    }
}
