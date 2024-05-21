package io.flutter.plugin.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import io.flutter.plugin.platform.PlatformViewRegistry;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.FlutterView;
import io.flutter.view.TextureRegistry;

/* loaded from: classes3.dex */
public interface PluginRegistry {

    /* loaded from: classes3.dex */
    public interface ActivityResultListener {
        boolean onActivityResult(int i, int i2, Intent intent);
    }

    /* loaded from: classes3.dex */
    public interface NewIntentListener {
        boolean onNewIntent(Intent intent);
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface PluginRegistrantCallback {
        void registerWith(PluginRegistry pluginRegistry);
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface Registrar {
        Context activeContext();

        Activity activity();

        Registrar addActivityResultListener(ActivityResultListener activityResultListener);

        Registrar addNewIntentListener(NewIntentListener newIntentListener);

        Registrar addRequestPermissionsResultListener(RequestPermissionsResultListener requestPermissionsResultListener);

        Registrar addUserLeaveHintListener(UserLeaveHintListener userLeaveHintListener);

        Registrar addViewDestroyListener(ViewDestroyListener viewDestroyListener);

        Registrar addWindowFocusChangedListener(WindowFocusChangedListener windowFocusChangedListener);

        Context context();

        String lookupKeyForAsset(String str);

        String lookupKeyForAsset(String str, String str2);

        BinaryMessenger messenger();

        PlatformViewRegistry platformViewRegistry();

        Registrar publish(Object obj);

        TextureRegistry textures();

        FlutterView view();
    }

    /* loaded from: classes3.dex */
    public interface RequestPermissionsResultListener {
        boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* loaded from: classes3.dex */
    public interface UserLeaveHintListener {
        void onUserLeaveHint();
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface ViewDestroyListener {
        boolean onViewDestroy(FlutterNativeView flutterNativeView);
    }

    /* loaded from: classes3.dex */
    public interface WindowFocusChangedListener {
        void onWindowFocusChanged(boolean z);
    }

    @Deprecated
    boolean hasPlugin(String str);

    @Deprecated
    Registrar registrarFor(String str);

    @Deprecated
    <T> T valuePublishedByPlugin(String str);
}
