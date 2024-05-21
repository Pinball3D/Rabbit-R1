package io.flutter.embedding.engine;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Size;
import android.util.TypedValue;
import android.view.Surface;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.PlatformMessageHandler;
import io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorsStack;
import io.flutter.embedding.engine.renderer.FlutterUiDisplayListener;
import io.flutter.embedding.engine.renderer.SurfaceTextureWrapper;
import io.flutter.embedding.engine.systemchannels.SettingsChannel;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.localization.LocalizationPlugin;
import io.flutter.plugin.platform.PlatformViewsController;
import io.flutter.util.Preconditions;
import io.flutter.view.AccessibilityBridge;
import io.flutter.view.FlutterCallbackInformation;
import io.flutter.view.TextureRegistry;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes3.dex */
public class FlutterJNI {
    private static final String TAG = "FlutterJNI";
    private static AsyncWaitForVsyncDelegate asyncWaitForVsyncDelegate = null;
    private static float displayDensity = -1.0f;
    private static float displayHeight = -1.0f;
    private static float displayWidth = -1.0f;
    private static boolean initCalled = false;
    private static boolean loadLibraryCalled = false;
    private static boolean prefetchDefaultFontManagerCalled = false;
    private static float refreshRateFPS = 60.0f;
    private static String vmServiceUri;
    private AccessibilityDelegate accessibilityDelegate;
    private DeferredComponentManager deferredComponentManager;
    private LocalizationPlugin localizationPlugin;
    private Long nativeShellHolderId;
    private PlatformMessageHandler platformMessageHandler;
    private PlatformViewsController platformViewsController;
    private ReentrantReadWriteLock shellHolderLock = new ReentrantReadWriteLock();
    private final Set<FlutterEngine.EngineLifecycleListener> engineLifecycleListeners = new CopyOnWriteArraySet();
    private final Set<FlutterUiDisplayListener> flutterUiDisplayListeners = new CopyOnWriteArraySet();
    private final Looper mainLooper = Looper.getMainLooper();

    /* loaded from: classes3.dex */
    public interface AccessibilityDelegate {
        void updateCustomAccessibilityActions(ByteBuffer byteBuffer, String[] strArr);

        void updateSemantics(ByteBuffer byteBuffer, String[] strArr, ByteBuffer[] byteBufferArr);
    }

    /* loaded from: classes3.dex */
    public interface AsyncWaitForVsyncDelegate {
        void asyncWaitForVsync(long j);
    }

    @Deprecated
    public static String getObservatoryUri() {
        return vmServiceUri;
    }

    public static String getVMServiceUri() {
        return vmServiceUri;
    }

    private native long nativeAttach(FlutterJNI flutterJNI);

    private native void nativeCleanupMessageData(long j);

    private native void nativeDeferredComponentInstallFailure(int i, String str, boolean z);

    private native void nativeDestroy(long j);

    private native void nativeDispatchEmptyPlatformMessage(long j, String str, int i);

    private native void nativeDispatchPlatformMessage(long j, String str, ByteBuffer byteBuffer, int i, int i2);

    private native void nativeDispatchPointerDataPacket(long j, ByteBuffer byteBuffer, int i);

    private native void nativeDispatchSemanticsAction(long j, int i, int i2, ByteBuffer byteBuffer, int i3);

    private native boolean nativeFlutterTextUtilsIsEmoji(int i);

    private native boolean nativeFlutterTextUtilsIsEmojiModifier(int i);

    private native boolean nativeFlutterTextUtilsIsEmojiModifierBase(int i);

    private native boolean nativeFlutterTextUtilsIsRegionalIndicator(int i);

    private native boolean nativeFlutterTextUtilsIsVariationSelector(int i);

    private native Bitmap nativeGetBitmap(long j);

    private native boolean nativeGetIsSoftwareRenderingEnabled();

    public static native void nativeImageHeaderCallback(long j, int i, int i2);

    private static native void nativeInit(Context context, String[] strArr, String str, String str2, String str3, long j);

    private native void nativeInvokePlatformMessageEmptyResponseCallback(long j, int i);

    private native void nativeInvokePlatformMessageResponseCallback(long j, int i, ByteBuffer byteBuffer, int i2);

    private native void nativeLoadDartDeferredLibrary(long j, int i, String[] strArr);

