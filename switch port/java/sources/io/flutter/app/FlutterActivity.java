package io.flutter.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import io.flutter.app.FlutterActivityDelegate;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterView;

@Deprecated
/* loaded from: classes3.dex */
public class FlutterActivity extends Activity implements FlutterView.Provider, PluginRegistry, FlutterActivityDelegate.ViewFactory {
    private static final String TAG = "FlutterActivity";
    private final FlutterActivityDelegate delegate;
    private final FlutterActivityEvents eventDelegate;
    private final PluginRegistry pluginRegistry;
    private final FlutterView.Provider viewProvider;

    @Override // io.flutter.app.FlutterActivityDelegate.ViewFactory
    public FlutterNativeView createFlutterNativeView() {
        return null;
    }

    @Override // io.flutter.app.FlutterActivityDelegate.ViewFactory
    public FlutterView createFlutterView(Context context) {
        return null;
    }

    @Override // io.flutter.app.FlutterActivityDelegate.ViewFactory
    public boolean retainFlutterNativeView() {
        return false;
    }

    public FlutterActivity() {
        FlutterActivityDelegate flutterActivityDelegate = new FlutterActivityDelegate(this, this);
        this.delegate = flutterActivityDelegate;
        this.eventDelegate = flutterActivityDelegate;
        this.viewProvider = flutterActivityDelegate;
        this.pluginRegistry = flutterActivityDelegate;
    }

    @Override // io.flutter.view.FlutterView.Provider
    public FlutterView getFlutterView() {
        return this.viewProvider.getFlutterView();
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public final boolean hasPlugin(String str) {
        return this.pluginRegistry.hasPlugin(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public final <T> T valuePublishedByPlugin(String str) {
        return (T) this.pluginRegistry.valuePublishedByPlugin(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public final PluginRegistry.Registrar registrarFor(String str) {
        return this.pluginRegistry.registrarFor(str);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.eventDelegate.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.eventDelegate.onStart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.eventDelegate.onResume();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.eventDelegate.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.eventDelegate.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.eventDelegate.onStop();
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.eventDelegate.onPause();
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.eventDelegate.onPostResume();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.eventDelegate.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.eventDelegate.onActivityResult(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        this.eventDelegate.onNewIntent(intent);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        this.eventDelegate.onUserLeaveHint();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.eventDelegate.onWindowFocusChanged(z);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        this.eventDelegate.onTrimMemory(i);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.eventDelegate.onLowMemory();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.eventDelegate.onConfigurationChanged(configuration);
    }
}
