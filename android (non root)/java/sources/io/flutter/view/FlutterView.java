package io.flutter.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewStructure;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import io.flutter.Log;
import io.flutter.app.FlutterPluginRegistry;
import io.flutter.embedding.android.AndroidTouchProcessor;
import io.flutter.embedding.android.KeyboardManager;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.renderer.SurfaceTextureWrapper;
import io.flutter.embedding.engine.systemchannels.AccessibilityChannel;
import io.flutter.embedding.engine.systemchannels.LifecycleChannel;
import io.flutter.embedding.engine.systemchannels.LocalizationChannel;
import io.flutter.embedding.engine.systemchannels.MouseCursorChannel;
import io.flutter.embedding.engine.systemchannels.NavigationChannel;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.embedding.engine.systemchannels.SettingsChannel;
import io.flutter.embedding.engine.systemchannels.SystemChannel;
import io.flutter.embedding.engine.systemchannels.TextInputChannel;
import io.flutter.plugin.common.ActivityLifecycleListener;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.editing.TextInputPlugin;
import io.flutter.plugin.localization.LocalizationPlugin;
import io.flutter.plugin.mouse.MouseCursorPlugin;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.plugin.platform.PlatformViewsController;
import io.flutter.util.ViewUtils;
import io.flutter.view.AccessibilityBridge;
import io.flutter.view.TextureRegistry;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

@Deprecated
/* loaded from: classes3.dex */
public class FlutterView extends SurfaceView implements BinaryMessenger, TextureRegistry, MouseCursorPlugin.MouseCursorViewDelegate, KeyboardManager.ViewDelegate {
    private static final String TAG = "FlutterView";
    private final AndroidTouchProcessor androidTouchProcessor;
    private final DartExecutor dartExecutor;
    private boolean didRenderFirstFrame;
    private final FlutterRenderer flutterRenderer;
    private final LifecycleChannel lifecycleChannel;
    private final LocalizationChannel localizationChannel;
    private AccessibilityBridge mAccessibilityNodeProvider;
    private final List<ActivityLifecycleListener> mActivityLifecycleListeners;
    private final List<FirstFrameListener> mFirstFrameListeners;
    private final InputMethodManager mImm;
    private boolean mIsSoftwareRenderingEnabled;
    private final KeyboardManager mKeyboardManager;
    private final LocalizationPlugin mLocalizationPlugin;
    private final ViewportMetrics mMetrics;
    private final MouseCursorPlugin mMouseCursorPlugin;
    private FlutterNativeView mNativeView;
    private final SurfaceHolder.Callback mSurfaceCallback;
    private final TextInputPlugin mTextInputPlugin;
    private final NavigationChannel navigationChannel;
    private final AtomicLong nextTextureId;
    private final AccessibilityBridge.OnAccessibilityChangeListener onAccessibilityChangeListener;
    private final PlatformChannel platformChannel;
    private final SettingsChannel settingsChannel;
    private final SystemChannel systemChannel;

    /* loaded from: classes3.dex */
    public interface FirstFrameListener {
        void onFirstFrame();
    }

    /* loaded from: classes3.dex */
    public interface Provider {
        FlutterView getFlutterView();
    }

    /* loaded from: classes3.dex */
    private enum ZeroSides {
        NONE,
        LEFT,
        RIGHT,
        BOTH
    }

