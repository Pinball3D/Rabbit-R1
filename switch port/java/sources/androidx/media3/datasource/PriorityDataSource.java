package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Assertions;
import androidx.media3.datasource.DataSource;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class PriorityDataSource implements DataSource {
    private final int priority;
    private final PriorityTaskManager priorityTaskManager;
    private final DataSource upstream;

    /* loaded from: classes2.dex */
    public static final class Factory implements DataSource.Factory {
        private final int priority;
        private final PriorityTaskManager priorityTaskManager;
        private final DataSource.Factory upstreamFactory;

        public Factory(DataSource.Factory factory, PriorityTaskManager priorityTaskManager, int i) {
            this.upstreamFactory = factory;
            this.priorityTaskManager = priorityTaskManager;
            this.priority = i;
        }

        @Override // androidx.media3.datasource.DataSource.Factory
        public PriorityDataSource createDataSource() {
            return new PriorityDataSource(this.upstreamFactory.createDataSource(), this.priorityTaskManager, this.priority);
        }
    }

    public PriorityDataSource(DataSource dataSource, PriorityTaskManager priorityTaskManager, int i) {
        this.upstream = (DataSource) Assertions.checkNotNull(dataSource);
        this.priorityTaskManager = (PriorityTaskManager) Assertions.checkNotNull(priorityTaskManager);
        this.priority = i;
    }

    @Override // androidx.media3.datasource.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.upstream.addTransferListener(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.priorityTaskManager.proceedOrThrow(this.priority);
        return this.upstream.open(dataSpec);
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        this.priorityTaskManager.proceedOrThrow(this.priority);
        return this.upstream.read(bArr, i, i2);
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // androidx.media3.datasource.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        this.upstream.close();
    }
}
