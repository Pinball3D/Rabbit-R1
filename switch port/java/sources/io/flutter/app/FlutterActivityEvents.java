package io.flutter.app;

import android.content.ComponentCallbacks2;
import android.content.Intent;
import android.os.Bundle;
import io.flutter.plugin.common.PluginRegistry;

/* loaded from: classes3.dex */
public interface FlutterActivityEvents extends ComponentCallbacks2, PluginRegistry.ActivityResultListener, PluginRegistry.RequestPermissionsResultListener {
    boolean onBackPressed();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onNewIntent(Intent intent);

    void onPause();

    void onPostResume();

    void onResume();

    void onStart();

    void onStop();

    void onUserLeaveHint();

    void onWindowFocusChanged(boolean z);
}
