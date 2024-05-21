package io.flutter.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import io.flutter.app.FlutterActivityDelegate;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterView;

@Deprecated
/* loaded from: classes3.dex */
public class FlutterFragmentActivity extends FragmentActivity implements FlutterView.Provider, PluginRegistry, FlutterActivityDelegate.ViewFactory {
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

    public FlutterFragmentActivity() {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.eventDelegate.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.eventDelegate.onDestroy();
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.eventDelegate.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.eventDelegate.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        this.eventDelegate.onStop();
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.eventDelegate.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.eventDelegate.onPostResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.eventDelegate.onRequestPermissionsResult(i, strArr, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.eventDelegate.onActivityResult(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        this.eventDelegate.onTrimMemory(i);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.eventDelegate.onLowMemory();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.eventDelegate.onConfigurationChanged(configuration);
    }
}
