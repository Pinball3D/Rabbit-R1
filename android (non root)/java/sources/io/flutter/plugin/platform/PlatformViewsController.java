package io.flutter.plugin.platform;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Build;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import io.flutter.Log;
import io.flutter.embedding.android.AndroidTouchProcessor;
import io.flutter.embedding.android.FlutterView;
import io.flutter.embedding.android.MotionEventTracker;
import io.flutter.embedding.engine.FlutterOverlaySurface;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorView;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorsStack;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel;
import io.flutter.plugin.editing.TextInputPlugin;
import io.flutter.plugin.platform.PlatformViewsController;
import io.flutter.util.ViewUtils;
import io.flutter.view.AccessibilityBridge;
import io.flutter.view.TextureRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class PlatformViewsController implements PlatformViewsAccessibilityDelegate {
    private static final String TAG = "PlatformViewsController";
    private static Class[] VIEW_TYPES_REQUIRE_VIRTUAL_DISPLAY = {SurfaceView.class};
    private static boolean enableImageRenderTarget = true;
    private static boolean enableSurfaceProducerRenderTarget = false;
    private AndroidTouchProcessor androidTouchProcessor;
    private Context context;
    private FlutterView flutterView;
    private PlatformViewsChannel platformViewsChannel;
    private TextInputPlugin textInputPlugin;
    private TextureRegistry textureRegistry;
    private int nextOverlayLayerId = 0;
    private boolean flutterViewConvertedToImageView = false;
    private boolean synchronizeToNativeViewHierarchy = true;
    private boolean usesSoftwareRendering = false;
    private final PlatformViewsChannel.PlatformViewsHandler channelHandler = new AnonymousClass1();
    private final PlatformViewRegistryImpl registry = new PlatformViewRegistryImpl();
    final HashMap<Integer, VirtualDisplayController> vdControllers = new HashMap<>();
    private final AccessibilityEventsDelegate accessibilityEventsDelegate = new AccessibilityEventsDelegate();
    final HashMap<Context, View> contextToEmbeddedView = new HashMap<>();
    private final SparseArray<PlatformOverlayView> overlayLayerViews = new SparseArray<>();
    private final HashSet<Integer> currentFrameUsedOverlayLayerIds = new HashSet<>();
    private final HashSet<Integer> currentFrameUsedPlatformViewIds = new HashSet<>();
    private final SparseArray<PlatformViewWrapper> viewWrappers = new SparseArray<>();
    private final SparseArray<PlatformView> platformViews = new SparseArray<>();
    private final SparseArray<FlutterMutatorView> platformViewParent = new SparseArray<>();
    private final MotionEventTracker motionEventTracker = MotionEventTracker.getInstance();

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validateDirection(int i) {
        return i == 0 || i == 1;
    }

    public void attachTextInputPlugin(TextInputPlugin textInputPlugin) {
        this.textInputPlugin = textInputPlugin;
    }

    public void detachTextInputPlugin() {
        this.textInputPlugin = null;
    }

    public SparseArray<PlatformOverlayView> getOverlayLayerViews() {
        return this.overlayLayerViews;
    }

    public PlatformViewRegistry getRegistry() {
        return this.registry;
    }

    public void onAttachedToJNI() {
    }

    public void setSoftwareRendering(boolean z) {
        this.usesSoftwareRendering = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.flutter.plugin.platform.PlatformViewsController$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements PlatformViewsChannel.PlatformViewsHandler {
        AnonymousClass1() {
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void createForPlatformViewLayer(PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest) {
            PlatformViewsController.this.enforceMinimumAndroidApiVersion(19);
            PlatformViewsController.this.ensureValidRequest(platformViewCreationRequest);
            PlatformViewsController.this.configureForHybridComposition(PlatformViewsController.this.createPlatformView(platformViewCreationRequest, false), platformViewCreationRequest);
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public long createForTextureLayer(PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest) {
            PlatformViewsController.this.ensureValidRequest(platformViewCreationRequest);
            int i = platformViewCreationRequest.viewId;
            if (PlatformViewsController.this.viewWrappers.get(i) == null) {
                if (PlatformViewsController.this.textureRegistry != null) {
                    if (PlatformViewsController.this.flutterView == null) {
                        throw new IllegalStateException("Flutter view is null. This means the platform views controller doesn't have an attached view, view id: " + i);
                    }
                    PlatformView createPlatformView = PlatformViewsController.this.createPlatformView(platformViewCreationRequest, true);
                    View view = createPlatformView.getView();
                    if (view.getParent() != null) {
                        throw new IllegalStateException("The Android view returned from PlatformView#getView() was already added to a parent view.");
                    }
                    if (ViewUtils.hasChildViewOfType(view, PlatformViewsController.VIEW_TYPES_REQUIRE_VIRTUAL_DISPLAY)) {
                        if (platformViewCreationRequest.displayMode == PlatformViewsChannel.PlatformViewCreationRequest.RequestedDisplayMode.TEXTURE_WITH_HYBRID_FALLBACK) {
                            PlatformViewsController.this.configureForHybridComposition(createPlatformView, platformViewCreationRequest);
                            return -2L;
                        }
                        if (!PlatformViewsController.this.usesSoftwareRendering) {
                            return PlatformViewsController.this.configureForVirtualDisplay(createPlatformView, platformViewCreationRequest);
                        }
                    }
                    return PlatformViewsController.this.configureForTextureLayerComposition(createPlatformView, platformViewCreationRequest);
                }
                throw new IllegalStateException("Texture registry is null. This means that platform views controller was detached, view id: " + i);
            }
            throw new IllegalStateException("Trying to create an already created platform view, view id: " + i);
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void dispose(int i) {
            PlatformView platformView = (PlatformView) PlatformViewsController.this.platformViews.get(i);
            if (platformView == null) {
                Log.e(PlatformViewsController.TAG, "Disposing unknown platform view with id: " + i);
                return;
            }
            if (platformView.getView() != null) {
                View view = platformView.getView();
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            }
            PlatformViewsController.this.platformViews.remove(i);
            try {
                platformView.dispose();
            } catch (RuntimeException e) {
                Log.e(PlatformViewsController.TAG, "Disposing platform view threw an exception", e);
            }
            if (!PlatformViewsController.this.usesVirtualDisplay(i)) {
                PlatformViewWrapper platformViewWrapper = (PlatformViewWrapper) PlatformViewsController.this.viewWrappers.get(i);
                if (platformViewWrapper == null) {
                    FlutterMutatorView flutterMutatorView = (FlutterMutatorView) PlatformViewsController.this.platformViewParent.get(i);
                    if (flutterMutatorView != null) {
                        flutterMutatorView.removeAllViews();
                        flutterMutatorView.unsetOnDescendantFocusChangeListener();
                        ViewGroup viewGroup2 = (ViewGroup) flutterMutatorView.getParent();
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(flutterMutatorView);
                        }
                        PlatformViewsController.this.platformViewParent.remove(i);
                        return;
                    }
                    return;
                }
                platformViewWrapper.removeAllViews();
                platformViewWrapper.release();
                platformViewWrapper.unsetOnDescendantFocusChangeListener();
                ViewGroup viewGroup3 = (ViewGroup) platformViewWrapper.getParent();
                if (viewGroup3 != null) {
                    viewGroup3.removeView(platformViewWrapper);
                }
                PlatformViewsController.this.viewWrappers.remove(i);
                return;
            }
            VirtualDisplayController virtualDisplayController = PlatformViewsController.this.vdControllers.get(Integer.valueOf(i));
            View view2 = virtualDisplayController.getView();
            if (view2 != null) {
                PlatformViewsController.this.contextToEmbeddedView.remove(view2.getContext());
            }
            virtualDisplayController.dispose();
            PlatformViewsController.this.vdControllers.remove(Integer.valueOf(i));
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void offset(int i, double d, double d2) {
            if (PlatformViewsController.this.usesVirtualDisplay(i)) {
                return;
            }
            PlatformViewWrapper platformViewWrapper = (PlatformViewWrapper) PlatformViewsController.this.viewWrappers.get(i);
            if (platformViewWrapper != null) {
                int physicalPixels = PlatformViewsController.this.toPhysicalPixels(d);
                int physicalPixels2 = PlatformViewsController.this.toPhysicalPixels(d2);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) platformViewWrapper.getLayoutParams();
                layoutParams.topMargin = physicalPixels;
                layoutParams.leftMargin = physicalPixels2;
                platformViewWrapper.setLayoutParams(layoutParams);
                return;
            }
            Log.e(PlatformViewsController.TAG, "Setting offset for unknown platform view with id: " + i);
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void resize(PlatformViewsChannel.PlatformViewResizeRequest platformViewResizeRequest, final PlatformViewsChannel.PlatformViewBufferResized platformViewBufferResized) {
            int physicalPixels = PlatformViewsController.this.toPhysicalPixels(platformViewResizeRequest.newLogicalWidth);
            int physicalPixels2 = PlatformViewsController.this.toPhysicalPixels(platformViewResizeRequest.newLogicalHeight);
            int i = platformViewResizeRequest.viewId;
            if (PlatformViewsController.this.usesVirtualDisplay(i)) {
                final float displayDensity = PlatformViewsController.this.getDisplayDensity();
                final VirtualDisplayController virtualDisplayController = PlatformViewsController.this.vdControllers.get(Integer.valueOf(i));
                PlatformViewsController.this.lockInputConnection(virtualDisplayController);
                virtualDisplayController.resize(physicalPixels, physicalPixels2, new Runnable() { // from class: io.flutter.plugin.platform.PlatformViewsController$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlatformViewsController.AnonymousClass1.this.m5612x7b26d3(virtualDisplayController, displayDensity, platformViewBufferResized);
                    }
                });
                return;
            }
            PlatformView platformView = (PlatformView) PlatformViewsController.this.platformViews.get(i);
            PlatformViewWrapper platformViewWrapper = (PlatformViewWrapper) PlatformViewsController.this.viewWrappers.get(i);
            if (platformView == null || platformViewWrapper == null) {
                Log.e(PlatformViewsController.TAG, "Resizing unknown platform view with id: " + i);
                return;
            }
            if (physicalPixels > platformViewWrapper.getRenderTargetWidth() || physicalPixels2 > platformViewWrapper.getRenderTargetHeight()) {
                platformViewWrapper.resizeRenderTarget(physicalPixels, physicalPixels2);
            }
            ViewGroup.LayoutParams layoutParams = platformViewWrapper.getLayoutParams();
            layoutParams.width = physicalPixels;
            layoutParams.height = physicalPixels2;
            platformViewWrapper.setLayoutParams(layoutParams);
            View view = platformView.getView();
            if (view != null) {
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                layoutParams2.width = physicalPixels;
                layoutParams2.height = physicalPixels2;
                view.setLayoutParams(layoutParams2);
            }
            platformViewBufferResized.run(new PlatformViewsChannel.PlatformViewBufferSize(PlatformViewsController.this.toLogicalPixels(platformViewWrapper.getRenderTargetWidth()), PlatformViewsController.this.toLogicalPixels(platformViewWrapper.getRenderTargetHeight())));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$resize$0$io-flutter-plugin-platform-PlatformViewsController$1, reason: not valid java name */
        public /* synthetic */ void m5612x7b26d3(VirtualDisplayController virtualDisplayController, float f, PlatformViewsChannel.PlatformViewBufferResized platformViewBufferResized) {
            PlatformViewsController.this.unlockInputConnection(virtualDisplayController);
            if (PlatformViewsController.this.context != null) {
                f = PlatformViewsController.this.getDisplayDensity();
            }
            platformViewBufferResized.run(new PlatformViewsChannel.PlatformViewBufferSize(PlatformViewsController.this.toLogicalPixels(virtualDisplayController.getRenderTargetWidth(), f), PlatformViewsController.this.toLogicalPixels(virtualDisplayController.getRenderTargetHeight(), f)));
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void onTouch(PlatformViewsChannel.PlatformViewTouch platformViewTouch) {
            int i = platformViewTouch.viewId;
            float f = PlatformViewsController.this.context.getResources().getDisplayMetrics().density;
            if (!PlatformViewsController.this.usesVirtualDisplay(i)) {
                PlatformView platformView = (PlatformView) PlatformViewsController.this.platformViews.get(i);
                if (platformView == null) {
                    Log.e(PlatformViewsController.TAG, "Sending touch to an unknown view with id: " + i);
                    return;
                }
                View view = platformView.getView();
                if (view == null) {
                    Log.e(PlatformViewsController.TAG, "Sending touch to a null view with id: " + i);
                    return;
                } else {
                    view.dispatchTouchEvent(PlatformViewsController.this.toMotionEvent(f, platformViewTouch, false));
                    return;
                }
            }
            PlatformViewsController.this.vdControllers.get(Integer.valueOf(i)).dispatchTouchEvent(PlatformViewsController.this.toMotionEvent(f, platformViewTouch, true));
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void setDirection(int i, int i2) {
            View view;
            if (!PlatformViewsController.validateDirection(i2)) {
                throw new IllegalStateException("Trying to set unknown direction value: " + i2 + "(view id: " + i + ")");
            }
            if (!PlatformViewsController.this.usesVirtualDisplay(i)) {
                PlatformView platformView = (PlatformView) PlatformViewsController.this.platformViews.get(i);
                if (platformView == null) {
                    Log.e(PlatformViewsController.TAG, "Setting direction to an unknown view with id: " + i);
                    return;
                }
                view = platformView.getView();
            } else {
                view = PlatformViewsController.this.vdControllers.get(Integer.valueOf(i)).getView();
            }
            if (view == null) {
                Log.e(PlatformViewsController.TAG, "Setting direction to a null view with id: " + i);
            } else {
                view.setLayoutDirection(i2);
            }
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void clearFocus(int i) {
            View view;
            if (!PlatformViewsController.this.usesVirtualDisplay(i)) {
                PlatformView platformView = (PlatformView) PlatformViewsController.this.platformViews.get(i);
                if (platformView == null) {
                    Log.e(PlatformViewsController.TAG, "Clearing focus on an unknown view with id: " + i);
                    return;
                }
                view = platformView.getView();
            } else {
                view = PlatformViewsController.this.vdControllers.get(Integer.valueOf(i)).getView();
            }
            if (view == null) {
                Log.e(PlatformViewsController.TAG, "Clearing focus on a null view with id: " + i);
            } else {
                view.clearFocus();
            }
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewsHandler
        public void synchronizeToNativeViewHierarchy(boolean z) {
            PlatformViewsController.this.synchronizeToNativeViewHierarchy = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceMinimumAndroidApiVersion(int i) {
        if (Build.VERSION.SDK_INT < i) {
            throw new IllegalStateException("Trying to use platform views with API " + Build.VERSION.SDK_INT + ", required API level is: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureValidRequest(PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest) {
        if (!validateDirection(platformViewCreationRequest.direction)) {
            throw new IllegalStateException("Trying to create a view with unknown direction value: " + platformViewCreationRequest.direction + "(view id: " + platformViewCreationRequest.viewId + ")");
        }
    }

    public PlatformView createPlatformView(PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest, boolean z) {
        PlatformViewFactory factory = this.registry.getFactory(platformViewCreationRequest.viewType);
        if (factory == null) {
            throw new IllegalStateException("Trying to create a platform view of unregistered type: " + platformViewCreationRequest.viewType);
        }
        PlatformView create = factory.create(z ? new MutableContextWrapper(this.context) : this.context, platformViewCreationRequest.viewId, platformViewCreationRequest.params != null ? factory.getCreateArgsCodec().decodeMessage(platformViewCreationRequest.params) : null);
        View view = create.getView();
        if (view == null) {
            throw new IllegalStateException("PlatformView#getView() returned null, but an Android view reference was expected.");
        }
        view.setLayoutDirection(platformViewCreationRequest.direction);
        this.platformViews.put(platformViewCreationRequest.viewId, create);
        maybeInvokeOnFlutterViewAttached(create);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureForHybridComposition(PlatformView platformView, PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest) {
        enforceMinimumAndroidApiVersion(19);
        Log.i(TAG, "Using hybrid composition for platform view: " + platformViewCreationRequest.viewId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long configureForVirtualDisplay(PlatformView platformView, final PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest) {
        enforceMinimumAndroidApiVersion(20);
        Log.i(TAG, "Hosting view in a virtual display for platform view: " + platformViewCreationRequest.viewId);
        PlatformViewRenderTarget makePlatformViewRenderTarget = makePlatformViewRenderTarget(this.textureRegistry);
        VirtualDisplayController create = VirtualDisplayController.create(this.context, this.accessibilityEventsDelegate, platformView, makePlatformViewRenderTarget, toPhysicalPixels(platformViewCreationRequest.logicalWidth), toPhysicalPixels(platformViewCreationRequest.logicalHeight), platformViewCreationRequest.viewId, null, new View.OnFocusChangeListener() { // from class: io.flutter.plugin.platform.PlatformViewsController$$ExternalSyntheticLambda3
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                PlatformViewsController.this.m5609x9514d2a0(platformViewCreationRequest, view, z);
            }
        });
        if (create == null) {
            throw new IllegalStateException("Failed creating virtual display for a " + platformViewCreationRequest.viewType + " with id: " + platformViewCreationRequest.viewId);
        }
        this.vdControllers.put(Integer.valueOf(platformViewCreationRequest.viewId), create);
        View view = platformView.getView();
        this.contextToEmbeddedView.put(view.getContext(), view);
        return makePlatformViewRenderTarget.getId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$configureForVirtualDisplay$0$io-flutter-plugin-platform-PlatformViewsController, reason: not valid java name */
    public /* synthetic */ void m5609x9514d2a0(PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest, View view, boolean z) {
        if (z) {
            this.platformViewsChannel.invokeViewFocused(platformViewCreationRequest.viewId);
        }
    }

    public long configureForTextureLayerComposition(PlatformView platformView, final PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest) {
        PlatformViewWrapper platformViewWrapper;
        long j;
        enforceMinimumAndroidApiVersion(23);
        Log.i(TAG, "Hosting view in view hierarchy for platform view: " + platformViewCreationRequest.viewId);
        int physicalPixels = toPhysicalPixels(platformViewCreationRequest.logicalWidth);
        int physicalPixels2 = toPhysicalPixels(platformViewCreationRequest.logicalHeight);
        if (this.usesSoftwareRendering) {
            platformViewWrapper = new PlatformViewWrapper(this.context);
            j = -1;
        } else {
            PlatformViewRenderTarget makePlatformViewRenderTarget = makePlatformViewRenderTarget(this.textureRegistry);
            PlatformViewWrapper platformViewWrapper2 = new PlatformViewWrapper(this.context, makePlatformViewRenderTarget);
            long id = makePlatformViewRenderTarget.getId();
            platformViewWrapper = platformViewWrapper2;
            j = id;
        }
        platformViewWrapper.setTouchProcessor(this.androidTouchProcessor);
        platformViewWrapper.resizeRenderTarget(physicalPixels, physicalPixels2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(physicalPixels, physicalPixels2);
        int physicalPixels3 = toPhysicalPixels(platformViewCreationRequest.logicalTop);
        int physicalPixels4 = toPhysicalPixels(platformViewCreationRequest.logicalLeft);
        layoutParams.topMargin = physicalPixels3;
        layoutParams.leftMargin = physicalPixels4;
        platformViewWrapper.setLayoutParams(layoutParams);
        View view = platformView.getView();
        view.setLayoutParams(new FrameLayout.LayoutParams(physicalPixels, physicalPixels2));
        view.setImportantForAccessibility(4);
        platformViewWrapper.addView(view);
        platformViewWrapper.setOnDescendantFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.flutter.plugin.platform.PlatformViewsController$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                PlatformViewsController.this.m5608x6d74e942(platformViewCreationRequest, view2, z);
            }
        });
        this.flutterView.addView(platformViewWrapper);
        this.viewWrappers.append(platformViewCreationRequest.viewId, platformViewWrapper);
        maybeInvokeOnFlutterViewAttached(platformView);
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$configureForTextureLayerComposition$1$io-flutter-plugin-platform-PlatformViewsController, reason: not valid java name */
    public /* synthetic */ void m5608x6d74e942(PlatformViewsChannel.PlatformViewCreationRequest platformViewCreationRequest, View view, boolean z) {
        if (z) {
            this.platformViewsChannel.invokeViewFocused(platformViewCreationRequest.viewId);
            return;
        }
        TextInputPlugin textInputPlugin = this.textInputPlugin;
        if (textInputPlugin != null) {
            textInputPlugin.clearPlatformViewClient(platformViewCreationRequest.viewId);
        }
    }

    public MotionEvent toMotionEvent(float f, PlatformViewsChannel.PlatformViewTouch platformViewTouch, boolean z) {
        MotionEvent pop = this.motionEventTracker.pop(MotionEventTracker.MotionEventId.from(platformViewTouch.motionEventId));
        if (!z && pop != null) {
            return pop;
        }
        return MotionEvent.obtain(platformViewTouch.downTime.longValue(), platformViewTouch.eventTime.longValue(), platformViewTouch.action, platformViewTouch.pointerCount, (MotionEvent.PointerProperties[]) parsePointerPropertiesList(platformViewTouch.rawPointerPropertiesList).toArray(new MotionEvent.PointerProperties[platformViewTouch.pointerCount]), (MotionEvent.PointerCoords[]) parsePointerCoordsList(platformViewTouch.rawPointerCoords, f).toArray(new MotionEvent.PointerCoords[platformViewTouch.pointerCount]), platformViewTouch.metaState, platformViewTouch.buttonState, platformViewTouch.xPrecision, platformViewTouch.yPrecision, platformViewTouch.deviceId, platformViewTouch.edgeFlags, platformViewTouch.source, platformViewTouch.flags);
    }

    public void attach(Context context, TextureRegistry textureRegistry, DartExecutor dartExecutor) {
        if (this.context != null) {
            throw new AssertionError("A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached.");
        }
        this.context = context;
        this.textureRegistry = textureRegistry;
        PlatformViewsChannel platformViewsChannel = new PlatformViewsChannel(dartExecutor);
        this.platformViewsChannel = platformViewsChannel;
        platformViewsChannel.setPlatformViewsHandler(this.channelHandler);
    }

    public void detach() {
        PlatformViewsChannel platformViewsChannel = this.platformViewsChannel;
        if (platformViewsChannel != null) {
            platformViewsChannel.setPlatformViewsHandler(null);
        }
        destroyOverlaySurfaces();
        this.platformViewsChannel = null;
        this.context = null;
        this.textureRegistry = null;
    }

    public void attachToView(FlutterView flutterView) {
        this.flutterView = flutterView;
        for (int i = 0; i < this.viewWrappers.size(); i++) {
            this.flutterView.addView(this.viewWrappers.valueAt(i));
        }
        for (int i2 = 0; i2 < this.platformViewParent.size(); i2++) {
            this.flutterView.addView(this.platformViewParent.valueAt(i2));
        }
        for (int i3 = 0; i3 < this.platformViews.size(); i3++) {
            this.platformViews.valueAt(i3).onFlutterViewAttached(this.flutterView);
        }
    }

    public void detachFromView() {
        for (int i = 0; i < this.viewWrappers.size(); i++) {
            this.flutterView.removeView(this.viewWrappers.valueAt(i));
        }
        for (int i2 = 0; i2 < this.platformViewParent.size(); i2++) {
            this.flutterView.removeView(this.platformViewParent.valueAt(i2));
        }
        destroyOverlaySurfaces();
        removeOverlaySurfaces();
        this.flutterView = null;
        this.flutterViewConvertedToImageView = false;
        for (int i3 = 0; i3 < this.platformViews.size(); i3++) {
            this.platformViews.valueAt(i3).onFlutterViewDetached();
        }
    }

    private void maybeInvokeOnFlutterViewAttached(PlatformView platformView) {
        FlutterView flutterView = this.flutterView;
        if (flutterView == null) {
            Log.i(TAG, "null flutterView");
        } else {
            platformView.onFlutterViewAttached(flutterView);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    public void attachAccessibilityBridge(AccessibilityBridge accessibilityBridge) {
        this.accessibilityEventsDelegate.setAccessibilityBridge(accessibilityBridge);
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    public void detachAccessibilityBridge() {
        this.accessibilityEventsDelegate.setAccessibilityBridge(null);
    }

    public boolean checkInputConnectionProxy(View view) {
        if (view == null || !this.contextToEmbeddedView.containsKey(view.getContext())) {
            return false;
        }
        View view2 = this.contextToEmbeddedView.get(view.getContext());
        if (view2 == view) {
            return true;
        }
        return view2.checkInputConnectionProxy(view);
    }

    public void onDetachedFromJNI() {
        diposeAllViews();
    }

    public void onPreEngineRestart() {
        diposeAllViews();
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    public View getPlatformViewById(int i) {
        if (usesVirtualDisplay(i)) {
            return this.vdControllers.get(Integer.valueOf(i)).getView();
        }
        PlatformView platformView = this.platformViews.get(i);
        if (platformView == null) {
            return null;
        }
        return platformView.getView();
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    public boolean usesVirtualDisplay(int i) {
        return this.vdControllers.containsKey(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lockInputConnection(VirtualDisplayController virtualDisplayController) {
        TextInputPlugin textInputPlugin = this.textInputPlugin;
        if (textInputPlugin == null) {
            return;
        }
        textInputPlugin.lockPlatformViewInputConnection();
        virtualDisplayController.onInputConnectionLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockInputConnection(VirtualDisplayController virtualDisplayController) {
        TextInputPlugin textInputPlugin = this.textInputPlugin;
        if (textInputPlugin == null) {
            return;
        }
        textInputPlugin.unlockPlatformViewInputConnection();
        virtualDisplayController.onInputConnectionUnlocked();
    }

    private static PlatformViewRenderTarget makePlatformViewRenderTarget(TextureRegistry textureRegistry) {
        if (enableSurfaceProducerRenderTarget && Build.VERSION.SDK_INT >= 33) {
            TextureRegistry.SurfaceProducer createSurfaceProducer = textureRegistry.createSurfaceProducer();
            Log.i(TAG, "PlatformView is using SurfaceProducer backend");
            return new SurfaceProducerPlatformViewRenderTarget(createSurfaceProducer);
        }
        if (enableImageRenderTarget && Build.VERSION.SDK_INT >= 33) {
            TextureRegistry.ImageTextureEntry createImageTexture = textureRegistry.createImageTexture();
            Log.i(TAG, "PlatformView is using ImageReader backend");
            return new ImageReaderPlatformViewRenderTarget(createImageTexture);
        }
        TextureRegistry.SurfaceTextureEntry createSurfaceTexture = textureRegistry.createSurfaceTexture();
        Log.i(TAG, "PlatformView is using SurfaceTexture backend");
        return new SurfaceTexturePlatformViewRenderTarget(createSurfaceTexture);
    }

    private static List<MotionEvent.PointerProperties> parsePointerPropertiesList(Object obj) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(parsePointerProperties(it.next()));
        }
        return arrayList;
    }

    private static MotionEvent.PointerProperties parsePointerProperties(Object obj) {
        List list = (List) obj;
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = ((Integer) list.get(0)).intValue();
        pointerProperties.toolType = ((Integer) list.get(1)).intValue();
        return pointerProperties;
    }

    private static List<MotionEvent.PointerCoords> parsePointerCoordsList(Object obj, float f) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(parsePointerCoords(it.next(), f));
        }
        return arrayList;
    }

    private static MotionEvent.PointerCoords parsePointerCoords(Object obj, float f) {
        List list = (List) obj;
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.orientation = (float) ((Double) list.get(0)).doubleValue();
        pointerCoords.pressure = (float) ((Double) list.get(1)).doubleValue();
        pointerCoords.size = (float) ((Double) list.get(2)).doubleValue();
        double d = f;
        pointerCoords.toolMajor = (float) (((Double) list.get(3)).doubleValue() * d);
        pointerCoords.toolMinor = (float) (((Double) list.get(4)).doubleValue() * d);
        pointerCoords.touchMajor = (float) (((Double) list.get(5)).doubleValue() * d);
        pointerCoords.touchMinor = (float) (((Double) list.get(6)).doubleValue() * d);
        pointerCoords.x = (float) (((Double) list.get(7)).doubleValue() * d);
        pointerCoords.y = (float) (((Double) list.get(8)).doubleValue() * d);
        return pointerCoords;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayDensity() {
        return this.context.getResources().getDisplayMetrics().density;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int toPhysicalPixels(double d) {
        return (int) Math.round(d * getDisplayDensity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int toLogicalPixels(double d, float f) {
        return (int) Math.round(d / f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int toLogicalPixels(double d) {
        return toLogicalPixels(d, getDisplayDensity());
    }

    private void diposeAllViews() {
        while (this.platformViews.size() > 0) {
            this.channelHandler.dispose(this.platformViews.keyAt(0));
        }
    }

    public void disposePlatformView(int i) {
        this.channelHandler.dispose(i);
    }

    private void initializeRootImageViewIfNeeded() {
        if (!this.synchronizeToNativeViewHierarchy || this.flutterViewConvertedToImageView) {
            return;
        }
        this.flutterView.convertToImageView();
        this.flutterViewConvertedToImageView = true;
    }

    void initializePlatformViewIfNeeded(final int i) {
        PlatformView platformView = this.platformViews.get(i);
        if (platformView == null) {
            throw new IllegalStateException("Platform view hasn't been initialized from the platform view channel.");
        }
        if (this.platformViewParent.get(i) != null) {
            return;
        }
        View view = platformView.getView();
        if (view == null) {
            throw new IllegalStateException("PlatformView#getView() returned null, but an Android view reference was expected.");
        }
        if (view.getParent() != null) {
            throw new IllegalStateException("The Android view returned from PlatformView#getView() was already added to a parent view.");
        }
        Context context = this.context;
        FlutterMutatorView flutterMutatorView = new FlutterMutatorView(context, context.getResources().getDisplayMetrics().density, this.androidTouchProcessor);
        flutterMutatorView.setOnDescendantFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.flutter.plugin.platform.PlatformViewsController$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                PlatformViewsController.this.m5610x63d72b3e(i, view2, z);
            }
        });
        this.platformViewParent.put(i, flutterMutatorView);
        view.setImportantForAccessibility(4);
        flutterMutatorView.addView(view);
        this.flutterView.addView(flutterMutatorView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initializePlatformViewIfNeeded$2$io-flutter-plugin-platform-PlatformViewsController, reason: not valid java name */
    public /* synthetic */ void m5610x63d72b3e(int i, View view, boolean z) {
        if (z) {
            this.platformViewsChannel.invokeViewFocused(i);
            return;
        }
        TextInputPlugin textInputPlugin = this.textInputPlugin;
        if (textInputPlugin != null) {
            textInputPlugin.clearPlatformViewClient(i);
        }
    }

    public void attachToFlutterRenderer(FlutterRenderer flutterRenderer) {
        this.androidTouchProcessor = new AndroidTouchProcessor(flutterRenderer, true);
    }

    public void onDisplayPlatformView(int i, int i2, int i3, int i4, int i5, int i6, int i7, FlutterMutatorsStack flutterMutatorsStack) {
        initializeRootImageViewIfNeeded();
        initializePlatformViewIfNeeded(i);
        FlutterMutatorView flutterMutatorView = this.platformViewParent.get(i);
        flutterMutatorView.readyToDisplay(flutterMutatorsStack, i2, i3, i4, i5);
        flutterMutatorView.setVisibility(0);
        flutterMutatorView.bringToFront();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i6, i7);
        View view = this.platformViews.get(i).getView();
        if (view != null) {
            view.setLayoutParams(layoutParams);
            view.bringToFront();
        }
        this.currentFrameUsedPlatformViewIds.add(Integer.valueOf(i));
    }

    public void onDisplayOverlaySurface(int i, int i2, int i3, int i4, int i5) {
        if (this.overlayLayerViews.get(i) == null) {
            throw new IllegalStateException("The overlay surface (id:" + i + ") doesn't exist");
        }
        initializeRootImageViewIfNeeded();
        PlatformOverlayView platformOverlayView = this.overlayLayerViews.get(i);
        if (platformOverlayView.getParent() == null) {
            this.flutterView.addView(platformOverlayView);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i5);
        layoutParams.leftMargin = i2;
        layoutParams.topMargin = i3;
        platformOverlayView.setLayoutParams(layoutParams);
        platformOverlayView.setVisibility(0);
        platformOverlayView.bringToFront();
        this.currentFrameUsedOverlayLayerIds.add(Integer.valueOf(i));
    }

    public void onBeginFrame() {
        this.currentFrameUsedOverlayLayerIds.clear();
        this.currentFrameUsedPlatformViewIds.clear();
    }

    public void onEndFrame() {
        boolean z = false;
        if (this.flutterViewConvertedToImageView && this.currentFrameUsedPlatformViewIds.isEmpty()) {
            this.flutterViewConvertedToImageView = false;
            this.flutterView.revertImageView(new Runnable() { // from class: io.flutter.plugin.platform.PlatformViewsController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    PlatformViewsController.this.m5611x3ce3c1e6();
                }
            });
        } else {
            if (this.flutterViewConvertedToImageView && this.flutterView.acquireLatestImageViewFrame()) {
                z = true;
            }
            finishFrame(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onEndFrame$3$io-flutter-plugin-platform-PlatformViewsController, reason: not valid java name */
    public /* synthetic */ void m5611x3ce3c1e6() {
        finishFrame(false);
    }

    private void finishFrame(boolean z) {
        for (int i = 0; i < this.overlayLayerViews.size(); i++) {
            int keyAt = this.overlayLayerViews.keyAt(i);
            PlatformOverlayView valueAt = this.overlayLayerViews.valueAt(i);
            if (this.currentFrameUsedOverlayLayerIds.contains(Integer.valueOf(keyAt))) {
                this.flutterView.attachOverlaySurfaceToRender(valueAt);
                z &= valueAt.acquireLatestImage();
            } else {
                if (!this.flutterViewConvertedToImageView) {
                    valueAt.detachFromRenderer();
                }
                valueAt.setVisibility(8);
                this.flutterView.removeView(valueAt);
            }
        }
        for (int i2 = 0; i2 < this.platformViewParent.size(); i2++) {
            int keyAt2 = this.platformViewParent.keyAt(i2);
            FlutterMutatorView flutterMutatorView = this.platformViewParent.get(keyAt2);
            if (this.currentFrameUsedPlatformViewIds.contains(Integer.valueOf(keyAt2)) && (z || !this.synchronizeToNativeViewHierarchy)) {
                flutterMutatorView.setVisibility(0);
            } else {
                flutterMutatorView.setVisibility(8);
            }
        }
    }

    public FlutterOverlaySurface createOverlaySurface(PlatformOverlayView platformOverlayView) {
        int i = this.nextOverlayLayerId;
        this.nextOverlayLayerId = i + 1;
        this.overlayLayerViews.put(i, platformOverlayView);
        return new FlutterOverlaySurface(i, platformOverlayView.getSurface());
    }

    public FlutterOverlaySurface createOverlaySurface() {
        return createOverlaySurface(new PlatformOverlayView(this.flutterView.getContext(), this.flutterView.getWidth(), this.flutterView.getHeight(), this.accessibilityEventsDelegate));
    }

    public void destroyOverlaySurfaces() {
        for (int i = 0; i < this.overlayLayerViews.size(); i++) {
            PlatformOverlayView valueAt = this.overlayLayerViews.valueAt(i);
            valueAt.detachFromRenderer();
            valueAt.closeImageReader();
        }
    }

    private void removeOverlaySurfaces() {
        if (this.flutterView == null) {
            Log.e(TAG, "removeOverlaySurfaces called while flutter view is null");
            return;
        }
        for (int i = 0; i < this.overlayLayerViews.size(); i++) {
            this.flutterView.removeView(this.overlayLayerViews.valueAt(i));
        }
        this.overlayLayerViews.clear();
    }
}
