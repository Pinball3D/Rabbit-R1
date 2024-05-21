package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.datasource.DataSource;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ResolvingDataSource implements DataSource {
    private final Resolver resolver;
    private final DataSource upstreamDataSource;
    private boolean upstreamOpened;

    /* loaded from: classes2.dex */
    public interface Resolver {
        DataSpec resolveDataSpec(DataSpec dataSpec) throws IOException;

        default Uri resolveReportedUri(Uri uri) {
            return uri;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Factory implements DataSource.Factory {
        private final Resolver resolver;
        private final DataSource.Factory upstreamFactory;

        public Factory(DataSource.Factory factory, Resolver resolver) {
            this.upstreamFactory = factory;
            this.resolver = resolver;
        }

        @Override // androidx.media3.datasource.DataSource.Factory
        public ResolvingDataSource createDataSource() {
            return new ResolvingDataSource(this.upstreamFactory.createDataSource(), this.resolver);
        }
    }

    public ResolvingDataSource(DataSource dataSource, Resolver resolver) {
        this.upstreamDataSource = dataSource;
        this.resolver = resolver;
    }

    @Override // androidx.media3.datasource.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.upstreamDataSource.addTransferListener(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        DataSpec resolveDataSpec = this.resolver.resolveDataSpec(dataSpec);
        this.upstreamOpened = true;
        return this.upstreamDataSource.open(resolveDataSpec);
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.upstreamDataSource.read(bArr, i, i2);
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        Uri uri = this.upstreamDataSource.getUri();
        if (uri == null) {
            return null;
        }
        return this.resolver.resolveReportedUri(uri);
    }

    @Override // androidx.media3.datasource.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.upstreamDataSource.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        if (this.upstreamOpened) {
            this.upstreamOpened = false;
            this.upstreamDataSource.close();
        }
    }
}
