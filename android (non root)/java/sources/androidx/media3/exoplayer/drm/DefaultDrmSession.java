package androidx.media3.exoplayer.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.CopyOnWriteMultiset;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.ExoMediaDrm;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class DefaultDrmSession implements DrmSession {
    private static final int MAX_LICENSE_DURATION_TO_RENEW_SECONDS = 60;
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    private static final String TAG = "DefaultDrmSession";
    private final MediaDrmCallback callback;
    private CryptoConfig cryptoConfig;
    private ExoMediaDrm.KeyRequest currentKeyRequest;
    private ExoMediaDrm.ProvisionRequest currentProvisionRequest;
    private final CopyOnWriteMultiset<DrmSessionEventListener.EventDispatcher> eventDispatchers;
    private final boolean isPlaceholderSession;
    private final HashMap<String, String> keyRequestParameters;
    private DrmSession.DrmSessionException lastException;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final ExoMediaDrm mediaDrm;
    private final int mode;
    private byte[] offlineLicenseKeySetId;
    private final boolean playClearSamplesWithoutKeys;
    private final Looper playbackLooper;
    private final PlayerId playerId;
    private final ProvisioningManager provisioningManager;
    private int referenceCount;
    private final ReferenceCountListener referenceCountListener;
    private RequestHandler requestHandler;
    private HandlerThread requestHandlerThread;
    private final ResponseHandler responseHandler;
    public final List<DrmInitData.SchemeData> schemeDatas;
    private byte[] sessionId;
    private int state;
    private final UUID uuid;

    /* loaded from: classes2.dex */
    public interface ProvisioningManager {
        void onProvisionCompleted();

        void onProvisionError(Exception exc, boolean z);

        void provisionRequired(DefaultDrmSession defaultDrmSession);
    }

    /* loaded from: classes2.dex */
    public interface ReferenceCountListener {
        void onReferenceCountDecremented(DefaultDrmSession defaultDrmSession, int i);

        void onReferenceCountIncremented(DefaultDrmSession defaultDrmSession, int i);
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    private boolean isOpen() {
        int i = this.state;
        return i == 3 || i == 4;
    }

    /* loaded from: classes2.dex */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(Throwable th) {
            super(th);
        }
    }

    public DefaultDrmSession(UUID uuid, ExoMediaDrm exoMediaDrm, ProvisioningManager provisioningManager, ReferenceCountListener referenceCountListener, List<DrmInitData.SchemeData> list, int i, boolean z, boolean z2, byte[] bArr, HashMap<String, String> hashMap, MediaDrmCallback mediaDrmCallback, Looper looper, LoadErrorHandlingPolicy loadErrorHandlingPolicy, PlayerId playerId) {
        if (i == 1 || i == 3) {
            Assertions.checkNotNull(bArr);
        }
        this.uuid = uuid;
        this.provisioningManager = provisioningManager;
        this.referenceCountListener = referenceCountListener;
        this.mediaDrm = exoMediaDrm;
        this.mode = i;
        this.playClearSamplesWithoutKeys = z;
        this.isPlaceholderSession = z2;
        if (bArr != null) {
            this.offlineLicenseKeySetId = bArr;
            this.schemeDatas = null;
        } else {
            this.schemeDatas = Collections.unmodifiableList((List) Assertions.checkNotNull(list));
        }
        this.keyRequestParameters = hashMap;
        this.callback = mediaDrmCallback;
        this.eventDispatchers = new CopyOnWriteMultiset<>();
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playerId = playerId;
        this.state = 2;
        this.playbackLooper = looper;
        this.responseHandler = new ResponseHandler(looper);
    }

    public boolean hasSessionId(byte[] bArr) {
        verifyPlaybackThread();
        return Arrays.equals(this.sessionId, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onMediaDrmEvent(int i) {
        if (i != 2) {
            return;
        }
        onKeysRequired();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void provision() {
        this.currentProvisionRequest = this.mediaDrm.getProvisionRequest();
        ((RequestHandler) Util.castNonNull(this.requestHandler)).post(0, Assertions.checkNotNull(this.currentProvisionRequest), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onProvisionCompleted() {
        if (openInternal()) {
            doLicense(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onProvisionError(Exception exc, boolean z) {
        onError(exc, z ? 1 : 3);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final int getState() {
        verifyPlaybackThread();
        return this.state;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean playClearSamplesWithoutKeys() {
        verifyPlaybackThread();
        return this.playClearSamplesWithoutKeys;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final DrmSession.DrmSessionException getError() {
        verifyPlaybackThread();
        if (this.state == 1) {
            return this.lastException;
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID getSchemeUuid() {
        verifyPlaybackThread();
        return this.uuid;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final CryptoConfig getCryptoConfig() {
        verifyPlaybackThread();
        return this.cryptoConfig;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public Map<String, String> queryKeyStatus() {
        verifyPlaybackThread();
        byte[] bArr = this.sessionId;
        if (bArr == null) {
            return null;
        }
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public byte[] getOfflineLicenseKeySetId() {
        verifyPlaybackThread();
        return this.offlineLicenseKeySetId;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean requiresSecureDecoder(String str) {
        verifyPlaybackThread();
        return this.mediaDrm.requiresSecureDecoder((byte[]) Assertions.checkStateNotNull(this.sessionId), str);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void acquire(DrmSessionEventListener.EventDispatcher eventDispatcher) {
        verifyPlaybackThread();
        if (this.referenceCount < 0) {
            Log.e(TAG, "Session reference count less than zero: " + this.referenceCount);
            this.referenceCount = 0;
        }
        if (eventDispatcher != null) {
            this.eventDispatchers.add(eventDispatcher);
        }
        int i = this.referenceCount + 1;
        this.referenceCount = i;
        if (i == 1) {
            Assertions.checkState(this.state == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.requestHandlerThread = handlerThread;
            handlerThread.start();
            this.requestHandler = new RequestHandler(this.requestHandlerThread.getLooper());
            if (openInternal()) {
                doLicense(true);
            }
        } else if (eventDispatcher != null && isOpen() && this.eventDispatchers.count(eventDispatcher) == 1) {
            eventDispatcher.drmSessionAcquired(this.state);
        }
        this.referenceCountListener.onReferenceCountIncremented(this, this.referenceCount);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void release(DrmSessionEventListener.EventDispatcher eventDispatcher) {
        verifyPlaybackThread();
        int i = this.referenceCount;
        if (i <= 0) {
            Log.e(TAG, "release() called on a session that's already fully released.");
            return;
        }
        int i2 = i - 1;
        this.referenceCount = i2;
        if (i2 == 0) {
            this.state = 0;
            ((ResponseHandler) Util.castNonNull(this.responseHandler)).removeCallbacksAndMessages(null);
            ((RequestHandler) Util.castNonNull(this.requestHandler)).release();
            this.requestHandler = null;
            ((HandlerThread) Util.castNonNull(this.requestHandlerThread)).quit();
            this.requestHandlerThread = null;
            this.cryptoConfig = null;
            this.lastException = null;
            this.currentKeyRequest = null;
            this.currentProvisionRequest = null;
            byte[] bArr = this.sessionId;
            if (bArr != null) {
                this.mediaDrm.closeSession(bArr);
                this.sessionId = null;
            }
        }
        if (eventDispatcher != null) {
            this.eventDispatchers.remove(eventDispatcher);
            if (this.eventDispatchers.count(eventDispatcher) == 0) {
                eventDispatcher.drmSessionReleased();
            }
        }
        this.referenceCountListener.onReferenceCountDecremented(this, this.referenceCount);
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    private boolean openInternal() {
        if (isOpen()) {
            return true;
        }
        try {
            byte[] openSession = this.mediaDrm.openSession();
            this.sessionId = openSession;
            this.mediaDrm.setPlayerIdForSession(openSession, this.playerId);
            this.cryptoConfig = this.mediaDrm.createCryptoConfig(this.sessionId);
            final int i = 3;
            this.state = 3;
            dispatchEvent(new Consumer() { // from class: androidx.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    ((DrmSessionEventListener.EventDispatcher) obj).drmSessionAcquired(i);
                }
            });
            Assertions.checkNotNull(this.sessionId);
            return true;
        } catch (NotProvisionedException unused) {
            this.provisioningManager.provisionRequired(this);
            return false;
        } catch (Exception e) {
            onError(e, 1);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProvisionResponse(Object obj, Object obj2) {
        if (obj == this.currentProvisionRequest) {
            if (this.state == 2 || isOpen()) {
                this.currentProvisionRequest = null;
                if (obj2 instanceof Exception) {
                    this.provisioningManager.onProvisionError((Exception) obj2, false);
                    return;
                }
                try {
                    this.mediaDrm.provideProvisionResponse((byte[]) obj2);
                    this.provisioningManager.onProvisionCompleted();
                } catch (Exception e) {
                    this.provisioningManager.onProvisionError(e, true);
                }
            }
        }
    }

    @RequiresNonNull({"sessionId"})
    private void doLicense(boolean z) {
        if (this.isPlaceholderSession) {
            return;
        }
        byte[] bArr = (byte[]) Util.castNonNull(this.sessionId);
        int i = this.mode;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.offlineLicenseKeySetId == null || restoreKeys()) {
                    postKeyRequest(bArr, 2, z);
                    return;
                }
                return;
            }
            if (i != 3) {
                return;
            }
            Assertions.checkNotNull(this.offlineLicenseKeySetId);
            Assertions.checkNotNull(this.sessionId);
            postKeyRequest(this.offlineLicenseKeySetId, 3, z);
            return;
        }
        if (this.offlineLicenseKeySetId == null) {
            postKeyRequest(bArr, 1, z);
            return;
        }
        if (this.state == 4 || restoreKeys()) {
            long licenseDurationRemainingSec = getLicenseDurationRemainingSec();
            if (this.mode == 0 && licenseDurationRemainingSec <= 60) {
                Log.d(TAG, "Offline license has expired or will expire soon. Remaining seconds: " + licenseDurationRemainingSec);
                postKeyRequest(bArr, 2, z);
            } else if (licenseDurationRemainingSec <= 0) {
                onError(new KeysExpiredException(), 2);
            } else {
                this.state = 4;
                dispatchEvent(new Consumer() { // from class: androidx.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda2
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        ((DrmSessionEventListener.EventDispatcher) obj).drmKeysRestored();
                    }
                });
            }
        }
    }

    @RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    private boolean restoreKeys() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (Exception e) {
            onError(e, 1);
            return false;
        }
    }

    private long getLicenseDurationRemainingSec() {
        if (!C.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) Assertions.checkNotNull(WidevineUtil.getLicenseDurationRemainingSec(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private void postKeyRequest(byte[] bArr, int i, boolean z) {
        try {
            this.currentKeyRequest = this.mediaDrm.getKeyRequest(bArr, this.schemeDatas, i, this.keyRequestParameters);
            ((RequestHandler) Util.castNonNull(this.requestHandler)).post(1, Assertions.checkNotNull(this.currentKeyRequest), z);
        } catch (Exception e) {
            onKeysError(e, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyResponse(Object obj, Object obj2) {
        if (obj == this.currentKeyRequest && isOpen()) {
            this.currentKeyRequest = null;
            if (obj2 instanceof Exception) {
                onKeysError((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.mode == 3) {
                    this.mediaDrm.provideKeyResponse((byte[]) Util.castNonNull(this.offlineLicenseKeySetId), bArr);
                    dispatchEvent(new Consumer() { // from class: androidx.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda3
                        @Override // androidx.media3.common.util.Consumer
                        public final void accept(Object obj3) {
                            ((DrmSessionEventListener.EventDispatcher) obj3).drmKeysRemoved();
                        }
                    });
                    return;
                }
                byte[] provideKeyResponse = this.mediaDrm.provideKeyResponse(this.sessionId, bArr);
                int i = this.mode;
                if ((i == 2 || (i == 0 && this.offlineLicenseKeySetId != null)) && provideKeyResponse != null && provideKeyResponse.length != 0) {
                    this.offlineLicenseKeySetId = provideKeyResponse;
                }
                this.state = 4;
                dispatchEvent(new Consumer() { // from class: androidx.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda4
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj3) {
                        ((DrmSessionEventListener.EventDispatcher) obj3).drmKeysLoaded();
                    }
                });
            } catch (Exception e) {
                onKeysError(e, true);
            }
        }
    }

    private void onKeysRequired() {
        if (this.mode == 0 && this.state == 4) {
            Util.castNonNull(this.sessionId);
            doLicense(false);
        }
    }

    private void onKeysError(Exception exc, boolean z) {
        if (exc instanceof NotProvisionedException) {
            this.provisioningManager.provisionRequired(this);
        } else {
            onError(exc, z ? 1 : 2);
        }
    }

    private void onError(final Exception exc, int i) {
        this.lastException = new DrmSession.DrmSessionException(exc, DrmUtil.getErrorCodeForMediaDrmException(exc, i));
        Log.e(TAG, "DRM session error", exc);
        dispatchEvent(new Consumer() { // from class: androidx.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda0
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((DrmSessionEventListener.EventDispatcher) obj).drmSessionManagerError(exc);
            }
        });
        if (this.state != 4) {
            this.state = 1;
        }
    }

    private void dispatchEvent(Consumer<DrmSessionEventListener.EventDispatcher> consumer) {
        Iterator<DrmSessionEventListener.EventDispatcher> it = this.eventDispatchers.elementSet().iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    private void verifyPlaybackThread() {
        if (Thread.currentThread() != this.playbackLooper.getThread()) {
            Log.w(TAG, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.playbackLooper.getThread().getName(), new IllegalStateException());
        }
    }

    /* loaded from: classes2.dex */
    private class ResponseHandler extends Handler {
        public ResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession.this.onProvisionResponse(obj, obj2);
            } else {
                if (i != 1) {
                    return;
                }
                DefaultDrmSession.this.onKeyResponse(obj, obj2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class RequestHandler extends Handler {
        private boolean isReleased;

        public RequestHandler(Looper looper) {
            super(looper);
        }

        void post(int i, Object obj, boolean z) {
            obtainMessage(i, new RequestTask(LoadEventInfo.getNewId(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Throwable th;
            RequestTask requestTask = (RequestTask) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    th = DefaultDrmSession.this.callback.executeProvisionRequest(DefaultDrmSession.this.uuid, (ExoMediaDrm.ProvisionRequest) requestTask.request);
                } else if (i == 1) {
                    th = DefaultDrmSession.this.callback.executeKeyRequest(DefaultDrmSession.this.uuid, (ExoMediaDrm.KeyRequest) requestTask.request);
                } else {
                    throw new RuntimeException();
                }
            } catch (MediaDrmCallbackException e) {
                boolean maybeRetryRequest = maybeRetryRequest(message, e);
                th = e;
                if (maybeRetryRequest) {
                    return;
                }
            } catch (Exception e2) {
                Log.w(DefaultDrmSession.TAG, "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
                th = e2;
            }
            DefaultDrmSession.this.loadErrorHandlingPolicy.onLoadTaskConcluded(requestTask.taskId);
            synchronized (this) {
                if (!this.isReleased) {
                    DefaultDrmSession.this.responseHandler.obtainMessage(message.what, Pair.create(requestTask.request, th)).sendToTarget();
                }
            }
        }

        private boolean maybeRetryRequest(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            IOException unexpectedDrmSessionException;
            RequestTask requestTask = (RequestTask) message.obj;
            if (!requestTask.allowRetry) {
                return false;
            }
            requestTask.errorCount++;
            if (requestTask.errorCount > DefaultDrmSession.this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(3)) {
                return false;
            }
            LoadEventInfo loadEventInfo = new LoadEventInfo(requestTask.taskId, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - requestTask.startTimeMs, mediaDrmCallbackException.bytesLoaded);
            MediaLoadData mediaLoadData = new MediaLoadData(3);
            if (mediaDrmCallbackException.getCause() instanceof IOException) {
                unexpectedDrmSessionException = (IOException) mediaDrmCallbackException.getCause();
            } else {
                unexpectedDrmSessionException = new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause());
            }
            long retryDelayMsFor = DefaultDrmSession.this.loadErrorHandlingPolicy.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, mediaLoadData, unexpectedDrmSessionException, requestTask.errorCount));
            if (retryDelayMsFor == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                if (this.isReleased) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), retryDelayMsFor);
                return true;
            }
        }

        public synchronized void release() {
            removeCallbacksAndMessages(null);
            this.isReleased = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class RequestTask {
        public final boolean allowRetry;
        public int errorCount;
        public final Object request;
        public final long startTimeMs;
        public final long taskId;

        public RequestTask(long j, boolean z, long j2, Object obj) {
            this.taskId = j;
            this.allowRetry = z;
            this.startTimeMs = j2;
            this.request = obj;
        }
    }
}
