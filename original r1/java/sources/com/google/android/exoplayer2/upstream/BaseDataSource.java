package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class BaseDataSource implements DataSource {
    private DataSpec dataSpec;
    private final boolean isNetwork;
    private int listenerCount;
    private final ArrayList<TransferListener> listeners = new ArrayList<>(1);

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseDataSource(boolean z) {
        this.isNetwork = z;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        if (this.listeners.contains(transferListener)) {
            return;
        }
        this.listeners.add(transferListener);
        this.listenerCount++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void transferInitializing(DataSpec dataSpec) {
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferInitializing(this, dataSpec, this.isNetwork);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void transferStarted(DataSpec dataSpec) {
        this.dataSpec = dataSpec;
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferStart(this, dataSpec, this.isNetwork);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void bytesTransferred(int i) {
        DataSpec dataSpec = (DataSpec) Util.castNonNull(this.dataSpec);
        for (int i2 = 0; i2 < this.listenerCount; i2++) {
            this.listeners.get(i2).onBytesTransferred(this, dataSpec, this.isNetwork, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void transferEnded() {
        DataSpec dataSpec = (DataSpec) Util.castNonNull(this.dataSpec);
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferEnd(this, dataSpec, this.isNetwork);
        }
        this.dataSpec = null;
    }
}
