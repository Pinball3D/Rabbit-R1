package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class ByteArrayDataSource extends BaseDataSource {
    private int bytesRemaining;
    private final byte[] data;
    private boolean opened;
    private int readPosition;
    private Uri uri;

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    public ByteArrayDataSource(byte[] bArr) {
        super(false);
        Assertions.checkNotNull(bArr);
        Assertions.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.uri = dataSpec.uri;
        transferInitializing(dataSpec);
        if (dataSpec.position > this.data.length) {
            throw new DataSourceException(2008);
        }
        this.readPosition = (int) dataSpec.position;
        this.bytesRemaining = this.data.length - ((int) dataSpec.position);
        if (dataSpec.length != -1) {
            this.bytesRemaining = (int) Math.min(this.bytesRemaining, dataSpec.length);
        }
        this.opened = true;
        transferStarted(dataSpec);
        return dataSpec.length != -1 ? dataSpec.length : this.bytesRemaining;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.bytesRemaining;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.data, this.readPosition, bArr, i, min);
        this.readPosition += min;
        this.bytesRemaining -= min;
        bytesTransferred(min);
        return min;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
        this.uri = null;
    }
}
