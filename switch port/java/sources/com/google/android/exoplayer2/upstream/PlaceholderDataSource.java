package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSource;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class PlaceholderDataSource implements DataSource {
    public static final PlaceholderDataSource INSTANCE = new PlaceholderDataSource();
    public static final DataSource.Factory FACTORY = new DataSource.Factory() { // from class: com.google.android.exoplayer2.upstream.PlaceholderDataSource$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public final DataSource createDataSource() {
            return PlaceholderDataSource.$r8$lambda$Qku_15DubQGfyuKLu3QSDqilS4U();
        }
    };

    public static /* synthetic */ PlaceholderDataSource $r8$lambda$Qku_15DubQGfyuKLu3QSDqilS4U() {
        return new PlaceholderDataSource();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return null;
    }

    private PlaceholderDataSource() {
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }
}
