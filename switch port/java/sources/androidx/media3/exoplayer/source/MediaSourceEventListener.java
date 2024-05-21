package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public interface MediaSourceEventListener {
    default void onDownstreamFormatChanged(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
    }

    default void onLoadCanceled(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    default void onLoadCompleted(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    default void onLoadError(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
    }

    default void onLoadStarted(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    default void onUpstreamDiscarded(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
    }

    /* loaded from: classes2.dex */
    public static class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i, MediaSource.MediaPeriodId mediaPeriodId) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i;
            this.mediaPeriodId = mediaPeriodId;
        }

        public EventDispatcher withParameters(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            return new EventDispatcher(this.listenerAndHandlers, i, mediaPeriodId);
        }

        @Deprecated
        public EventDispatcher withParameters(int i, MediaSource.MediaPeriodId mediaPeriodId, long j) {
            return new EventDispatcher(this.listenerAndHandlers, i, mediaPeriodId);
        }

        public void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            Assertions.checkNotNull(handler);
            Assertions.checkNotNull(mediaSourceEventListener);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                if (next.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(next);
                }
            }
        }

        public void loadStarted(LoadEventInfo loadEventInfo, int i) {
            loadStarted(loadEventInfo, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void loadStarted(LoadEventInfo loadEventInfo, int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            loadStarted(loadEventInfo, new MediaLoadData(i, i2, format, i3, obj, Util.usToMs(j), Util.usToMs(j2)));
        }

        public void loadStarted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                Util.postOrRun(next.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceEventListener.EventDispatcher.this.m5263x7ecff69a(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$loadStarted$0$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5263x7ecff69a(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadStarted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, int i) {
            loadCompleted(loadEventInfo, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            loadCompleted(loadEventInfo, new MediaLoadData(i, i2, format, i3, obj, Util.usToMs(j), Util.usToMs(j2)));
        }

        public void loadCompleted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                Util.postOrRun(next.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceEventListener.EventDispatcher.this.m5261xeec2c4e5(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$loadCompleted$1$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5261xeec2c4e5(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCompleted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, int i) {
            loadCanceled(loadEventInfo, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            loadCanceled(loadEventInfo, new MediaLoadData(i, i2, format, i3, obj, Util.usToMs(j), Util.usToMs(j2)));
        }

        public void loadCanceled(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                Util.postOrRun(next.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceEventListener.EventDispatcher.this.m5260x7abee11a(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$loadCanceled$2$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5260x7abee11a(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCanceled(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public void loadError(LoadEventInfo loadEventInfo, int i, IOException iOException, boolean z) {
            loadError(loadEventInfo, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, iOException, z);
        }

        public void loadError(LoadEventInfo loadEventInfo, int i, int i2, Format format, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
            loadError(loadEventInfo, new MediaLoadData(i, i2, format, i3, obj, Util.usToMs(j), Util.usToMs(j2)), iOException, z);
        }

        public void loadError(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                Util.postOrRun(next.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceEventListener.EventDispatcher.this.m5262xa1507124(mediaSourceEventListener, loadEventInfo, mediaLoadData, iOException, z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$loadError$3$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5262xa1507124(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            mediaSourceEventListener.onLoadError(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z);
        }

        public void upstreamDiscarded(int i, long j, long j2) {
            upstreamDiscarded(new MediaLoadData(1, i, null, 3, null, Util.usToMs(j), Util.usToMs(j2)));
        }

        public void upstreamDiscarded(final MediaLoadData mediaLoadData) {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                Util.postOrRun(next.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceEventListener.EventDispatcher.this.m5264x1ba5ea45(mediaSourceEventListener, mediaPeriodId, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$upstreamDiscarded$4$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5264x1ba5ea45(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onUpstreamDiscarded(this.windowIndex, mediaPeriodId, mediaLoadData);
        }

        public void downstreamFormatChanged(int i, Format format, int i2, Object obj, long j) {
            downstreamFormatChanged(new MediaLoadData(1, i, format, i2, obj, Util.usToMs(j), -9223372036854775807L));
        }

        public void downstreamFormatChanged(final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                Util.postOrRun(next.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceEventListener.EventDispatcher.this.m5259xc39c8e5f(mediaSourceEventListener, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$downstreamFormatChanged$5$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5259xc39c8e5f(MediaSourceEventListener mediaSourceEventListener, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onDownstreamFormatChanged(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static final class ListenerAndHandler {
            public Handler handler;
            public MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }
    }
}
