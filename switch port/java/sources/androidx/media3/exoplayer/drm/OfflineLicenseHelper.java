package androidx.media3.exoplayer.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.util.concurrent.SettableFuture;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* loaded from: classes2.dex */
public final class OfflineLicenseHelper {
    private static final Format FORMAT_WITH_EMPTY_DRM_INIT_DATA = new Format.Builder().setDrmInitData(new DrmInitData(new DrmInitData.SchemeData[0])).build();
    private final ConditionVariable drmListenerConditionVariable;
    private final DefaultDrmSessionManager drmSessionManager;
    private final DrmSessionEventListener.EventDispatcher eventDispatcher;
    private final Handler handler;
    private final HandlerThread handlerThread;

    public static OfflineLicenseHelper newWidevineInstance(String str, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, false, factory, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z, factory, null, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, DataSource.Factory factory, Map<String, String> map, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new OfflineLicenseHelper(new DefaultDrmSessionManager.Builder().setKeyRequestParameters(map).build(new HttpMediaDrmCallback(str, z, factory)), eventDispatcher);
    }

    public OfflineLicenseHelper(DefaultDrmSessionManager defaultDrmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = defaultDrmSessionManager;
        this.eventDispatcher = eventDispatcher;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper());
        this.drmListenerConditionVariable = new ConditionVariable();
        eventDispatcher.addEventListener(new Handler(handlerThread.getLooper()), new DrmSessionEventListener() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper.1
            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysLoaded(int i, MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmSessionManagerError(int i, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysRestored(int i, MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysRemoved(int i, MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }
        });
    }

    public synchronized byte[] downloadLicense(Format format) throws DrmSession.DrmSessionException {
        Assertions.checkArgument(format.drmInitData != null);
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, null, format);
    }

    public synchronized byte[] renewLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(bArr);
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public synchronized void releaseLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(bArr);
        acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(3, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) throws DrmSession.DrmSessionException {
        final SettableFuture create;
        Assertions.checkNotNull(bArr);
        try {
            final DrmSession acquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(1, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
            create = SettableFuture.create();
            this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    OfflineLicenseHelper.this.m5246xc6195285(create, acquireFirstSessionOnHandlerThread);
                }
            });
            try {
                try {
                } catch (InterruptedException | ExecutionException e) {
                    throw new IllegalStateException(e);
                }
            } finally {
                releaseManagerOnHandlerThread();
            }
        } catch (DrmSession.DrmSessionException e2) {
            if (e2.getCause() instanceof KeysExpiredException) {
                return Pair.create(0L, 0L);
            }
            throw e2;
        }
        return (Pair) create.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getLicenseDurationRemainingSec$0$androidx-media3-exoplayer-drm-OfflineLicenseHelper, reason: not valid java name */
    public /* synthetic */ void m5246xc6195285(SettableFuture settableFuture, DrmSession drmSession) {
        try {
            settableFuture.set((Pair) Assertions.checkNotNull(WidevineUtil.getLicenseDurationRemainingSec(drmSession)));
        } finally {
            try {
            } finally {
            }
        }
    }

    public void release() {
        this.handlerThread.quit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private byte[] acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(int i, byte[] bArr, Format format) throws DrmSession.DrmSessionException {
        final DrmSession acquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(i, bArr, format);
        final SettableFuture create = SettableFuture.create();
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                OfflineLicenseHelper.this.m5245x4ec00c9e(create, acquireFirstSessionOnHandlerThread);
            }
        });
        try {
            try {
                return (byte[]) Assertions.checkNotNull((byte[]) create.get());
            } catch (InterruptedException | ExecutionException e) {
                throw new IllegalStateException(e);
            }
        } finally {
            releaseManagerOnHandlerThread();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1$androidx-media3-exoplayer-drm-OfflineLicenseHelper, reason: not valid java name */
    public /* synthetic */ void m5245x4ec00c9e(SettableFuture settableFuture, DrmSession drmSession) {
        try {
            settableFuture.set(drmSession.getOfflineLicenseKeySetId());
        } finally {
            try {
            } finally {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DrmSession acquireFirstSessionOnHandlerThread(final int i, final byte[] bArr, final Format format) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(format.drmInitData);
        final SettableFuture create = SettableFuture.create();
        this.drmListenerConditionVariable.close();
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                OfflineLicenseHelper.this.m5243xf4292904(i, bArr, create, format);
            }
        });
        try {
            final DrmSession drmSession = (DrmSession) create.get();
            this.drmListenerConditionVariable.block();
            final SettableFuture create2 = SettableFuture.create();
            this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    OfflineLicenseHelper.this.m5244x2201c363(drmSession, create2);
                }
            });
            try {
                if (create2.get() == 0) {
                    return drmSession;
                }
                throw ((DrmSession.DrmSessionException) create2.get());
            } catch (InterruptedException | ExecutionException e) {
                throw new IllegalStateException(e);
            }
        } catch (InterruptedException | ExecutionException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$acquireFirstSessionOnHandlerThread$2$androidx-media3-exoplayer-drm-OfflineLicenseHelper, reason: not valid java name */
    public /* synthetic */ void m5243xf4292904(int i, byte[] bArr, SettableFuture settableFuture, Format format) {
        try {
            this.drmSessionManager.setPlayer((Looper) Assertions.checkNotNull(Looper.myLooper()), PlayerId.UNSET);
            this.drmSessionManager.prepare();
            try {
                this.drmSessionManager.setMode(i, bArr);
                settableFuture.set((DrmSession) Assertions.checkNotNull(this.drmSessionManager.acquireSession(this.eventDispatcher, format)));
            } catch (Throwable th) {
                this.drmSessionManager.release();
                throw th;
            }
        } catch (Throwable th2) {
            settableFuture.setException(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$acquireFirstSessionOnHandlerThread$3$androidx-media3-exoplayer-drm-OfflineLicenseHelper, reason: not valid java name */
    public /* synthetic */ void m5244x2201c363(DrmSession drmSession, SettableFuture settableFuture) {
        try {
            DrmSession.DrmSessionException error = drmSession.getError();
            if (drmSession.getState() == 1) {
                drmSession.release(this.eventDispatcher);
                this.drmSessionManager.release();
            }
            settableFuture.set(error);
        } catch (Throwable th) {
            settableFuture.setException(th);
            drmSession.release(this.eventDispatcher);
            this.drmSessionManager.release();
        }
    }

    private void releaseManagerOnHandlerThread() {
        final SettableFuture create = SettableFuture.create();
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                OfflineLicenseHelper.this.m5247xf255d686(create);
            }
        });
        try {
            create.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$releaseManagerOnHandlerThread$4$androidx-media3-exoplayer-drm-OfflineLicenseHelper, reason: not valid java name */
    public /* synthetic */ void m5247xf255d686(SettableFuture settableFuture) {
        try {
            this.drmSessionManager.release();
            settableFuture.set(null);
        } catch (Throwable th) {
            settableFuture.setException(th);
        }
    }
}
