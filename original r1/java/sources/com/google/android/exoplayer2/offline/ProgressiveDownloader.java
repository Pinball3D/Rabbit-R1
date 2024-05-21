package com.google.android.exoplayer2.offline;

import androidx.media3.exoplayer.offline.DefaultDownloaderFactory$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.offline.Downloader;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheWriter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class ProgressiveDownloader implements Downloader {
    private final CacheWriter cacheWriter;
    private final CacheDataSource dataSource;
    private final DataSpec dataSpec;
    private volatile RunnableFutureTask<Void, IOException> downloadRunnable;
    private final Executor executor;
    private volatile boolean isCanceled;
    private final PriorityTaskManager priorityTaskManager;
    private Downloader.ProgressListener progressListener;

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new DefaultDownloaderFactory$$ExternalSyntheticLambda0());
    }

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        this.executor = (Executor) Assertions.checkNotNull(executor);
        Assertions.checkNotNull(mediaItem.localConfiguration);
        DataSpec build = new DataSpec.Builder().setUri(mediaItem.localConfiguration.uri).setKey(mediaItem.localConfiguration.customCacheKey).setFlags(4).build();
        this.dataSpec = build;
        CacheDataSource createDataSourceForDownloading = factory.createDataSourceForDownloading();
        this.dataSource = createDataSourceForDownloading;
        this.cacheWriter = new CacheWriter(createDataSourceForDownloading, build, null, new CacheWriter.ProgressListener() { // from class: com.google.android.exoplayer2.offline.ProgressiveDownloader$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener
            public final void onProgress(long j, long j2, long j3) {
                ProgressiveDownloader.this.onProgress(j, j2, j3);
            }
        });
        this.priorityTaskManager = factory.getUpstreamPriorityTaskManager();
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void download(Downloader.ProgressListener progressListener) throws IOException, InterruptedException {
        this.progressListener = progressListener;
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            priorityTaskManager.add(-1000);
        }
        boolean z = false;
        while (!z) {
            try {
                if (this.isCanceled) {
                    break;
                }
                this.downloadRunnable = new RunnableFutureTask<Void, IOException>() { // from class: com.google.android.exoplayer2.offline.ProgressiveDownloader.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.android.exoplayer2.util.RunnableFutureTask
                    public Void doWork() throws IOException {
                        ProgressiveDownloader.this.cacheWriter.cache();
                        return null;
                    }

                    @Override // com.google.android.exoplayer2.util.RunnableFutureTask
                    protected void cancelWork() {
                        ProgressiveDownloader.this.cacheWriter.cancel();
                    }
                };
                PriorityTaskManager priorityTaskManager2 = this.priorityTaskManager;
                if (priorityTaskManager2 != null) {
                    priorityTaskManager2.proceed(-1000);
                }
                this.executor.execute(this.downloadRunnable);
                try {
                    this.downloadRunnable.get();
                    z = true;
                } catch (ExecutionException e) {
                    Throwable th = (Throwable) Assertions.checkNotNull(e.getCause());
                    if (!(th instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (th instanceof IOException) {
                            throw ((IOException) th);
                        }
                        Util.sneakyThrow(th);
                    }
                }
            } finally {
                ((RunnableFutureTask) Assertions.checkNotNull(this.downloadRunnable)).blockUntilFinished();
                PriorityTaskManager priorityTaskManager3 = this.priorityTaskManager;
                if (priorityTaskManager3 != null) {
                    priorityTaskManager3.remove(-1000);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void cancel() {
        this.isCanceled = true;
        RunnableFutureTask<Void, IOException> runnableFutureTask = this.downloadRunnable;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void remove() {
        this.dataSource.getCache().removeResource(this.dataSource.getCacheKeyFactory().buildCacheKey(this.dataSpec));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProgress(long j, long j2, long j3) {
        Downloader.ProgressListener progressListener = this.progressListener;
        if (progressListener == null) {
            return;
        }
        progressListener.onProgress(j, j2, (j == -1 || j == 0) ? -1.0f : (((float) j2) * 100.0f) / ((float) j));
    }
}
