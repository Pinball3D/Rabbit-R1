package io.flutter.embedding.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import io.flutter.Log;
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
public class FlutterFragmentActivity extends FragmentActivity implements FlutterEngineProvider, FlutterEngineConfigurator {
    public static final int FRAGMENT_CONTAINER_ID = ViewUtils.generateViewId(609893468);
    private static final String TAG = "FlutterFragmentActivity";
    private static final String TAG_FLUTTER_FRAGMENT = "flutter_fragment";
    private FlutterFragment flutterFragment;

    @Override // io.flutter.embedding.android.FlutterEngineConfigurator
    public void cleanUpFlutterEngine(FlutterEngine flutterEngine) {
    }

    @Override // io.flutter.embedding.android.FlutterEngineProvider
    public FlutterEngine provideFlutterEngine(Context context) {
        return null;
    }

    protected boolean shouldAttachEngineToActivity() {
        return true;
    }

    public static Intent createDefaultIntent(Context context) {
        return withNewEngine().build(context);
    }

    public static NewEngineIntentBuilder withNewEngine() {
        return new NewEngineIntentBuilder(FlutterFragmentActivity.class);
    }

    /* loaded from: classes3.dex */
    public static class NewEngineIntentBuilder {
        private final Class<? extends FlutterFragmentActivity> activityClass;
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

        public NewEngineIntentBuilder(Class<? extends FlutterFragmentActivity> cls) {
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
        return new CachedEngineIntentBuilder(FlutterFragmentActivity.class, str);
    }

    /* loaded from: classes3.dex */
    public static class CachedEngineIntentBuilder {
        private final Class<? extends FlutterFragmentActivity> activityClass;
        private final String cachedEngineId;
        private boolean destroyEngineWithActivity = false;
        private String backgroundMode = FlutterActivityLaunchConfigs.DEFAULT_BACKGROUND_MODE;

        public CachedEngineIntentBuilder destroyEngineWithActivity(boolean z) {
            this.destroyEngineWithActivity = z;
            return this;
        }

        public CachedEngineIntentBuilder(Class<? extends FlutterFragmentActivity> cls, String str) {
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
        return new NewEngineInGroupIntentBuilder(FlutterFragmentActivity.class, str);
    }

    /* loaded from: classes3.dex */
    public static class NewEngineInGroupIntentBuilder {
        private final Class<? extends FlutterFragmentActivity> activityClass;
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

        public NewEngineInGroupIntentBuilder(Class<? extends FlutterFragmentActivity> cls, String str) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        switchLaunchThemeForNormalTheme();
        this.flutterFragment = retrieveExistingFlutterFragmentIfPossible();
        super.onCreate(bundle);
        configureWindowForTransparency();
        setContentView(createFragmentContainer());
        configureStatusBarForFullscreenFlutterExperience();
        ensureFlutterFragmentCreated();
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
            Log.e(TAG, "Could not read meta-data for FlutterFragmentActivity. Using the launch theme as normal theme.");
        }
    }