    @Deprecated
    public static native FlutterCallbackInformation nativeLookupCallbackInformation(long j);

    private native void nativeMarkTextureFrameAvailable(long j, long j2);

    private native void nativeNotifyLowMemoryWarning(long j);

    private native void nativeOnVsync(long j, long j2, long j3);

    private static native void nativePrefetchDefaultFontManager();

    private native void nativeRegisterImageTexture(long j, long j2, WeakReference<TextureRegistry.ImageConsumer> weakReference);

    private native void nativeRegisterTexture(long j, long j2, WeakReference<SurfaceTextureWrapper> weakReference);

    private native void nativeRunBundleAndSnapshotFromLibrary(long j, String str, String str2, String str3, AssetManager assetManager, List<String> list);

    private native void nativeSetAccessibilityFeatures(long j, int i);

    private native void nativeSetIsRenderingToImageView(long j, boolean z);

    private native void nativeSetSemanticsEnabled(long j, boolean z);

    private native void nativeSetViewportMetrics(long j, float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int[] iArr, int[] iArr2, int[] iArr3);

    private native FlutterJNI nativeSpawn(long j, String str, String str2, String str3, List<String> list);

    private native void nativeSurfaceChanged(long j, int i, int i2);

    private native void nativeSurfaceCreated(long j, Surface surface);

    private native void nativeSurfaceDestroyed(long j);

    private native void nativeSurfaceWindowChanged(long j, Surface surface);

    private native void nativeUnregisterTexture(long j, long j2);

    private native void nativeUpdateDisplayMetrics(long j);

    private native void nativeUpdateJavaAssetManager(long j, AssetManager assetManager, String str);

    private native void nativeUpdateRefreshRate(float f);

    public boolean isAttached() {
        return this.nativeShellHolderId != null;
    }

    public void setAsyncWaitForVsyncDelegate(AsyncWaitForVsyncDelegate asyncWaitForVsyncDelegate2) {
        asyncWaitForVsyncDelegate = asyncWaitForVsyncDelegate2;
    }

    /* loaded from: classes3.dex */
    public static class Factory {
        public FlutterJNI provideFlutterJNI() {
            return new FlutterJNI();
        }
    }

    public void loadLibrary() {
        if (loadLibraryCalled) {
            Log.w(TAG, "FlutterJNI.loadLibrary called more than once");
        }
        System.loadLibrary("flutter");
        loadLibraryCalled = true;
    }

    public void prefetchDefaultFontManager() {
        if (prefetchDefaultFontManagerCalled) {
            Log.w(TAG, "FlutterJNI.prefetchDefaultFontManager called more than once");
        }
        nativePrefetchDefaultFontManager();
        prefetchDefaultFontManagerCalled = true;
    }

    public void init(Context context, String[] strArr, String str, String str2, String str3, long j) {
        if (initCalled) {
            Log.w(TAG, "FlutterJNI.init called more than once");
        }
        nativeInit(context, strArr, str, str2, str3, j);
        initCalled = true;
    }

    public boolean getIsSoftwareRenderingEnabled() {
        return nativeGetIsSoftwareRenderingEnabled();
    }

    public void setRefreshRateFPS(float f) {
        refreshRateFPS = f;
        updateRefreshRate();
    }

    public void updateDisplayMetrics(int i, float f, float f2, float f3) {
        displayWidth = f;
        displayHeight = f2;
        displayDensity = f3;
        if (loadLibraryCalled) {
            nativeUpdateDisplayMetrics(this.nativeShellHolderId.longValue());
        }
    }

    public void updateRefreshRate() {
        if (loadLibraryCalled) {
            nativeUpdateRefreshRate(refreshRateFPS);
        }
    }

    private static void asyncWaitForVsync(long j) {
        AsyncWaitForVsyncDelegate asyncWaitForVsyncDelegate2 = asyncWaitForVsyncDelegate;
        if (asyncWaitForVsyncDelegate2 != null) {
            asyncWaitForVsyncDelegate2.asyncWaitForVsync(j);
            return;
        }
        throw new IllegalStateException("An AsyncWaitForVsyncDelegate must be registered with FlutterJNI before asyncWaitForVsync() is invoked.");
    }

    public void onVsync(long j, long j2, long j3) {
        nativeOnVsync(j, j2, j3);
    }

