package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class DataChunk extends Chunk {
    private static final int READ_GRANULARITY = 16384;
    private byte[] data;
    private volatile boolean loadCanceled;

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    protected abstract void consume(byte[] bArr, int i) throws IOException;

    public byte[] getDataHolder() {
        return this.data;
    }

    public DataChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, int i2, Object obj, byte[] bArr) {
        super(dataSource, dataSpec, i, format, i2, obj, -9223372036854775807L, -9223372036854775807L);
        DataChunk dataChunk;
        byte[] bArr2;
        if (bArr == null) {
            bArr2 = Util.EMPTY_BYTE_ARRAY;
            dataChunk = this;
        } else {
            dataChunk = this;
            bArr2 = bArr;
        }
        dataChunk.data = bArr2;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() throws IOException {
        try {
            this.dataSource.open(this.dataSpec);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.loadCanceled) {
                maybeExpandData(i2);
                i = this.dataSource.read(this.data, i2, 16384);
                if (i != -1) {
                    i2 += i;
                }
            }
            if (!this.loadCanceled) {
                consume(this.data, i2);
            }
        } finally {
            DataSourceUtil.closeQuietly(this.dataSource);
        }
    }

    private void maybeExpandData(int i) {
        byte[] bArr = this.data;
        if (bArr.length < i + 16384) {
            this.data = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }
}