    private void postRun() {
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void disableBufferingIncomingMessages() {
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void enableBufferingIncomingMessages() {
    }

    @Override // io.flutter.embedding.android.KeyboardManager.ViewDelegate
    public BinaryMessenger getBinaryMessenger() {
        return this;
    }

    public DartExecutor getDartExecutor() {
        return this.dartExecutor;
    }

    public FlutterNativeView getFlutterNativeView() {
        return this.mNativeView;
    }

    public boolean hasRenderedFirstFrame() {
        return this.didRenderFirstFrame;
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public BinaryMessenger.TaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class ViewportMetrics {
        float devicePixelRatio = 1.0f;
        int physicalWidth = 0;
        int physicalHeight = 0;
        int physicalViewPaddingTop = 0;
        int physicalViewPaddingRight = 0;
        int physicalViewPaddingBottom = 0;
        int physicalViewPaddingLeft = 0;
        int physicalViewInsetTop = 0;
        int physicalViewInsetRight = 0;
        int physicalViewInsetBottom = 0;
        int physicalViewInsetLeft = 0;
        int systemGestureInsetTop = 0;
        int systemGestureInsetRight = 0;
        int systemGestureInsetBottom = 0;
        int systemGestureInsetLeft = 0;
        int physicalTouchSlop = -1;

        ViewportMetrics() {
        }
    }

    public FlutterView(Context context) {
        this(context, null);
    }

    public FlutterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, null);
    }

    public FlutterView(Context context, AttributeSet attributeSet, FlutterNativeView flutterNativeView) {
        super(context, attributeSet);
        this.nextTextureId = new AtomicLong(0L);
        this.mIsSoftwareRenderingEnabled = false;
        this.didRenderFirstFrame = false;
        this.onAccessibilityChangeListener = new AccessibilityBridge.OnAccessibilityChangeListener() { // from class: io.flutter.view.FlutterView.1
            @Override // io.flutter.view.AccessibilityBridge.OnAccessibilityChangeListener
            public void onAccessibilityChanged(boolean z, boolean z2) {
                FlutterView.this.resetWillNotDraw(z, z2);
            }
        };
        Activity activity = ViewUtils.getActivity(getContext());
        if (activity == null) {
            throw new IllegalArgumentException("Bad context");
        }
        if (flutterNativeView == null) {
            this.mNativeView = new FlutterNativeView(activity.getApplicationContext());
        } else {
            this.mNativeView = flutterNativeView;
        }
        DartExecutor dartExecutor = this.mNativeView.getDartExecutor();
        this.dartExecutor = dartExecutor;
        FlutterRenderer flutterRenderer = new FlutterRenderer(this.mNativeView.getFlutterJNI());
        this.flutterRenderer = flutterRenderer;
        this.mIsSoftwareRenderingEnabled = this.mNativeView.getFlutterJNI().getIsSoftwareRenderingEnabled();
        ViewportMetrics viewportMetrics = new ViewportMetrics();
        this.mMetrics = viewportMetrics;
        viewportMetrics.devicePixelRatio = context.getResources().getDisplayMetrics().density;
        viewportMetrics.physicalTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.mNativeView.attachViewAndActivity(this, activity);
        SurfaceHolder.Callback callback = new SurfaceHolder.Callback() { // from class: io.flutter.view.FlutterView.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                FlutterView.this.assertAttached();
                FlutterView.this.mNativeView.getFlutterJNI().onSurfaceCreated(surfaceHolder.getSurface());
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                FlutterView.this.assertAttached();
                FlutterView.this.mNativeView.getFlutterJNI().onSurfaceChanged(i2, i3);
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                FlutterView.this.assertAttached();
                FlutterView.this.mNativeView.getFlutterJNI().onSurfaceDestroyed();
            }
        };
        this.mSurfaceCallback = callback;
        getHolder().addCallback(callback);
        this.mActivityLifecycleListeners = new ArrayList();
        this.mFirstFrameListeners = new ArrayList();
        this.navigationChannel = new NavigationChannel(dartExecutor);
        this.lifecycleChannel = new LifecycleChannel(dartExecutor);
        LocalizationChannel localizationChannel = new LocalizationChannel(dartExecutor);
        this.localizationChannel = localizationChannel;
        PlatformChannel platformChannel = new PlatformChannel(dartExecutor);
        this.platformChannel = platformChannel;
        this.systemChannel = new SystemChannel(dartExecutor);
        this.settingsChannel = new SettingsChannel(dartExecutor);
        final PlatformPlugin platformPlugin = new PlatformPlugin(activity, platformChannel);
        addActivityLifecycleListener(new ActivityLifecycleListener() { // from class: io.flutter.view.FlutterView.3
            @Override // io.flutter.plugin.common.ActivityLifecycleListener
            public void onPostResume() {
                platformPlugin.updateSystemUiOverlays();
            }
        });
        this.mImm = (InputMethodManager) getContext().getSystemService("input_method");
        PlatformViewsController platformViewsController = this.mNativeView.getPluginRegistry().getPlatformViewsController();
        TextInputPlugin textInputPlugin = new TextInputPlugin(this, new TextInputChannel(dartExecutor), platformViewsController);
        this.mTextInputPlugin = textInputPlugin;
        this.mKeyboardManager = new KeyboardManager(this);
        this.mMouseCursorPlugin = new MouseCursorPlugin(this, new MouseCursorChannel(dartExecutor));
        LocalizationPlugin localizationPlugin = new LocalizationPlugin(context, localizationChannel);
        this.mLocalizationPlugin = localizationPlugin;
        this.androidTouchProcessor = new AndroidTouchProcessor(flutterRenderer, false);
        platformViewsController.attachToFlutterRenderer(flutterRenderer);
        this.mNativeView.getPluginRegistry().getPlatformViewsController().attachTextInputPlugin(textInputPlugin);
        this.mNativeView.getFlutterJNI().setLocalizationPlugin(localizationPlugin);
        localizationPlugin.sendLocalesToFlutter(getResources().getConfiguration());
        sendUserPlatformSettingsToDart();
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Log.e(TAG, "dispatchKeyEvent: " + keyEvent.toString());
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            getKeyDispatcherState().startTracking(keyEvent, this);
        } else if (keyEvent.getAction() == 1) {
            getKeyDispatcherState().handleUpEvent(keyEvent);
        }
        return (isAttached() && this.mKeyboardManager.handleEvent(keyEvent)) || super.dispatchKeyEvent(keyEvent);
    }

    public FlutterPluginRegistry getPluginRegistry() {
        return this.mNativeView.getPluginRegistry();
    }

    public String getLookupKeyForAsset(String str) {
        return FlutterMain.getLookupKeyForAsset(str);
    }

    public String getLookupKeyForAsset(String str, String str2) {
        return FlutterMain.getLookupKeyForAsset(str, str2);
    }

    public void addActivityLifecycleListener(ActivityLifecycleListener activityLifecycleListener) {
        this.mActivityLifecycleListeners.add(activityLifecycleListener);
    }

    public void onStart() {
        this.lifecycleChannel.appIsInactive();
    }

    public void onPause() {
        this.lifecycleChannel.appIsInactive();
    }

    public void onPostResume() {
        Iterator<ActivityLifecycleListener> it = this.mActivityLifecycleListeners.iterator();
        while (it.hasNext()) {
            it.next().onPostResume();
        }
        this.lifecycleChannel.appIsResumed();
    }

    public void onStop() {
        this.lifecycleChannel.appIsPaused();
    }

    public void onMemoryPressure() {
        this.mNativeView.getFlutterJNI().notifyLowMemoryWarning();
        this.systemChannel.sendMemoryPressureWarning();
    }

    public void addFirstFrameListener(FirstFrameListener firstFrameListener) {
        this.mFirstFrameListeners.add(firstFrameListener);
    }

    public void removeFirstFrameListener(FirstFrameListener firstFrameListener) {
        this.mFirstFrameListeners.remove(firstFrameListener);
    }

    public void disableTransparentBackground() {
        setZOrderOnTop(false);
        getHolder().setFormat(-1);
    }

    public void setInitialRoute(String str) {
        this.navigationChannel.setInitialRoute(str);
    }

    public void pushRoute(String str) {
        this.navigationChannel.pushRoute(str);
    }

    public void popRoute() {
        this.navigationChannel.popRoute();
    }

    private void sendUserPlatformSettingsToDart() {
        SettingsChannel.PlatformBrightness platformBrightness;
        if ((getResources().getConfiguration().uiMode & 48) == 32) {
            platformBrightness = SettingsChannel.PlatformBrightness.dark;
        } else {
            platformBrightness = SettingsChannel.PlatformBrightness.light;
        }
        this.settingsChannel.startMessage().setTextScaleFactor(getResources().getConfiguration().fontScale).setUse24HourFormat(DateFormat.is24HourFormat(getContext())).setPlatformBrightness(platformBrightness).send();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mLocalizationPlugin.sendLocalesToFlutter(configuration);
        sendUserPlatformSettingsToDart();
    }

    float getDevicePixelRatio() {
        return this.mMetrics.devicePixelRatio;
    }

    public FlutterNativeView detach() {
        if (!isAttached()) {
            return null;
        }
        getHolder().removeCallback(this.mSurfaceCallback);
        this.mNativeView.detachFromFlutterView();
        FlutterNativeView flutterNativeView = this.mNativeView;
        this.mNativeView = null;
        return flutterNativeView;
    }

    public void destroy() {
        if (isAttached()) {
            getHolder().removeCallback(this.mSurfaceCallback);
            releaseAccessibilityNodeProvider();
            this.mNativeView.destroy();
            this.mNativeView = null;
        }
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.mTextInputPlugin.createInputConnection(this, this.mKeyboardManager, editorInfo);
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        return this.mNativeView.getPluginRegistry().getPlatformViewsController().checkInputConnectionProxy(view);
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        super.onProvideAutofillVirtualStructure(viewStructure, i);
        this.mTextInputPlugin.onProvideAutofillVirtualStructure(viewStructure, i);
    }

    @Override // android.view.View
    public void autofill(SparseArray<AutofillValue> sparseArray) {
        this.mTextInputPlugin.autofill(sparseArray);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isAttached()) {
            return super.onTouchEvent(motionEvent);
        }
        requestUnbufferedDispatch(motionEvent);
        return this.androidTouchProcessor.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (!isAttached()) {
            return super.onHoverEvent(motionEvent);
        }
        return this.mAccessibilityNodeProvider.onAccessibilityHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (isAttached() && this.androidTouchProcessor.onGenericMotionEvent(motionEvent, getContext())) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mMetrics.physicalWidth = i;
        this.mMetrics.physicalHeight = i2;
        updateViewportMetrics();
        super.onSizeChanged(i, i2, i3, i4);
    }

    private ZeroSides calculateShouldZeroSides() {
        Context context = getContext();
        int i = context.getResources().getConfiguration().orientation;
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (i == 2) {
            if (rotation == 1) {
                return ZeroSides.RIGHT;
            }
            if (rotation == 3) {
                return ZeroSides.LEFT;
            }
            if (rotation == 0 || rotation == 2) {
                return ZeroSides.BOTH;
            }
        }
        return ZeroSides.NONE;
    }

    private int guessBottomKeyboardInset(WindowInsets windowInsets) {
        if (windowInsets.getSystemWindowInsetBottom() < getRootView().getHeight() * 0.18d) {
            return 0;
        }
        return windowInsets.getSystemWindowInsetBottom();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        boolean z = (getWindowSystemUiVisibility() & 4) == 0;
        int navigationBars = (getWindowSystemUiVisibility() & 2) == 0 ? WindowInsets.Type.navigationBars() : 0;
        if (z) {
            navigationBars |= WindowInsets.Type.statusBars();
        }
        Insets insets = windowInsets.getInsets(navigationBars);
        this.mMetrics.physicalViewPaddingTop = insets.top;
        this.mMetrics.physicalViewPaddingRight = insets.right;
        this.mMetrics.physicalViewPaddingBottom = insets.bottom;
        this.mMetrics.physicalViewPaddingLeft = insets.left;
        Insets insets2 = windowInsets.getInsets(WindowInsets.Type.ime());
        this.mMetrics.physicalViewInsetTop = insets2.top;
        this.mMetrics.physicalViewInsetRight = insets2.right;
        this.mMetrics.physicalViewInsetBottom = insets2.bottom;
        this.mMetrics.physicalViewInsetLeft = insets2.left;
        Insets insets3 = windowInsets.getInsets(WindowInsets.Type.systemGestures());
        this.mMetrics.systemGestureInsetTop = insets3.top;
        this.mMetrics.systemGestureInsetRight = insets3.right;
        this.mMetrics.systemGestureInsetBottom = insets3.bottom;
        this.mMetrics.systemGestureInsetLeft = insets3.left;
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        if (displayCutout != null) {
            Insets waterfallInsets = displayCutout.getWaterfallInsets();
            ViewportMetrics viewportMetrics = this.mMetrics;
            viewportMetrics.physicalViewPaddingTop = Math.max(Math.max(viewportMetrics.physicalViewPaddingTop, waterfallInsets.top), displayCutout.getSafeInsetTop());
            ViewportMetrics viewportMetrics2 = this.mMetrics;
            viewportMetrics2.physicalViewPaddingRight = Math.max(Math.max(viewportMetrics2.physicalViewPaddingRight, waterfallInsets.right), displayCutout.getSafeInsetRight());
            ViewportMetrics viewportMetrics3 = this.mMetrics;
            viewportMetrics3.physicalViewPaddingBottom = Math.max(Math.max(viewportMetrics3.physicalViewPaddingBottom, waterfallInsets.bottom), displayCutout.getSafeInsetBottom());
            ViewportMetrics viewportMetrics4 = this.mMetrics;
            viewportMetrics4.physicalViewPaddingLeft = Math.max(Math.max(viewportMetrics4.physicalViewPaddingLeft, waterfallInsets.left), displayCutout.getSafeInsetLeft());
        }
        updateViewportMetrics();
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    private boolean isAttached() {
        FlutterNativeView flutterNativeView = this.mNativeView;
        return flutterNativeView != null && flutterNativeView.isAttached();
    }

    void assertAttached() {
        if (!isAttached()) {
            throw new AssertionError("Platform view is not attached");
        }
    }

    private void preRun() {
        resetAccessibilityTree();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetAccessibilityTree() {
        AccessibilityBridge accessibilityBridge = this.mAccessibilityNodeProvider;
        if (accessibilityBridge != null) {
            accessibilityBridge.reset();
        }
    }

    public void runFromBundle(FlutterRunArguments flutterRunArguments) {
        assertAttached();
        preRun();
        this.mNativeView.runFromBundle(flutterRunArguments);
        postRun();
    }

    public Bitmap getBitmap() {
        assertAttached();
        return this.mNativeView.getFlutterJNI().getBitmap();
    }

    private void updateViewportMetrics() {
        if (isAttached()) {
            this.mNativeView.getFlutterJNI().setViewportMetrics(this.mMetrics.devicePixelRatio, this.mMetrics.physicalWidth, this.mMetrics.physicalHeight, this.mMetrics.physicalViewPaddingTop, this.mMetrics.physicalViewPaddingRight, this.mMetrics.physicalViewPaddingBottom, this.mMetrics.physicalViewPaddingLeft, this.mMetrics.physicalViewInsetTop, this.mMetrics.physicalViewInsetRight, this.mMetrics.physicalViewInsetBottom, this.mMetrics.physicalViewInsetLeft, this.mMetrics.systemGestureInsetTop, this.mMetrics.systemGestureInsetRight, this.mMetrics.systemGestureInsetBottom, this.mMetrics.systemGestureInsetLeft, this.mMetrics.physicalTouchSlop, new int[0], new int[0], new int[0]);
        }
    }

    public void onFirstFrame() {
        this.didRenderFirstFrame = true;
        Iterator it = new ArrayList(this.mFirstFrameListeners).iterator();
        while (it.hasNext()) {
            ((FirstFrameListener) it.next()).onFirstFrame();
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AccessibilityBridge accessibilityBridge = new AccessibilityBridge(this, new AccessibilityChannel(this.dartExecutor, getFlutterNativeView().getFlutterJNI()), (AccessibilityManager) getContext().getSystemService("accessibility"), getContext().getContentResolver(), getPluginRegistry().getPlatformViewsController());
        this.mAccessibilityNodeProvider = accessibilityBridge;
        accessibilityBridge.setOnAccessibilityChangeListener(this.onAccessibilityChangeListener);
        resetWillNotDraw(this.mAccessibilityNodeProvider.isAccessibilityEnabled(), this.mAccessibilityNodeProvider.isTouchExplorationEnabled());
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseAccessibilityNodeProvider();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetWillNotDraw(boolean z, boolean z2) {
        boolean z3 = false;
        if (!this.mIsSoftwareRenderingEnabled) {
            if (!z && !z2) {
                z3 = true;
            }
            setWillNotDraw(z3);
            return;
        }
        setWillNotDraw(false);
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        AccessibilityBridge accessibilityBridge = this.mAccessibilityNodeProvider;
        if (accessibilityBridge == null || !accessibilityBridge.isAccessibilityEnabled()) {
            return null;
        }
        return this.mAccessibilityNodeProvider;
    }

    private void releaseAccessibilityNodeProvider() {
        AccessibilityBridge accessibilityBridge = this.mAccessibilityNodeProvider;
        if (accessibilityBridge != null) {
            accessibilityBridge.release();
            this.mAccessibilityNodeProvider = null;
        }
    }

    @Override // io.flutter.plugin.mouse.MouseCursorPlugin.MouseCursorViewDelegate
    public PointerIcon getSystemPointerIcon(int i) {
        return PointerIcon.getSystemIcon(getContext(), i);
    }

    @Override // io.flutter.embedding.android.KeyboardManager.ViewDelegate
    public boolean onTextInputKeyEvent(KeyEvent keyEvent) {
        return this.mTextInputPlugin.handleKeyEvent(keyEvent);
    }

    @Override // io.flutter.embedding.android.KeyboardManager.ViewDelegate
    public void redispatch(KeyEvent keyEvent) {
        getRootView().dispatchKeyEvent(keyEvent);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void send(String str, ByteBuffer byteBuffer) {
        send(str, byteBuffer, null);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void send(String str, ByteBuffer byteBuffer, BinaryMessenger.BinaryReply binaryReply) {
        if (!isAttached()) {
            Log.d(TAG, "FlutterView.send called on a detached view, channel=" + str);
        } else {
            this.mNativeView.send(str, byteBuffer, binaryReply);
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(String str, BinaryMessenger.BinaryMessageHandler binaryMessageHandler) {
        this.mNativeView.setMessageHandler(str, binaryMessageHandler);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(String str, BinaryMessenger.BinaryMessageHandler binaryMessageHandler, BinaryMessenger.TaskQueue taskQueue) {
        this.mNativeView.setMessageHandler(str, binaryMessageHandler, taskQueue);
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceTextureEntry createSurfaceTexture() {
        return registerSurfaceTexture(new SurfaceTexture(0));
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.ImageTextureEntry createImageTexture() {
        throw new UnsupportedOperationException("Image textures are not supported in this mode.");
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceProducer createSurfaceProducer() {
        throw new UnsupportedOperationException("SurfaceProducer textures are not supported in this mode.");
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceTextureEntry registerSurfaceTexture(SurfaceTexture surfaceTexture) {
        surfaceTexture.detachFromGLContext();
        SurfaceTextureRegistryEntry surfaceTextureRegistryEntry = new SurfaceTextureRegistryEntry(this.nextTextureId.getAndIncrement(), surfaceTexture);
        this.mNativeView.getFlutterJNI().registerTexture(surfaceTextureRegistryEntry.id(), surfaceTextureRegistryEntry.textureWrapper());
        return surfaceTextureRegistryEntry;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class SurfaceTextureRegistryEntry implements TextureRegistry.SurfaceTextureEntry {
        private final long id;
        private SurfaceTexture.OnFrameAvailableListener onFrameListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: io.flutter.view.FlutterView.SurfaceTextureRegistryEntry.1
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                if (SurfaceTextureRegistryEntry.this.released || FlutterView.this.mNativeView == null) {
                    return;
                }
                FlutterView.this.mNativeView.getFlutterJNI().markTextureFrameAvailable(SurfaceTextureRegistryEntry.this.id);
            }
        };
        private boolean released;
        private final SurfaceTextureWrapper textureWrapper;

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry, io.flutter.view.TextureRegistry.TextureEntry
        public long id() {
            return this.id;
        }

        public SurfaceTextureWrapper textureWrapper() {
            return this.textureWrapper;
        }

        SurfaceTextureRegistryEntry(long j, SurfaceTexture surfaceTexture) {
            this.id = j;
            this.textureWrapper = new SurfaceTextureWrapper(surfaceTexture);
            surfaceTexture().setOnFrameAvailableListener(this.onFrameListener, new Handler());
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry
        public SurfaceTexture surfaceTexture() {
            return this.textureWrapper.surfaceTexture();
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry, io.flutter.view.TextureRegistry.TextureEntry
        public void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            surfaceTexture().setOnFrameAvailableListener(null);
            this.textureWrapper.release();
            FlutterView.this.mNativeView.getFlutterJNI().unregisterTexture(this.id);
        }
    }
}
