package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.Assertions;
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

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public ResolvingDataSource createDataSource() {
            return new ResolvingDataSource(this.upstreamFactory.createDataSource(), this.resolver);
        }
    }

    public ResolvingDataSource(DataSource dataSource, Resolver resolver) {
        this.upstreamDataSource = dataSource;
        this.resolver = resolver;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.upstreamDataSource.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        DataSpec resolveDataSpec = this.resolver.resolveDataSpec(dataSpec);
        this.upstreamOpened = true;
        return this.upstreamDataSource.open(resolveDataSpec);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.upstreamDataSource.read(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        Uri uri = this.upstreamDataSource.getUri();
        if (uri == null) {
            return null;
        }
        return this.resolver.resolveReportedUri(uri);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.upstreamDataSource.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        if (this.upstreamOpened) {
            this.upstreamOpened = false;
            this.upstreamDataSource.close();
        }
    }
}