    private void configureWindowForTransparency() {
        if (getBackgroundMode() == FlutterActivityLaunchConfigs.BackgroundMode.transparent) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    private View createFragmentContainer() {
        FrameLayout provideRootLayout = provideRootLayout(this);
        provideRootLayout.setId(FRAGMENT_CONTAINER_ID);
        provideRootLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return provideRootLayout;
    }

    FlutterFragment retrieveExistingFlutterFragmentIfPossible() {
        return (FlutterFragment) getSupportFragmentManager().findFragmentByTag(TAG_FLUTTER_FRAGMENT);
    }

    private void ensureFlutterFragmentCreated() {
        if (this.flutterFragment == null) {
            this.flutterFragment = retrieveExistingFlutterFragmentIfPossible();
        }
        if (this.flutterFragment == null) {
            this.flutterFragment = createFlutterFragment();
            getSupportFragmentManager().beginTransaction().add(FRAGMENT_CONTAINER_ID, this.flutterFragment, TAG_FLUTTER_FRAGMENT).commit();
        }
    }

    protected FlutterFragment createFlutterFragment() {
        TransparencyMode transparencyMode;
        FlutterActivityLaunchConfigs.BackgroundMode backgroundMode = getBackgroundMode();
        RenderMode renderMode = getRenderMode();
        if (backgroundMode == FlutterActivityLaunchConfigs.BackgroundMode.opaque) {
            transparencyMode = TransparencyMode.opaque;
        } else {
            transparencyMode = TransparencyMode.transparent;
        }
        boolean z = renderMode == RenderMode.surface;
        if (getCachedEngineId() != null) {
            Log.v(TAG, "Creating FlutterFragment with cached engine:\nCached engine ID: " + getCachedEngineId() + "\nWill destroy engine when Activity is destroyed: " + shouldDestroyEngineWithHost() + "\nBackground transparency mode: " + backgroundMode + "\nWill attach FlutterEngine to Activity: " + shouldAttachEngineToActivity());
            return FlutterFragment.withCachedEngine(getCachedEngineId()).renderMode(renderMode).transparencyMode(transparencyMode).handleDeeplinking(Boolean.valueOf(shouldHandleDeeplinking())).shouldAttachEngineToActivity(shouldAttachEngineToActivity()).destroyEngineWithFragment(shouldDestroyEngineWithHost()).shouldDelayFirstAndroidViewDraw(z).build();
        }
        Log.v(TAG, "Creating FlutterFragment with new engine:\nCached engine group ID: " + getCachedEngineGroupId() + "\nBackground transparency mode: " + backgroundMode + "\nDart entrypoint: " + getDartEntrypointFunctionName() + "\nDart entrypoint library uri: " + (getDartEntrypointLibraryUri() != null ? getDartEntrypointLibraryUri() : "\"\"") + "\nInitial route: " + getInitialRoute() + "\nApp bundle path: " + getAppBundlePath() + "\nWill attach FlutterEngine to Activity: " + shouldAttachEngineToActivity());
        if (getCachedEngineGroupId() != null) {
            return FlutterFragment.withNewEngineInGroup(getCachedEngineGroupId()).dartEntrypoint(getDartEntrypointFunctionName()).initialRoute(getInitialRoute()).handleDeeplinking(shouldHandleDeeplinking()).renderMode(renderMode).transparencyMode(transparencyMode).shouldAttachEngineToActivity(shouldAttachEngineToActivity()).shouldDelayFirstAndroidViewDraw(z).build();
        }
        return FlutterFragment.withNewEngine().dartEntrypoint(getDartEntrypointFunctionName()).dartLibraryUri(getDartEntrypointLibraryUri()).dartEntrypointArgs(getDartEntrypointArgs()).initialRoute(getInitialRoute()).appBundlePath(getAppBundlePath()).flutterShellArgs(FlutterShellArgs.fromIntent(getIntent())).handleDeeplinking(Boolean.valueOf(shouldHandleDeeplinking())).renderMode(renderMode).transparencyMode(transparencyMode).shouldAttachEngineToActivity(shouldAttachEngineToActivity()).shouldDelayFirstAndroidViewDraw(z).build();
    }

    private void configureStatusBarForFullscreenFlutterExperience() {
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(1073741824);
        window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.flutterFragment.onPostResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        this.flutterFragment.onNewIntent(intent);
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.flutterFragment.onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.flutterFragment.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        this.flutterFragment.onUserLeaveHint();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        this.flutterFragment.onTrimMemory(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.flutterFragment.onActivityResult(i, i2, intent);
    }

    protected FlutterEngine getFlutterEngine() {
        return this.flutterFragment.getFlutterEngine();
    }

    public boolean shouldDestroyEngineWithHost() {
        return getIntent().getBooleanExtra("destroy_engine_with_activity", false);
    }

    protected boolean shouldHandleDeeplinking() {
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

    @Override // io.flutter.embedding.android.FlutterEngineConfigurator
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        FlutterFragment flutterFragment = this.flutterFragment;
        if (flutterFragment == null || !flutterFragment.isFlutterEngineInjected()) {
            GeneratedPluginRegister.registerGeneratedPlugins(flutterEngine);
        }
    }

    protected String getAppBundlePath() {
        String dataString;
        if (isDebuggable() && "android.intent.action.RUN".equals(getIntent().getAction()) && (dataString = getIntent().getDataString()) != null) {
            return dataString;
        }
        return null;
    }

    protected Bundle getMetaData() throws PackageManager.NameNotFoundException {
        return getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
    }

    public String getDartEntrypointFunctionName() {
        try {
            Bundle metaData = getMetaData();
            String string = metaData != null ? metaData.getString("io.flutter.Entrypoint") : null;
            return string != null ? string : SentryThread.JsonKeys.MAIN;
        } catch (PackageManager.NameNotFoundException unused) {
            return SentryThread.JsonKeys.MAIN;
        }
    }

    public List<String> getDartEntrypointArgs() {
        return (List) getIntent().getSerializableExtra("dart_entrypoint_args");
    }

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

    protected String getInitialRoute() {
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

    protected String getCachedEngineId() {
        return getIntent().getStringExtra("cached_engine_id");
    }

    protected String getCachedEngineGroupId() {
        return getIntent().getStringExtra("cached_engine_group_id");
    }

    protected FlutterActivityLaunchConfigs.BackgroundMode getBackgroundMode() {
        if (getIntent().hasExtra("background_mode")) {
            return FlutterActivityLaunchConfigs.BackgroundMode.valueOf(getIntent().getStringExtra("background_mode"));
        }
        return FlutterActivityLaunchConfigs.BackgroundMode.opaque;
    }

    protected RenderMode getRenderMode() {
        return getBackgroundMode() == FlutterActivityLaunchConfigs.BackgroundMode.opaque ? RenderMode.surface : RenderMode.texture;
    }

    private boolean isDebuggable() {
        return (getApplicationInfo().flags & 2) != 0;
    }

    protected FrameLayout provideRootLayout(Context context) {
        return new FrameLayout(context);
    }
}
