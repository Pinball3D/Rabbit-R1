package com.google.android.exoplayer2.upstream;

import android.content.Context;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;

@Deprecated
/* loaded from: classes2.dex */
public final class DefaultDataSourceFactory implements DataSource.Factory {
    private final DataSource.Factory baseDataSourceFactory;
    private final Context context;
    private final TransferListener listener;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DefaultDataSourceFactory(Context context) {
        this(context, (String) null, (TransferListener) null);
    }

    public DefaultDataSourceFactory(Context context, String str) {
        this(context, str, (TransferListener) null);
    }

    public DefaultDataSourceFactory(Context context, String str, TransferListener transferListener) {
        this(context, transferListener, new DefaultHttpDataSource.Factory().setUserAgent(str));
    }

    public DefaultDataSourceFactory(Context context, DataSource.Factory factory) {
        this(context, (TransferListener) null, factory);
    }

    public DefaultDataSourceFactory(Context context, TransferListener transferListener, DataSource.Factory factory) {
        this.context = context.getApplicationContext();
        this.listener = transferListener;
        this.baseDataSourceFactory = factory;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
    public DefaultDataSource createDataSource() {
        DefaultDataSource defaultDataSource = new DefaultDataSource(this.context, this.baseDataSourceFactory.createDataSource());
        TransferListener transferListener = this.listener;
        if (transferListener != null) {
            defaultDataSource.addTransferListener(transferListener);
        }
        return defaultDataSource;
    }
}
