package io.flutter.app;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.platform.PlatformPlugin;
import io.flutter.util.Preconditions;
import io.flutter.view.FlutterMain;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterRunArguments;
import io.flutter.view.FlutterView;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes3.dex */
public final class FlutterActivityDelegate implements FlutterActivityEvents, FlutterView.Provider, PluginRegistry {
    private static final String SPLASH_SCREEN_META_DATA_KEY = "io.flutter.app.android.SplashScreenUntilFirstFrame";
    private static final String TAG = "FlutterActivityDelegate";
    private static final WindowManager.LayoutParams matchParent = new WindowManager.LayoutParams(-1, -1);
    private final Activity activity;
    private FlutterView flutterView;
    private View launchView;
    private final ViewFactory viewFactory;

    /* loaded from: classes3.dex */
    public interface ViewFactory {
        FlutterNativeView createFlutterNativeView();

        FlutterView createFlutterView(Context context);

        boolean retainFlutterNativeView();
    }

    @Override // io.flutter.view.FlutterView.Provider
    public FlutterView getFlutterView() {
        return this.flutterView;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    public FlutterActivityDelegate(Activity activity, ViewFactory viewFactory) {
        this.activity = (Activity) Preconditions.checkNotNull(activity);
        this.viewFactory = (ViewFactory) Preconditions.checkNotNull(viewFactory);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public boolean hasPlugin(String str) {
        return this.flutterView.getPluginRegistry().hasPlugin(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public <T> T valuePublishedByPlugin(String str) {
        return (T) this.flutterView.getPluginRegistry().valuePublishedByPlugin(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public PluginRegistry.Registrar registrarFor(String str) {
        return this.flutterView.getPluginRegistry().registrarFor(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        return this.flutterView.getPluginRegistry().onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return this.flutterView.getPluginRegistry().onActivityResult(i, i2, intent);
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onCreate(Bundle bundle) {
        String findAppBundlePath;
        Window window = this.activity.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(1073741824);
        window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
        FlutterMain.ensureInitializationComplete(this.activity.getApplicationContext(), getArgsFromIntent(this.activity.getIntent()));
        FlutterView createFlutterView = this.viewFactory.createFlutterView(this.activity);
        this.flutterView = createFlutterView;
        if (createFlutterView == null) {
            FlutterView flutterView = new FlutterView(this.activity, null, this.viewFactory.createFlutterNativeView());
            this.flutterView = flutterView;
            flutterView.setLayoutParams(matchParent);
            this.activity.setContentView(this.flutterView);
            View createLaunchView = createLaunchView();
            this.launchView = createLaunchView;
            if (createLaunchView != null) {
                addLaunchView();
            }
        }
        if (loadIntent(this.activity.getIntent()) || (findAppBundlePath = FlutterMain.findAppBundlePath()) == null) {
            return;
        }
        runBundle(findAppBundlePath);
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onNewIntent(Intent intent) {
        if (isDebuggable() && loadIntent(intent)) {
            return;
        }
        this.flutterView.getPluginRegistry().onNewIntent(intent);
    }

    private boolean isDebuggable() {
        return (this.activity.getApplicationInfo().flags & 2) != 0;
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onPause() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.activity.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            flutterView.onPause();
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onStart() {
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            flutterView.onStart();
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onResume() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            ((FlutterApplication) application).setCurrentActivity(this.activity);
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onStop() {
        this.flutterView.onStop();
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onPostResume() {
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            flutterView.onPostResume();
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onDestroy() {
        Application application = (Application) this.activity.getApplicationContext();
        if (application instanceof FlutterApplication) {
            FlutterApplication flutterApplication = (FlutterApplication) application;
            if (this.activity.equals(flutterApplication.getCurrentActivity())) {
                flutterApplication.setCurrentActivity(null);
            }
        }
        FlutterView flutterView = this.flutterView;
        if (flutterView != null) {
            if (flutterView.getPluginRegistry().onViewDestroy(this.flutterView.getFlutterNativeView()) || this.viewFactory.retainFlutterNativeView()) {
                this.flutterView.detach();
            } else {
                this.flutterView.destroy();
            }
        }
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public boolean onBackPressed() {
        FlutterView flutterView = this.flutterView;
        if (flutterView == null) {
            return false;
        }
        flutterView.popRoute();
        return true;
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onUserLeaveHint() {
        this.flutterView.getPluginRegistry().onUserLeaveHint();
    }

    @Override // io.flutter.app.FlutterActivityEvents
    public void onWindowFocusChanged(boolean z) {
        this.flutterView.getPluginRegistry().onWindowFocusChanged(z);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 10) {
            this.flutterView.onMemoryPressure();
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.flutterView.onMemoryPressure();
    }

    private static String[] getArgsFromIntent(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_TRACE_STARTUP, false)) {
            arrayList.add(FlutterShellArgs.ARG_TRACE_STARTUP);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_START_PAUSED, false)) {
            arrayList.add(FlutterShellArgs.ARG_START_PAUSED);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_DISABLE_SERVICE_AUTH_CODES, false)) {
            arrayList.add(FlutterShellArgs.ARG_DISABLE_SERVICE_AUTH_CODES);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_USE_TEST_FONTS, false)) {
            arrayList.add(FlutterShellArgs.ARG_USE_TEST_FONTS);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_ENABLE_DART_PROFILING, false)) {
            arrayList.add(FlutterShellArgs.ARG_ENABLE_DART_PROFILING);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_ENABLE_SOFTWARE_RENDERING, false)) {
            arrayList.add(FlutterShellArgs.ARG_ENABLE_SOFTWARE_RENDERING);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_SKIA_DETERMINISTIC_RENDERING, false)) {
            arrayList.add(FlutterShellArgs.ARG_SKIA_DETERMINISTIC_RENDERING);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_TRACE_SKIA, false)) {
            arrayList.add(FlutterShellArgs.ARG_TRACE_SKIA);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_TRACE_SYSTRACE, false)) {
            arrayList.add(FlutterShellArgs.ARG_TRACE_SYSTRACE);
        }
        if (intent.hasExtra(FlutterShellArgs.ARG_KEY_TRACE_TO_FILE)) {
            arrayList.add("--trace-to-file=" + intent.getStringExtra(FlutterShellArgs.ARG_KEY_TRACE_TO_FILE));
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_DUMP_SHADER_SKP_ON_SHADER_COMPILATION, false)) {
            arrayList.add(FlutterShellArgs.ARG_DUMP_SHADER_SKP_ON_SHADER_COMPILATION);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_CACHE_SKSL, false)) {
            arrayList.add(FlutterShellArgs.ARG_CACHE_SKSL);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_PURGE_PERSISTENT_CACHE, false)) {
            arrayList.add(FlutterShellArgs.ARG_PURGE_PERSISTENT_CACHE);
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_VERBOSE_LOGGING, false)) {
            arrayList.add(FlutterShellArgs.ARG_VERBOSE_LOGGING);
        }
        int intExtra = intent.getIntExtra(FlutterShellArgs.ARG_KEY_VM_SERVICE_PORT, 0);
        if (intExtra > 0) {
            arrayList.add(FlutterShellArgs.ARG_VM_SERVICE_PORT + Integer.toString(intExtra));
        } else {
            int intExtra2 = intent.getIntExtra(FlutterShellArgs.ARG_KEY_OBSERVATORY_PORT, 0);
            if (intExtra2 > 0) {
                arrayList.add(FlutterShellArgs.ARG_VM_SERVICE_PORT + Integer.toString(intExtra2));
            }
        }
        if (intent.getBooleanExtra(FlutterShellArgs.ARG_KEY_ENDLESS_TRACE_BUFFER, false)) {
            arrayList.add(FlutterShellArgs.ARG_ENDLESS_TRACE_BUFFER);
        }
        if (intent.hasExtra(FlutterShellArgs.ARG_KEY_DART_FLAGS)) {
            arrayList.add("--dart-flags=" + intent.getStringExtra(FlutterShellArgs.ARG_KEY_DART_FLAGS));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private boolean loadIntent(Intent intent) {
        if (!"android.intent.action.RUN".equals(intent.getAction())) {
            return false;
        }
        String stringExtra = intent.getStringExtra("route");
        String dataString = intent.getDataString();
        if (dataString == null) {
            dataString = FlutterMain.findAppBundlePath();
        }
        if (stringExtra != null) {
            this.flutterView.setInitialRoute(stringExtra);
        }
        runBundle(dataString);
        return true;
    }

    private void runBundle(String str) {
        if (this.flutterView.getFlutterNativeView().isApplicationRunning()) {
            return;
        }
        FlutterRunArguments flutterRunArguments = new FlutterRunArguments();
        flutterRunArguments.bundlePath = str;
        flutterRunArguments.entrypoint = SentryThread.JsonKeys.MAIN;
        this.flutterView.runFromBundle(flutterRunArguments);
    }

    private View createLaunchView() {
        Drawable launchScreenDrawableFromActivityTheme;
        if (!showSplashScreenUntilFirstFrame().booleanValue() || (launchScreenDrawableFromActivityTheme = getLaunchScreenDrawableFromActivityTheme()) == null) {
            return null;
        }
        View view = new View(this.activity);
        view.setLayoutParams(matchParent);
        view.setBackground(launchScreenDrawableFromActivityTheme);
        return view;
    }

    private Drawable getLaunchScreenDrawableFromActivityTheme() {
        TypedValue typedValue = new TypedValue();
        if (!this.activity.getTheme().resolveAttribute(R.attr.windowBackground, typedValue, true) || typedValue.resourceId == 0) {
            return null;
        }
        try {
            return this.activity.getResources().getDrawable(typedValue.resourceId);
        } catch (Resources.NotFoundException unused) {
            Log.e(TAG, "Referenced launch screen windowBackground resource does not exist");
            return null;
        }
    }

    private Boolean showSplashScreenUntilFirstFrame() {
        try {
            Bundle bundle = this.activity.getPackageManager().getActivityInfo(this.activity.getComponentName(), 128).metaData;
            return Boolean.valueOf(bundle != null && bundle.getBoolean(SPLASH_SCREEN_META_DATA_KEY));
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private void addLaunchView() {
        View view = this.launchView;
        if (view == null) {
            return;
        }
        this.activity.addContentView(view, matchParent);
        this.flutterView.addFirstFrameListener(new FlutterView.FirstFrameListener() { // from class: io.flutter.app.FlutterActivityDelegate.1
            @Override // io.flutter.view.FlutterView.FirstFrameListener
            public void onFirstFrame() {
                FlutterActivityDelegate.this.launchView.animate().alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: io.flutter.app.FlutterActivityDelegate.1.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ((ViewGroup) FlutterActivityDelegate.this.launchView.getParent()).removeView(FlutterActivityDelegate.this.launchView);
                        FlutterActivityDelegate.this.launchView = null;
                    }
                });
                FlutterActivityDelegate.this.flutterView.removeFirstFrameListener(this);
            }
        });
        this.activity.setTheme(R.style.Theme.Black.NoTitleBar);
    }
}
