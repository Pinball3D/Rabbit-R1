package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.datasource.DataSource;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class PlaceholderDataSource implements DataSource {
    public static final PlaceholderDataSource INSTANCE = new PlaceholderDataSource();
    public static final DataSource.Factory FACTORY = new DataSource.Factory() { // from class: androidx.media3.datasource.PlaceholderDataSource$$ExternalSyntheticLambda0
        @Override // androidx.media3.datasource.DataSource.Factory
        public final DataSource createDataSource() {
            return PlaceholderDataSource.m5196$r8$lambda$vtmV5Njo8kR2KAgmyl6w_QrhmI();
        }
    };

    /* renamed from: $r8$lambda$vtmV5Njo8kR2KAgmyl6w_Qrh-mI, reason: not valid java name */
    public static /* synthetic */ PlaceholderDataSource m5196$r8$lambda$vtmV5Njo8kR2KAgmyl6w_QrhmI() {
        return new PlaceholderDataSource();
    }

    @Override // androidx.media3.datasource.DataSource
    public void addTransferListener(TransferListener transferListener) {
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return null;
    }

    private PlaceholderDataSource() {
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }
}
