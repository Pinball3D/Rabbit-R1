package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.lifecycle.Lifecycle;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.FlutterEngineGroup;
import io.flutter.embedding.engine.FlutterEngineGroupCache;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.renderer.FlutterUiDisplayListener;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class FlutterActivityAndFragmentDelegate implements ExclusiveAppComponent<Activity> {
    private static final int FLUTTER_SPLASH_VIEW_FALLBACK_ID = 486947586;
    private static final String FRAMEWORK_RESTORATION_BUNDLE_KEY = "framework";
    private static final String PLUGINS_RESTORATION_BUNDLE_KEY = "plugins";
    private static final String TAG = "FlutterActivityAndFragmentDelegate";
    ViewTreeObserver.OnPreDrawListener activePreDrawListener;
    private FlutterEngineGroup engineGroup;
    private FlutterEngine flutterEngine;
    private final FlutterUiDisplayListener flutterUiDisplayListener;
    FlutterView flutterView;
    private Host host;
    private boolean isAttached;
    private boolean isFirstFrameRendered;
    private boolean isFlutterEngineFromHost;
    private boolean isFlutterUiDisplayed;
    private PlatformPlugin platformPlugin;
    private Integer previousVisibility;

    /* loaded from: classes3.dex */
    public interface DelegateFactory {
        FlutterActivityAndFragmentDelegate createDelegate(Host host);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface Host extends FlutterEngineProvider, FlutterEngineConfigurator, PlatformPlugin.PlatformPluginDelegate {
        boolean attachToEngineAutomatically();

        void cleanUpFlutterEngine(FlutterEngine flutterEngine);

        void configureFlutterEngine(FlutterEngine flutterEngine);

        void detachFromFlutterEngine();

        Activity getActivity();

        String getAppBundlePath();

        String getCachedEngineGroupId();

        String getCachedEngineId();

        Context getContext();

        List<String> getDartEntrypointArgs();

        String getDartEntrypointFunctionName();

        String getDartEntrypointLibraryUri();

        ExclusiveAppComponent<Activity> getExclusiveAppComponent();

        FlutterShellArgs getFlutterShellArgs();

        String getInitialRoute();

        Lifecycle getLifecycle();

        RenderMode getRenderMode();

        TransparencyMode getTransparencyMode();

        void onFlutterSurfaceViewCreated(FlutterSurfaceView flutterSurfaceView);

        void onFlutterTextureViewCreated(FlutterTextureView flutterTextureView);

        void onFlutterUiDisplayed();

        void onFlutterUiNoLongerDisplayed();

        @Override // io.flutter.embedding.android.FlutterEngineProvider
        FlutterEngine provideFlutterEngine(Context context);

        PlatformPlugin providePlatformPlugin(Activity activity, FlutterEngine flutterEngine);

        boolean shouldAttachEngineToActivity();

        boolean shouldDestroyEngineWithHost();

        boolean shouldDispatchAppLifecycleState();

        boolean shouldHandleDeeplinking();

        boolean shouldRestoreAndSaveState();

        void updateSystemUiOverlays();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterEngine getFlutterEngine() {
        return this.flutterEngine;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAttached() {
        return this.isAttached;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFlutterEngineFromHost() {
        return this.isFlutterEngineFromHost;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release() {
        this.host = null;
        this.flutterEngine = null;
        this.flutterView = null;
        this.platformPlugin = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterActivityAndFragmentDelegate(Host host) {
        this(host, null);
    }

    FlutterActivityAndFragmentDelegate(Host host, FlutterEngineGroup flutterEngineGroup) {
        this.flutterUiDisplayListener = new FlutterUiDisplayListener() { // from class: io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.1
            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiDisplayed() {
                FlutterActivityAndFragmentDelegate.this.host.onFlutterUiDisplayed();
                FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed = true;
                FlutterActivityAndFragmentDelegate.this.isFirstFrameRendered = true;
            }

            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiNoLongerDisplayed() {
                FlutterActivityAndFragmentDelegate.this.host.onFlutterUiNoLongerDisplayed();
                FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed = false;
            }
        };
        this.host = host;
        this.isFirstFrameRendered = false;
        this.engineGroup = flutterEngineGroup;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAttach(Context context) {
        ensureAlive();
        if (this.flutterEngine == null) {
            setUpFlutterEngine();
        }
        if (this.host.shouldAttachEngineToActivity()) {
            Log.v(TAG, "Attaching FlutterEngine to the Activity that owns this delegate.");
            this.flutterEngine.getActivityControlSurface().attachToActivity(this, this.host.getLifecycle());
        }
        Host host = this.host;
        this.platformPlugin = host.providePlatformPlugin(host.getActivity(), this.flutterEngine);
        this.host.configureFlutterEngine(this.flutterEngine);
        this.isAttached = true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.flutter.embedding.android.ExclusiveAppComponent
    public Activity getAppComponent() {
        Activity activity = this.host.getActivity();
        if (activity != null) {
            return activity;
        }
        throw new AssertionError("FlutterActivityAndFragmentDelegate's getAppComponent should only be queried after onAttach, when the host's activity should always be non-null");
    }

    private FlutterEngineGroup.Options addEntrypointOptions(FlutterEngineGroup.Options options) {
        String appBundlePath = this.host.getAppBundlePath();
        if (appBundlePath == null || appBundlePath.isEmpty()) {
            appBundlePath = FlutterInjector.instance().flutterLoader().findAppBundlePath();
        }
        DartExecutor.DartEntrypoint dartEntrypoint = new DartExecutor.DartEntrypoint(appBundlePath, this.host.getDartEntrypointFunctionName());
        String initialRoute = this.host.getInitialRoute();
        if (initialRoute == null && (initialRoute = maybeGetInitialRouteFromIntent(this.host.getActivity().getIntent())) == null) {
            initialRoute = "/";
        }
        return options.setDartEntrypoint(dartEntrypoint).setInitialRoute(initialRoute).setDartEntrypointArgs(this.host.getDartEntrypointArgs());
    }

    void setUpFlutterEngine() {
        Log.v(TAG, "Setting up FlutterEngine.");
        String cachedEngineId = this.host.getCachedEngineId();
        if (cachedEngineId != null) {
            FlutterEngine flutterEngine = FlutterEngineCache.getInstance().get(cachedEngineId);
            this.flutterEngine = flutterEngine;
            this.isFlutterEngineFromHost = true;
            if (flutterEngine == null) {
                throw new IllegalStateException("The requested cached FlutterEngine did not exist in the FlutterEngineCache: '" + cachedEngineId + "'");
            }
            return;
        }
        Host host = this.host;
        FlutterEngine provideFlutterEngine = host.provideFlutterEngine(host.getContext());
        this.flutterEngine = provideFlutterEngine;
        if (provideFlutterEngine != null) {
            this.isFlutterEngineFromHost = true;
            return;
        }
        String cachedEngineGroupId = this.host.getCachedEngineGroupId();
        if (cachedEngineGroupId != null) {
            FlutterEngineGroup flutterEngineGroup = FlutterEngineGroupCache.getInstance().get(cachedEngineGroupId);
            if (flutterEngineGroup == null) {
                throw new IllegalStateException("The requested cached FlutterEngineGroup did not exist in the FlutterEngineGroupCache: '" + cachedEngineGroupId + "'");
            }
            this.flutterEngine = flutterEngineGroup.createAndRunEngine(addEntrypointOptions(new FlutterEngineGroup.Options(this.host.getContext())));
            this.isFlutterEngineFromHost = false;
            return;
        }
        Log.v(TAG, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment.");
        FlutterEngineGroup flutterEngineGroup2 = this.engineGroup;
        if (flutterEngineGroup2 == null) {
            flutterEngineGroup2 = new FlutterEngineGroup(this.host.getContext(), this.host.getFlutterShellArgs().toArray());
        }
        this.flutterEngine = flutterEngineGroup2.createAndRunEngine(addEntrypointOptions(new FlutterEngineGroup.Options(this.host.getContext()).setAutomaticallyRegisterPlugins(false).setWaitForRestorationData(this.host.shouldRestoreAndSaveState())));
        this.isFlutterEngineFromHost = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, int i, boolean z) {
        Log.v(TAG, "Creating FlutterView.");
        ensureAlive();
        if (this.host.getRenderMode() == RenderMode.surface) {
            FlutterSurfaceView flutterSurfaceView = new FlutterSurfaceView(this.host.getContext(), this.host.getTransparencyMode() == TransparencyMode.transparent);
            this.host.onFlutterSurfaceViewCreated(flutterSurfaceView);
            this.flutterView = new FlutterView(this.host.getContext(), flutterSurfaceView);
        } else {
            FlutterTextureView flutterTextureView = new FlutterTextureView(this.host.getContext());
            flutterTextureView.setOpaque(this.host.getTransparencyMode() == TransparencyMode.opaque);
            this.host.onFlutterTextureViewCreated(flutterTextureView);
            this.flutterView = new FlutterView(this.host.getContext(), flutterTextureView);
        }
        this.flutterView.addOnFirstFrameRenderedListener(this.flutterUiDisplayListener);
        if (this.host.attachToEngineAutomatically()) {
            Log.v(TAG, "Attaching FlutterEngine to FlutterView.");
            this.flutterView.attachToFlutterEngine(this.flutterEngine);
        }
        this.flutterView.setId(i);
        if (z) {
            delayFirstAndroidViewDraw(this.flutterView);
        }
        return this.flutterView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onRestoreInstanceState(Bundle bundle) {
        Bundle bundle2;
        byte[] bArr;
        Log.v(TAG, "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state.");
        ensureAlive();
        if (bundle != null) {
            bundle2 = bundle.getBundle(PLUGINS_RESTORATION_BUNDLE_KEY);
            bArr = bundle.getByteArray(FRAMEWORK_RESTORATION_BUNDLE_KEY);
        } else {
            bundle2 = null;
            bArr = null;
        }
        if (this.host.shouldRestoreAndSaveState()) {
            this.flutterEngine.getRestorationChannel().setRestorationData(bArr);
        }
        if (this.host.shouldAttachEngineToActivity()) {
            this.flutterEngine.getActivityControlSurface().onRestoreInstanceState(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onStart() {
        Log.v(TAG, "onStart()");
        ensureAlive();
        doInitialFlutterViewRun();
        Integer num = this.previousVisibility;
        if (num != null) {
            this.flutterView.setVisibility(num.intValue());
        }
    }

    private void doInitialFlutterViewRun() {
        DartExecutor.DartEntrypoint dartEntrypoint;
        if (this.host.getCachedEngineId() == null && !this.flutterEngine.getDartExecutor().isExecutingDart()) {
            String initialRoute = this.host.getInitialRoute();
            if (initialRoute == null && (initialRoute = maybeGetInitialRouteFromIntent(this.host.getActivity().getIntent())) == null) {
                initialRoute = "/";
            }
            String dartEntrypointLibraryUri = this.host.getDartEntrypointLibraryUri();
            Log.v(TAG, new StringBuilder("Executing Dart entrypoint: ").append(this.host.getDartEntrypointFunctionName()).append(", library uri: ").append(dartEntrypointLibraryUri).toString() == null ? "\"\"" : dartEntrypointLibraryUri + ", and sending initial route: " + initialRoute);
            this.flutterEngine.getNavigationChannel().setInitialRoute(initialRoute);
            String appBundlePath = this.host.getAppBundlePath();
            if (appBundlePath == null || appBundlePath.isEmpty()) {
                appBundlePath = FlutterInjector.instance().flutterLoader().findAppBundlePath();
            }
            if (dartEntrypointLibraryUri == null) {
                dartEntrypoint = new DartExecutor.DartEntrypoint(appBundlePath, this.host.getDartEntrypointFunctionName());
            } else {
                dartEntrypoint = new DartExecutor.DartEntrypoint(appBundlePath, dartEntrypointLibraryUri, this.host.getDartEntrypointFunctionName());
            }
            this.flutterEngine.getDartExecutor().executeDartEntrypoint(dartEntrypoint, this.host.getDartEntrypointArgs());
        }
    }

    private String maybeGetInitialRouteFromIntent(Intent intent) {
        Uri data;
        if (!this.host.shouldHandleDeeplinking() || (data = intent.getData()) == null) {
            return null;
        }
        return data.toString();
    }

    private void delayFirstAndroidViewDraw(final FlutterView flutterView) {
        if (this.host.getRenderMode() != RenderMode.surface) {
            throw new IllegalArgumentException("Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`.");
        }
        if (this.activePreDrawListener != null) {
            flutterView.getViewTreeObserver().removeOnPreDrawListener(this.activePreDrawListener);
        }
        this.activePreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed && FlutterActivityAndFragmentDelegate.this.activePreDrawListener != null) {
                    flutterView.getViewTreeObserver().removeOnPreDrawListener(this);
                    FlutterActivityAndFragmentDelegate.this.activePreDrawListener = null;
                }
                return FlutterActivityAndFragmentDelegate.this.isFlutterUiDisplayed;
            }
        };
        flutterView.getViewTreeObserver().addOnPreDrawListener(this.activePreDrawListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResume() {
        FlutterEngine flutterEngine;
        Log.v(TAG, "onResume()");
        ensureAlive();
        if (!this.host.shouldDispatchAppLifecycleState() || (flutterEngine = this.flutterEngine) == null) {
            return;
        }
        flutterEngine.getLifecycleChannel().appIsResumed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPostResume() {
        Log.v(TAG, "onPostResume()");
        ensureAlive();
        if (this.flutterEngine != null) {
            updateSystemUiOverlays();
        } else {
            Log.w(TAG, "onPostResume() invoked before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSystemUiOverlays() {
        PlatformPlugin platformPlugin = this.platformPlugin;
        if (platformPlugin != null) {
            platformPlugin.updateSystemUiOverlays();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPause() {
        FlutterEngine flutterEngine;
        Log.v(TAG, "onPause()");
        ensureAlive();
        if (!this.host.shouldDispatchAppLifecycleState() || (flutterEngine = this.flutterEngine) == null) {
            return;
        }
        flutterEngine.getLifecycleChannel().appIsInactive();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onStop() {
        FlutterEngine flutterEngine;
        Log.v(TAG, "onStop()");
        ensureAlive();
        if (this.host.shouldDispatchAppLifecycleState() && (flutterEngine = this.flutterEngine) != null) {
            flutterEngine.getLifecycleChannel().appIsPaused();
        }
        this.previousVisibility = Integer.valueOf(this.flutterView.getVisibility());
        this.flutterView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDestroyView() {
        Log.v(TAG, "onDestroyView()");
        ensureAlive();
        if (this.activePreDrawListener != null) {
            this.flutterView.getViewTreeObserver().removeOnPreDrawListener(this.activePreDrawListener);
            this.activePreDrawListener = null;
        }
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            flutterView.detachFromFlutterEngine();
            this.flutterView.removeOnFirstFrameRenderedListener(this.flutterUiDisplayListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSaveInstanceState(Bundle bundle) {
        Log.v(TAG, "onSaveInstanceState. Giving framework and plugins an opportunity to save state.");
        ensureAlive();
        if (this.host.shouldRestoreAndSaveState()) {
            bundle.putByteArray(FRAMEWORK_RESTORATION_BUNDLE_KEY, this.flutterEngine.getRestorationChannel().getRestorationData());
        }
        if (this.host.shouldAttachEngineToActivity()) {
            Bundle bundle2 = new Bundle();
            this.flutterEngine.getActivityControlSurface().onSaveInstanceState(bundle2);
            bundle.putBundle(PLUGINS_RESTORATION_BUNDLE_KEY, bundle2);
        }
    }

    @Override // io.flutter.embedding.android.ExclusiveAppComponent
    public void detachFromFlutterEngine() {
        if (this.host.shouldDestroyEngineWithHost()) {
            throw new AssertionError("The internal FlutterEngine created by " + this.host + " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine");
        }
        this.host.detachFromFlutterEngine();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDetach() {
        FlutterEngine flutterEngine;
        if (this.isAttached) {
            Log.v(TAG, "onDetach()");
            ensureAlive();
            this.host.cleanUpFlutterEngine(this.flutterEngine);
            if (this.host.shouldAttachEngineToActivity()) {
                Log.v(TAG, "Detaching FlutterEngine from the Activity that owns this Fragment.");
                if (this.host.getActivity().isChangingConfigurations()) {
                    this.flutterEngine.getActivityControlSurface().detachFromActivityForConfigChanges();
                } else {
                    this.flutterEngine.getActivityControlSurface().detachFromActivity();
                }
            }
            PlatformPlugin platformPlugin = this.platformPlugin;
            if (platformPlugin != null) {
                platformPlugin.destroy();
                this.platformPlugin = null;
            }
            if (this.host.shouldDispatchAppLifecycleState() && (flutterEngine = this.flutterEngine) != null) {
                flutterEngine.getLifecycleChannel().appIsDetached();
            }
            if (this.host.shouldDestroyEngineWithHost()) {
                this.flutterEngine.destroy();
                if (this.host.getCachedEngineId() != null) {
                    FlutterEngineCache.getInstance().remove(this.host.getCachedEngineId());
                }
                this.flutterEngine = null;
            }
            this.isAttached = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onBackPressed() {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v(TAG, "Forwarding onBackPressed() to FlutterEngine.");
            this.flutterEngine.getNavigationChannel().popRoute();
        } else {
            Log.w(TAG, "Invoked onBackPressed() before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v(TAG, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: " + i + "\npermissions: " + Arrays.toString(strArr) + "\ngrantResults: " + Arrays.toString(iArr));
            this.flutterEngine.getActivityControlSurface().onRequestPermissionsResult(i, strArr, iArr);
        } else {
            Log.w(TAG, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNewIntent(Intent intent) {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v(TAG, "Forwarding onNewIntent() to FlutterEngine and sending pushRouteInformation message.");
            this.flutterEngine.getActivityControlSurface().onNewIntent(intent);
            String maybeGetInitialRouteFromIntent = maybeGetInitialRouteFromIntent(intent);
            if (maybeGetInitialRouteFromIntent == null || maybeGetInitialRouteFromIntent.isEmpty()) {
                return;
            }
            this.flutterEngine.getNavigationChannel().pushRouteInformation(maybeGetInitialRouteFromIntent);
            return;
        }
        Log.w(TAG, "onNewIntent() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityResult(int i, int i2, Intent intent) {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v(TAG, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: " + i + "\nresultCode: " + i2 + "\ndata: " + intent);
            this.flutterEngine.getActivityControlSurface().onActivityResult(i, i2, intent);
        } else {
            Log.w(TAG, "onActivityResult() invoked before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onUserLeaveHint() {
        ensureAlive();
        if (this.flutterEngine != null) {
            Log.v(TAG, "Forwarding onUserLeaveHint() to FlutterEngine.");
            this.flutterEngine.getActivityControlSurface().onUserLeaveHint();
        } else {
            Log.w(TAG, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onWindowFocusChanged(boolean z) {
        FlutterEngine flutterEngine;
        ensureAlive();
        Log.v(TAG, "Received onWindowFocusChanged: ".concat(z ? "true" : "false"));
        if (!this.host.shouldDispatchAppLifecycleState() || (flutterEngine = this.flutterEngine) == null) {
            return;
        }
        if (z) {
            flutterEngine.getLifecycleChannel().aWindowIsFocused();
        } else {
            flutterEngine.getLifecycleChannel().noWindowsAreFocused();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onTrimMemory(int i) {
        ensureAlive();
        FlutterEngine flutterEngine = this.flutterEngine;
        if (flutterEngine != null) {
            if (this.isFirstFrameRendered && i >= 10) {
                flutterEngine.getDartExecutor().notifyLowMemoryWarning();
                this.flutterEngine.getSystemChannel().sendMemoryPressureWarning();
            }
            this.flutterEngine.getRenderer().onTrimMemory(i);
        }
    }

    private void ensureAlive() {
        if (this.host == null) {
            throw new IllegalStateException("Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate.");
        }
    }
}