    public boolean isCodePointEmoji(int i) {
        return nativeFlutterTextUtilsIsEmoji(i);
    }

    public boolean isCodePointEmojiModifier(int i) {
        return nativeFlutterTextUtilsIsEmojiModifier(i);
    }

    public boolean isCodePointEmojiModifierBase(int i) {
        return nativeFlutterTextUtilsIsEmojiModifierBase(i);
    }

    public boolean isCodePointVariantSelector(int i) {
        return nativeFlutterTextUtilsIsVariationSelector(i);
    }

    public boolean isCodePointRegionalIndicator(int i) {
        return nativeFlutterTextUtilsIsRegionalIndicator(i);
    }

    public void attachToNative() {
        ensureRunningOnMainThread();
        ensureNotAttachedToNative();
        this.shellHolderLock.writeLock().lock();
        try {
            this.nativeShellHolderId = Long.valueOf(performNativeAttach(this));
        } finally {
            this.shellHolderLock.writeLock().unlock();
        }
    }

    public long performNativeAttach(FlutterJNI flutterJNI) {
        return nativeAttach(flutterJNI);
    }

    public FlutterJNI spawn(String str, String str2, String str3, List<String> list) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        FlutterJNI nativeSpawn = nativeSpawn(this.nativeShellHolderId.longValue(), str, str2, str3, list);
        Long l = nativeSpawn.nativeShellHolderId;
        Preconditions.checkState((l == null || l.longValue() == 0) ? false : true, "Failed to spawn new JNI connected shell from existing shell.");
        return nativeSpawn;
    }

    public void detachFromNativeAndReleaseResources() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        this.shellHolderLock.writeLock().lock();
        try {
            nativeDestroy(this.nativeShellHolderId.longValue());
            this.nativeShellHolderId = null;
        } finally {
            this.shellHolderLock.writeLock().unlock();
        }
    }

    private void ensureNotAttachedToNative() {
        if (this.nativeShellHolderId != null) {
            throw new RuntimeException("Cannot execute operation because FlutterJNI is attached to native.");
        }
    }

    private void ensureAttachedToNative() {
        if (this.nativeShellHolderId == null) {
            throw new RuntimeException("Cannot execute operation because FlutterJNI is not attached to native.");
        }
    }

    public void addIsDisplayingFlutterUiListener(FlutterUiDisplayListener flutterUiDisplayListener) {
        ensureRunningOnMainThread();
        this.flutterUiDisplayListeners.add(flutterUiDisplayListener);
    }

    public void removeIsDisplayingFlutterUiListener(FlutterUiDisplayListener flutterUiDisplayListener) {
        ensureRunningOnMainThread();
        this.flutterUiDisplayListeners.remove(flutterUiDisplayListener);
    }

    public static Bitmap decodeImage(ByteBuffer byteBuffer, final long j) {
        try {
            return ImageDecoder.decodeBitmap(ImageDecoder.createSource(byteBuffer), new ImageDecoder.OnHeaderDecodedListener() { // from class: io.flutter.embedding.engine.FlutterJNI$$ExternalSyntheticLambda0
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    FlutterJNI.lambda$decodeImage$0(j, imageDecoder, imageInfo, source);
                }
            });
        } catch (IOException e) {
            Log.e(TAG, "Failed to decode image", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$decodeImage$0(long j, ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
        imageDecoder.setAllocator(1);
        Size size = imageInfo.getSize();
        nativeImageHeaderCallback(j, size.getWidth(), size.getHeight());
    }

    public void onFirstFrame() {
        ensureRunningOnMainThread();
        Iterator<FlutterUiDisplayListener> it = this.flutterUiDisplayListeners.iterator();
        while (it.hasNext()) {
            it.next().onFlutterUiDisplayed();
        }
    }

    void onRenderingStopped() {
        ensureRunningOnMainThread();
        Iterator<FlutterUiDisplayListener> it = this.flutterUiDisplayListeners.iterator();
        while (it.hasNext()) {
            it.next().onFlutterUiNoLongerDisplayed();
        }
    }

    public void onSurfaceCreated(Surface surface) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceCreated(this.nativeShellHolderId.longValue(), surface);
    }

    public void onSurfaceWindowChanged(Surface surface) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceWindowChanged(this.nativeShellHolderId.longValue(), surface);
    }

    public void onSurfaceChanged(int i, int i2) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSurfaceChanged(this.nativeShellHolderId.longValue(), i, i2);
    }

    public void onSurfaceDestroyed() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        onRenderingStopped();
        nativeSurfaceDestroyed(this.nativeShellHolderId.longValue());
    }

    public void setViewportMetrics(float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int[] iArr, int[] iArr2, int[] iArr3) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetViewportMetrics(this.nativeShellHolderId.longValue(), f, i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, iArr, iArr2, iArr3);
    }

    public void SetIsRenderingToImageView(boolean z) {
        nativeSetIsRenderingToImageView(this.nativeShellHolderId.longValue(), z);
    }

    public void dispatchPointerDataPacket(ByteBuffer byteBuffer, int i) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDispatchPointerDataPacket(this.nativeShellHolderId.longValue(), byteBuffer, i);
    }

    public void setPlatformViewsController(PlatformViewsController platformViewsController) {
        ensureRunningOnMainThread();
        this.platformViewsController = platformViewsController;
    }

    public void setAccessibilityDelegate(AccessibilityDelegate accessibilityDelegate) {
        ensureRunningOnMainThread();
        this.accessibilityDelegate = accessibilityDelegate;
    }

    private void updateSemantics(ByteBuffer byteBuffer, String[] strArr, ByteBuffer[] byteBufferArr) {
        ensureRunningOnMainThread();
        AccessibilityDelegate accessibilityDelegate = this.accessibilityDelegate;
        if (accessibilityDelegate != null) {
            accessibilityDelegate.updateSemantics(byteBuffer, strArr, byteBufferArr);
        }
    }

    private void updateCustomAccessibilityActions(ByteBuffer byteBuffer, String[] strArr) {
        ensureRunningOnMainThread();
        AccessibilityDelegate accessibilityDelegate = this.accessibilityDelegate;
        if (accessibilityDelegate != null) {
            accessibilityDelegate.updateCustomAccessibilityActions(byteBuffer, strArr);
        }
    }

    public void dispatchSemanticsAction(int i, AccessibilityBridge.Action action) {
        dispatchSemanticsAction(i, action, null);
    }

    public void dispatchSemanticsAction(int i, AccessibilityBridge.Action action, Object obj) {
        ByteBuffer byteBuffer;
        int i2;
        ensureAttachedToNative();
        if (obj != null) {
            byteBuffer = StandardMessageCodec.INSTANCE.encodeMessage(obj);
            i2 = byteBuffer.position();
        } else {
            byteBuffer = null;
            i2 = 0;
        }
        dispatchSemanticsAction(i, action.value, byteBuffer, i2);
    }

    public void dispatchSemanticsAction(int i, int i2, ByteBuffer byteBuffer, int i3) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeDispatchSemanticsAction(this.nativeShellHolderId.longValue(), i, i2, byteBuffer, i3);
    }

    public void setSemanticsEnabled(boolean z) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetSemanticsEnabled(this.nativeShellHolderId.longValue(), z);
    }

    public void setAccessibilityFeatures(int i) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeSetAccessibilityFeatures(this.nativeShellHolderId.longValue(), i);
    }

    public void registerTexture(long j, SurfaceTextureWrapper surfaceTextureWrapper) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeRegisterTexture(this.nativeShellHolderId.longValue(), j, new WeakReference<>(surfaceTextureWrapper));
    }

    public void registerImageTexture(long j, TextureRegistry.ImageConsumer imageConsumer) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeRegisterImageTexture(this.nativeShellHolderId.longValue(), j, new WeakReference<>(imageConsumer));
    }

    public void markTextureFrameAvailable(long j) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeMarkTextureFrameAvailable(this.nativeShellHolderId.longValue(), j);
    }

    public void unregisterTexture(long j) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeUnregisterTexture(this.nativeShellHolderId.longValue(), j);
    }

    public void runBundleAndSnapshotFromLibrary(String str, String str2, String str3, AssetManager assetManager, List<String> list) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeRunBundleAndSnapshotFromLibrary(this.nativeShellHolderId.longValue(), str, str2, str3, assetManager, list);
    }

    public void setPlatformMessageHandler(PlatformMessageHandler platformMessageHandler) {
        ensureRunningOnMainThread();
        this.platformMessageHandler = platformMessageHandler;
    }

    public void cleanupMessageData(long j) {
        nativeCleanupMessageData(j);
    }

    public void handlePlatformMessage(String str, ByteBuffer byteBuffer, int i, long j) {
        PlatformMessageHandler platformMessageHandler = this.platformMessageHandler;
        if (platformMessageHandler != null) {
            platformMessageHandler.handleMessageFromDart(str, byteBuffer, i, j);
        } else {
            nativeCleanupMessageData(j);
        }
    }

    private void handlePlatformMessageResponse(int i, ByteBuffer byteBuffer) {
        PlatformMessageHandler platformMessageHandler = this.platformMessageHandler;
        if (platformMessageHandler != null) {
            platformMessageHandler.handlePlatformMessageResponse(i, byteBuffer);
        }
    }

    public void dispatchEmptyPlatformMessage(String str, int i) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeDispatchEmptyPlatformMessage(this.nativeShellHolderId.longValue(), str, i);
        } else {
            Log.w(TAG, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: " + str + ". Response ID: " + i);
        }
    }

    public void dispatchPlatformMessage(String str, ByteBuffer byteBuffer, int i, int i2) {
        ensureRunningOnMainThread();
        if (isAttached()) {
            nativeDispatchPlatformMessage(this.nativeShellHolderId.longValue(), str, byteBuffer, i, i2);
        } else {
            Log.w(TAG, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: " + str + ". Response ID: " + i2);
        }
    }

    public void invokePlatformMessageEmptyResponseCallback(int i) {
        this.shellHolderLock.readLock().lock();
        try {
            if (isAttached()) {
                nativeInvokePlatformMessageEmptyResponseCallback(this.nativeShellHolderId.longValue(), i);
            } else {
                Log.w(TAG, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: " + i);
            }
        } finally {
            this.shellHolderLock.readLock().unlock();
        }
    }

    public void invokePlatformMessageResponseCallback(int i, ByteBuffer byteBuffer, int i2) {
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("Expected a direct ByteBuffer.");
        }
        this.shellHolderLock.readLock().lock();
        try {
            if (isAttached()) {
                nativeInvokePlatformMessageResponseCallback(this.nativeShellHolderId.longValue(), i, byteBuffer, i2);
            } else {
                Log.w(TAG, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: " + i);
            }
        } finally {
            this.shellHolderLock.readLock().unlock();
        }
    }

    public void addEngineLifecycleListener(FlutterEngine.EngineLifecycleListener engineLifecycleListener) {
        ensureRunningOnMainThread();
        this.engineLifecycleListeners.add(engineLifecycleListener);
    }

    public void removeEngineLifecycleListener(FlutterEngine.EngineLifecycleListener engineLifecycleListener) {
        ensureRunningOnMainThread();
        this.engineLifecycleListeners.remove(engineLifecycleListener);
    }

    private void onPreEngineRestart() {
        Iterator<FlutterEngine.EngineLifecycleListener> it = this.engineLifecycleListeners.iterator();
        while (it.hasNext()) {
            it.next().onPreEngineRestart();
        }
    }

    public void onDisplayOverlaySurface(int i, int i2, int i3, int i4, int i5) {
        ensureRunningOnMainThread();
        PlatformViewsController platformViewsController = this.platformViewsController;
        if (platformViewsController == null) {
            throw new RuntimeException("platformViewsController must be set before attempting to position an overlay surface");
        }
        platformViewsController.onDisplayOverlaySurface(i, i2, i3, i4, i5);
    }

    public void onBeginFrame() {
        ensureRunningOnMainThread();
        PlatformViewsController platformViewsController = this.platformViewsController;
        if (platformViewsController == null) {
            throw new RuntimeException("platformViewsController must be set before attempting to begin the frame");
        }
        platformViewsController.onBeginFrame();
    }

    public void onEndFrame() {
        ensureRunningOnMainThread();
        PlatformViewsController platformViewsController = this.platformViewsController;
        if (platformViewsController == null) {
            throw new RuntimeException("platformViewsController must be set before attempting to end the frame");
        }
        platformViewsController.onEndFrame();
    }

    public FlutterOverlaySurface createOverlaySurface() {
        ensureRunningOnMainThread();
        PlatformViewsController platformViewsController = this.platformViewsController;
        if (platformViewsController == null) {
            throw new RuntimeException("platformViewsController must be set before attempting to position an overlay surface");
        }
        return platformViewsController.createOverlaySurface();
    }

    public void destroyOverlaySurfaces() {
        ensureRunningOnMainThread();
        PlatformViewsController platformViewsController = this.platformViewsController;
        if (platformViewsController == null) {
            throw new RuntimeException("platformViewsController must be set before attempting to destroy an overlay surface");
        }
        platformViewsController.destroyOverlaySurfaces();
    }

    public void setLocalizationPlugin(LocalizationPlugin localizationPlugin) {
        ensureRunningOnMainThread();
        this.localizationPlugin = localizationPlugin;
    }

    public String[] computePlatformResolvedLocale(String[] strArr) {
        if (this.localizationPlugin == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < strArr.length; i += 3) {
            String str = strArr[i];
            String str2 = strArr[i + 1];
            String str3 = strArr[i + 2];
            Locale.Builder builder = new Locale.Builder();
            if (!str.isEmpty()) {
                builder.setLanguage(str);
            }
            if (!str2.isEmpty()) {
                builder.setRegion(str2);
            }
            if (!str3.isEmpty()) {
                builder.setScript(str3);
            }
            arrayList.add(builder.build());
        }
        Locale resolveNativeLocale = this.localizationPlugin.resolveNativeLocale(arrayList);
        return resolveNativeLocale == null ? new String[0] : new String[]{resolveNativeLocale.getLanguage(), resolveNativeLocale.getCountry(), resolveNativeLocale.getScript()};
    }

    public float getScaledFontSize(float f, int i) {
        DisplayMetrics pastDisplayMetrics = SettingsChannel.getPastDisplayMetrics(i);
        if (pastDisplayMetrics == null) {
            Log.e(TAG, "getScaledFontSize called with configurationId " + String.valueOf(i) + ", which can't be found.");
            return -1.0f;
        }
        return TypedValue.applyDimension(2, f, pastDisplayMetrics) / pastDisplayMetrics.density;
    }

    public void setDeferredComponentManager(DeferredComponentManager deferredComponentManager) {
        ensureRunningOnMainThread();
        this.deferredComponentManager = deferredComponentManager;
        if (deferredComponentManager != null) {
            deferredComponentManager.setJNI(this);
        }
    }

    public void requestDartDeferredLibrary(int i) {
        DeferredComponentManager deferredComponentManager = this.deferredComponentManager;
        if (deferredComponentManager != null) {
            deferredComponentManager.installDeferredComponent(i, null);
        } else {
            Log.e(TAG, "No DeferredComponentManager found. Android setup must be completed before using split AOT deferred components.");
        }
    }

    public void loadDartDeferredLibrary(int i, String[] strArr) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeLoadDartDeferredLibrary(this.nativeShellHolderId.longValue(), i, strArr);
    }

    public void updateJavaAssetManager(AssetManager assetManager, String str) {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeUpdateJavaAssetManager(this.nativeShellHolderId.longValue(), assetManager, str);
    }

    public void deferredComponentInstallFailure(int i, String str, boolean z) {
        ensureRunningOnMainThread();
        nativeDeferredComponentInstallFailure(i, str, z);
    }

    public void onDisplayPlatformView(int i, int i2, int i3, int i4, int i5, int i6, int i7, FlutterMutatorsStack flutterMutatorsStack) {
        ensureRunningOnMainThread();
        PlatformViewsController platformViewsController = this.platformViewsController;
        if (platformViewsController == null) {
            throw new RuntimeException("platformViewsController must be set before attempting to position a platform view");
        }
        platformViewsController.onDisplayPlatformView(i, i2, i3, i4, i5, i6, i7, flutterMutatorsStack);
    }

    public Bitmap getBitmap() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        return nativeGetBitmap(this.nativeShellHolderId.longValue());
    }

    public void notifyLowMemoryWarning() {
        ensureRunningOnMainThread();
        ensureAttachedToNative();
        nativeNotifyLowMemoryWarning(this.nativeShellHolderId.longValue());
    }

    private void ensureRunningOnMainThread() {
        if (Looper.myLooper() != this.mainLooper) {
            throw new RuntimeException("Methods marked with @UiThread must be executed on the main thread. Current thread: " + Thread.currentThread().getName());
        }
    }
}
