package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;

/* loaded from: classes2.dex */
public final class SingleSampleMediaSource extends BaseMediaSource {
    private final DataSource.Factory dataSourceFactory;
    private final DataSpec dataSpec;
    private final long durationUs;
    private final Format format;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final MediaItem mediaItem;
    private final Timeline timeline;
    private TransferListener transferListener;
    private final boolean treatLoadErrorsAsEndOfStream;

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void releaseSourceInternal() {
    }

    /* loaded from: classes2.dex */
    public static final class Factory {
        private final DataSource.Factory dataSourceFactory;
        private Object tag;
        private String trackId;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
        private boolean treatLoadErrorsAsEndOfStream = true;

        public Factory setTag(Object obj) {
            this.tag = obj;
            return this;
        }

        @Deprecated
        public Factory setTrackId(String str) {
            this.trackId = str;
            return this;
        }

        public Factory setTreatLoadErrorsAsEndOfStream(boolean z) {
            this.treatLoadErrorsAsEndOfStream = z;
            return this;
        }

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = (DataSource.Factory) Assertions.checkNotNull(factory);
        }

        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        public SingleSampleMediaSource createMediaSource(MediaItem.SubtitleConfiguration subtitleConfiguration, long j) {
            return new SingleSampleMediaSource(this.trackId, subtitleConfiguration, this.dataSourceFactory, j, this.loadErrorHandlingPolicy, this.treatLoadErrorsAsEndOfStream, this.tag);
        }
    }

    private SingleSampleMediaSource(String str, MediaItem.SubtitleConfiguration subtitleConfiguration, DataSource.Factory factory, long j, LoadErrorHandlingPolicy loadErrorHandlingPolicy, boolean z, Object obj) {
        this.dataSourceFactory = factory;
        this.durationUs = j;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.treatLoadErrorsAsEndOfStream = z;
        MediaItem build = new MediaItem.Builder().setUri(Uri.EMPTY).setMediaId(subtitleConfiguration.uri.toString()).setSubtitleConfigurations(ImmutableList.of(subtitleConfiguration)).setTag(obj).build();
        this.mediaItem = build;
        this.format = new Format.Builder().setSampleMimeType((String) MoreObjects.firstNonNull(subtitleConfiguration.mimeType, "text/x-unknown")).setLanguage(subtitleConfiguration.language).setSelectionFlags(subtitleConfiguration.selectionFlags).setRoleFlags(subtitleConfiguration.roleFlags).setLabel(subtitleConfiguration.label).setId(subtitleConfiguration.id != null ? subtitleConfiguration.id : str).build();
        this.dataSpec = new DataSpec.Builder().setUri(subtitleConfiguration.uri).setFlags(1).build();
        this.timeline = new SinglePeriodTimeline(j, true, false, false, (Object) null, build);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener transferListener) {
        this.transferListener = transferListener;
        refreshSourceInfo(this.timeline);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new SingleSampleMediaPeriod(this.dataSpec, this.dataSourceFactory, this.transferListener, this.format, this.durationUs, this.loadErrorHandlingPolicy, createEventDispatcher(mediaPeriodId), this.treatLoadErrorsAsEndOfStream);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((SingleSampleMediaPeriod) mediaPeriod).release();
    }
}
