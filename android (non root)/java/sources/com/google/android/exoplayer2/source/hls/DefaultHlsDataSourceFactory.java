package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.upstream.DataSource;

/* loaded from: classes2.dex */
public final class DefaultHlsDataSourceFactory implements HlsDataSourceFactory {
    private final DataSource.Factory dataSourceFactory;

    public DefaultHlsDataSourceFactory(DataSource.Factory factory) {
        this.dataSourceFactory = factory;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsDataSourceFactory
    public DataSource createDataSource(int i) {
        return this.dataSourceFactory.createDataSource();
    }
}
