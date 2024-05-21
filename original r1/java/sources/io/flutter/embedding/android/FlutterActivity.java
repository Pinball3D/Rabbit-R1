package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.window.OnBackInvokedCallback;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterActivityAndFragmentDelegate;
import io.flutter.embedding.android.FlutterActivityLaunchConfigs;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.plugins.util.GeneratedPluginRegister;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.util.ViewUtils;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FlutterActivity extends Activity implements FlutterActivityAndFragmentDelegate.Host, LifecycleOwner {
    public static final int FLUTTER_VIEW_ID = ViewUtils.generateViewId(61938);
    private static final String TAG = "FlutterActivity";
    protected FlutterActivityAndFragmentDelegate delegate;
    private boolean hasRegisteredBackCallback = false;
    private LifecycleRegistry lifecycle;
    private final OnBackInvokedCallback onBackInvokedCallback;

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public boolean attachToEngineAutomatically() {
        return true;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host, io.flutter.embedding.android.FlutterEngineConfigurator
    public void cleanUpFlutterEngine(FlutterEngine flutterEngine) {
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public Activity getActivity() {
        return this;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public Context getContext() {
        return this;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public ExclusiveAppComponent<Activity> getExclusiveAppComponent() {
        return this.delegate;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host, androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public void onFlutterSurfaceViewCreated(FlutterSurfaceView flutterSurfaceView) {
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public void onFlutterTextureViewCreated(FlutterTextureView flutterTextureView) {
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public void onFlutterUiNoLongerDisplayed() {
    }

    @Override // io.flutter.plugin.platform.PlatformPlugin.PlatformPluginDelegate
    public boolean popSystemNavigator() {
        return false;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host, io.flutter.embedding.android.FlutterEngineProvider
    public FlutterEngine provideFlutterEngine(Context context) {
        return null;
    }

    void setDelegate(FlutterActivityAndFragmentDelegate flutterActivityAndFragmentDelegate) {
        this.delegate = flutterActivityAndFragmentDelegate;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public boolean shouldAttachEngineToActivity() {
        return true;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public boolean shouldDispatchAppLifecycleState() {
        return true;
    }

    public static Intent createDefaultIntent(Context context) {
        return withNewEngine().build(context);
    }

    public static NewEngineIntentBuilder withNewEngine() {
        return new NewEngineIntentBuilder(FlutterActivity.class);
    }

    /* loaded from: classes3.dex */
    public static class NewEngineIntentBuilder {
        private final Class<? extends FlutterActivity> activityClass;
        private List<String> dartEntrypointArgs;
        private String initialRoute = "/";
        private String backgroundMode = FlutterActivityLaunchConfigs.DEFAULT_BACKGROUND_MODE;

        public NewEngineIntentBuilder dartEntrypointArgs(List<String> list) {
            this.dartEntrypointArgs = list;
            return this;
        }

        public NewEngineIntentBuilder initialRoute(String str) {
            this.initialRoute = str;
            return this;
        }

        public NewEngineIntentBuilder(Class<? extends FlutterActivity> cls) {
            this.activityClass = cls;
        }

        public NewEngineIntentBuilder backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode backgroundMode) {
            this.backgroundMode = backgroundMode.name();
            return this;
        }

        public Intent build(Context context) {
            Intent putExtra = new Intent(context, this.activityClass).putExtra("route", this.initialRoute).putExtra("background_mode", this.backgroundMode).putExtra("destroy_engine_with_activity", true);
            if (this.dartEntrypointArgs != null) {
                putExtra.putExtra("dart_entrypoint_args", new ArrayList(this.dartEntrypointArgs));
            }
            return putExtra;
        }
    }

    public static CachedEngineIntentBuilder withCachedEngine(String str) {
        return new CachedEngineIntentBuilder(FlutterActivity.class, str);
    }

    /* loaded from: classes3.dex */
    public static class CachedEngineIntentBuilder {
        private final Class<? extends FlutterActivity> activityClass;
        private final String cachedEngineId;
        private boolean destroyEngineWithActivity = false;
        private String backgroundMode = FlutterActivityLaunchConfigs.DEFAULT_BACKGROUND_MODE;

        public CachedEngineIntentBuilder destroyEngineWithActivity(boolean z) {
            this.destroyEngineWithActivity = z;
            return this;
        }

        public CachedEngineIntentBuilder(Class<? extends FlutterActivity> cls, String str) {
            this.activityClass = cls;
            this.cachedEngineId = str;
        }

        public CachedEngineIntentBuilder backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode backgroundMode) {
            this.backgroundMode = backgroundMode.name();
            return this;
        }

        public Intent build(Context context) {
            return new Intent(context, this.activityClass).putExtra("cached_engine_id", this.cachedEngineId).putExtra("destroy_engine_with_activity", this.destroyEngineWithActivity).putExtra("background_mode", this.backgroundMode);
        }
    }

    public static NewEngineInGroupIntentBuilder withNewEngineInGroup(String str) {
        return new NewEngineInGroupIntentBuilder(FlutterActivity.class, str);
    }

    /* loaded from: classes3.dex */
    public static class NewEngineInGroupIntentBuilder {
        private final Class<? extends FlutterActivity> activityClass;
        private final String cachedEngineGroupId;
        private String dartEntrypoint = SentryThread.JsonKeys.MAIN;
        private String initialRoute = "/";
        private String backgroundMode = FlutterActivityLaunchConfigs.DEFAULT_BACKGROUND_MODE;

        public NewEngineInGroupIntentBuilder dartEntrypoint(String str) {
            this.dartEntrypoint = str;
            return this;
        }

        public NewEngineInGroupIntentBuilder initialRoute(String str) {
            this.initialRoute = str;
            return this;
        }

        public NewEngineInGroupIntentBuilder(Class<? extends FlutterActivity> cls, String str) {
            this.activityClass = cls;
            this.cachedEngineGroupId = str;
        }

        public NewEngineInGroupIntentBuilder backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode backgroundMode) {
            this.backgroundMode = backgroundMode.name();
            return this;
        }

        public Intent build(Context context) {
            return new Intent(context, this.activityClass).putExtra("dart_entrypoint", this.dartEntrypoint).putExtra("route", this.initialRoute).putExtra("cached_engine_group_id", this.cachedEngineGroupId).putExtra("background_mode", this.backgroundMode).putExtra("destroy_engine_with_activity", true);
        }
    }

    public FlutterActivity() {
        this.onBackInvokedCallback = Build.VERSION.SDK_INT >= 33 ? new OnBackInvokedCallback() { // from class: io.flutter.embedding.android.FlutterActivity.1
            @Override // android.window.OnBackInvokedCallback
            public void onBackInvoked() {
                FlutterActivity.this.onBackPressed();
            }
        } : null;
        this.lifecycle = new LifecycleRegistry(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        switchLaunchThemeForNormalTheme();
        super.onCreate(bundle);
        FlutterActivityAndFragmentDelegate flutterActivityAndFragmentDelegate = new FlutterActivityAndFragmentDelegate(this);
        this.delegate = flutterActivityAndFragmentDelegate;
        flutterActivityAndFragmentDelegate.onAttach(this);
        this.delegate.onRestoreInstanceState(bundle);
        this.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        configureWindowForTransparency();
        setContentView(createFlutterView());
        configureStatusBarForFullscreenFlutterExperience();
    }

    public void registerOnBackInvokedCallback() {
        if (Build.VERSION.SDK_INT >= 33) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.onBackInvokedCallback);
            this.hasRegisteredBackCallback = true;
        }
    }

    public void unregisterOnBackInvokedCallback() {
        if (Build.VERSION.SDK_INT >= 33) {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.onBackInvokedCallback);
            this.hasRegisteredBackCallback = false;
        }
    }

    @Override // io.flutter.plugin.platform.PlatformPlugin.PlatformPluginDelegate
    public void setFrameworkHandlesBack(boolean z) {
        if (z && !this.hasRegisteredBackCallback) {
            registerOnBackInvokedCallback();
        } else {
            if (z || !this.hasRegisteredBackCallback) {
                return;
            }
            unregisterOnBackInvokedCallback();
        }
    }

    private void switchLaunchThemeForNormalTheme() {
        try {
            Bundle metaData = getMetaData();
            if (metaData != null) {
                int i = metaData.getInt("io.flutter.embedding.android.NormalTheme", -1);
                if (i != -1) {
                    setTheme(i);
                }
            } else {
                Log.v(TAG, "Using the launch theme as normal theme.");
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "Could not read meta-data for FlutterActivity. Using the launch theme as normal theme.");
        }
    }

    private void configureWindowForTransparency() {
        if (getBackgroundMode() == FlutterActivityLaunchConfigs.BackgroundMode.transparent) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    private View createFlutterView() {
        return this.delegate.onCreateView(null, null, null, FLUTTER_VIEW_ID, getRenderMode() == RenderMode.surface);
    }

    private void configureStatusBarForFullscreenFlutterExperience() {
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(1073741824);
        window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_START);
        if (stillAttachedForEvent("onStart")) {
            this.delegate.onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
        if (stillAttachedForEvent("onResume")) {
            this.delegate.onResume();
        }
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        if (stillAttachedForEvent("onPostResume")) {
            this.delegate.onPostResume();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        if (stillAttachedForEvent("onPause")) {
            this.delegate.onPause();
        }
        this.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (stillAttachedForEvent("onStop")) {
            this.delegate.onStop();
        }
        this.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (stillAttachedForEvent("onSaveInstanceState")) {
            this.delegate.onSaveInstanceState(bundle);
        }
    }

    public void release() {
        unregisterOnBackInvokedCallback();
        FlutterActivityAndFragmentDelegate flutterActivityAndFragmentDelegate = this.delegate;
        if (flutterActivityAndFragmentDelegate != null) {
            flutterActivityAndFragmentDelegate.release();
            this.delegate = null;
        }
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public void detachFromFlutterEngine() {
        Log.w(TAG, "FlutterActivity " + this + " connection to the engine " + getFlutterEngine() + " evicted by another attaching activity");
        FlutterActivityAndFragmentDelegate flutterActivityAndFragmentDelegate = this.delegate;
        if (flutterActivityAndFragmentDelegate != null) {
            flutterActivityAndFragmentDelegate.onDestroyView();
            this.delegate.onDetach();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (stillAttachedForEvent("onDestroy")) {
            this.delegate.onDestroyView();
            this.delegate.onDetach();
        }
        release();
        this.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (stillAttachedForEvent("onActivityResult")) {
            this.delegate.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (stillAttachedForEvent("onNewIntent")) {
            this.delegate.onNewIntent(intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (stillAttachedForEvent("onBackPressed")) {
            this.delegate.onBackPressed();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (stillAttachedForEvent("onRequestPermissionsResult")) {
            this.delegate.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        if (stillAttachedForEvent("onUserLeaveHint")) {
            this.delegate.onUserLeaveHint();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (stillAttachedForEvent("onWindowFocusChanged")) {
            this.delegate.onWindowFocusChanged(z);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (stillAttachedForEvent("onTrimMemory")) {
            this.delegate.onTrimMemory(i);
        }
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public FlutterShellArgs getFlutterShellArgs() {
        return FlutterShellArgs.fromIntent(getIntent());
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public String getCachedEngineId() {
        return getIntent().getStringExtra("cached_engine_id");
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public String getCachedEngineGroupId() {
        return getIntent().getStringExtra("cached_engine_group_id");
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public boolean shouldDestroyEngineWithHost() {
        return (getCachedEngineId() != null || this.delegate.isFlutterEngineFromHost()) ? getIntent().getBooleanExtra("destroy_engine_with_activity", false) : getIntent().getBooleanExtra("destroy_engine_with_activity", true);
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public String getDartEntrypointFunctionName() {
        if (getIntent().hasExtra("dart_entrypoint")) {
            return getIntent().getStringExtra("dart_entrypoint");
        }
        try {
            Bundle metaData = getMetaData();
            String string = metaData != null ? metaData.getString("io.flutter.Entrypoint") : null;
            return string != null ? string : SentryThread.JsonKeys.MAIN;
        } catch (PackageManager.NameNotFoundException unused) {
            return SentryThread.JsonKeys.MAIN;
        }
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public List<String> getDartEntrypointArgs() {
        return (List) getIntent().getSerializableExtra("dart_entrypoint_args");
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public String getDartEntrypointLibraryUri() {
        try {
            Bundle metaData = getMetaData();
            if (metaData != null) {
                return metaData.getString("io.flutter.EntrypointUri");
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public String getInitialRoute() {
        if (getIntent().hasExtra("route")) {
            return getIntent().getStringExtra("route");
        }
        try {
            Bundle metaData = getMetaData();
            if (metaData != null) {
                return metaData.getString("io.flutter.InitialRoute");
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public String getAppBundlePath() {
        String dataString;
        if (isDebuggable() && "android.intent.action.RUN".equals(getIntent().getAction()) && (dataString = getIntent().getDataString()) != null) {
            return dataString;
        }
        return null;
    }

    private boolean isDebuggable() {
        return (getApplicationInfo().flags & 2) != 0;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public RenderMode getRenderMode() {
        return getBackgroundMode() == FlutterActivityLaunchConfigs.BackgroundMode.opaque ? RenderMode.surface : RenderMode.texture;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public TransparencyMode getTransparencyMode() {
        if (getBackgroundMode() == FlutterActivityLaunchConfigs.BackgroundMode.opaque) {
            return TransparencyMode.opaque;
        }
        return TransparencyMode.transparent;
    }

    protected FlutterActivityLaunchConfigs.BackgroundMode getBackgroundMode() {
        if (getIntent().hasExtra("background_mode")) {
            return FlutterActivityLaunchConfigs.BackgroundMode.valueOf(getIntent().getStringExtra("background_mode"));
        }
        return FlutterActivityLaunchConfigs.BackgroundMode.opaque;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FlutterEngine getFlutterEngine() {
        return this.delegate.getFlutterEngine();
    }

    protected Bundle getMetaData() throws PackageManager.NameNotFoundException {
        return getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public PlatformPlugin providePlatformPlugin(Activity activity, FlutterEngine flutterEngine) {
        return new PlatformPlugin(getActivity(), flutterEngine.getPlatformChannel(), this);
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host, io.flutter.embedding.android.FlutterEngineConfigurator
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        if (this.delegate.isFlutterEngineFromHost()) {
            return;
        }
        GeneratedPluginRegister.registerGeneratedPlugins(flutterEngine);
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public boolean shouldHandleDeeplinking() {
        try {
            Bundle metaData = getMetaData();
            if (metaData != null) {
                return metaData.getBoolean("flutter_deeplinking_enabled");
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public void onFlutterUiDisplayed() {
        reportFullyDrawn();
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public boolean shouldRestoreAndSaveState() {
        if (getIntent().hasExtra("enable_state_restoration")) {
            return getIntent().getBooleanExtra("enable_state_restoration", false);
        }
        return getCachedEngineId() == null;
    }

    @Override // io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host
    public void updateSystemUiOverlays() {
        FlutterActivityAndFragmentDelegate flutterActivityAndFragmentDelegate = this.delegate;
        if (flutterActivityAndFragmentDelegate != null) {
            flutterActivityAndFragmentDelegate.updateSystemUiOverlays();
        }
    }

    private boolean stillAttachedForEvent(String str) {
        FlutterActivityAndFragmentDelegate flutterActivityAndFragmentDelegate = this.delegate;
        if (flutterActivityAndFragmentDelegate == null) {
            Log.w(TAG, "FlutterActivity " + hashCode() + " " + str + " called after release.");
            return false;
        }
        if (flutterActivityAndFragmentDelegate.isAttached()) {
            return true;
        }
        Log.w(TAG, "FlutterActivity " + hashCode() + " " + str + " called after detach.");
        return false;
    }
}
