package io.flutter.embedding.engine.plugins.shim;

import android.app.Activity;
import android.content.Context;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.platform.PlatformViewRegistry;
import io.flutter.view.FlutterView;
import io.flutter.view.TextureRegistry;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
class ShimRegistrar implements PluginRegistry.Registrar, FlutterPlugin, ActivityAware {
    private static final String TAG = "ShimRegistrar";
    private ActivityPluginBinding activityPluginBinding;
    private final Map<String, Object> globalRegistrarMap;
    private FlutterPlugin.FlutterPluginBinding pluginBinding;
    private final String pluginId;
    private final Set<PluginRegistry.ViewDestroyListener> viewDestroyListeners = new HashSet();
    private final Set<PluginRegistry.RequestPermissionsResultListener> requestPermissionsResultListeners = new HashSet();
    private final Set<PluginRegistry.ActivityResultListener> activityResultListeners = new HashSet();
    private final Set<PluginRegistry.NewIntentListener> newIntentListeners = new HashSet();
    private final Set<PluginRegistry.UserLeaveHintListener> userLeaveHintListeners = new HashSet();
    private final Set<PluginRegistry.WindowFocusChangedListener> WindowFocusChangedListeners = new HashSet();

    public ShimRegistrar(String str, Map<String, Object> map) {
        this.pluginId = str;
        this.globalRegistrarMap = map;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public Activity activity() {
        ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
        if (activityPluginBinding != null) {
            return activityPluginBinding.getActivity();
        }
        return null;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public Context context() {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getApplicationContext();
        }
        return null;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public Context activeContext() {
        return this.activityPluginBinding == null ? context() : activity();
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public BinaryMessenger messenger() {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getBinaryMessenger();
        }
        return null;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public TextureRegistry textures() {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getTextureRegistry();
        }
        return null;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PlatformViewRegistry platformViewRegistry() {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.pluginBinding;
        if (flutterPluginBinding != null) {
            return flutterPluginBinding.getPlatformViewRegistry();
        }
        return null;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public FlutterView view() {
        throw new UnsupportedOperationException("The new embedding does not support the old FlutterView.");
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public String lookupKeyForAsset(String str) {
        return FlutterInjector.instance().flutterLoader().getLookupKeyForAsset(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public String lookupKeyForAsset(String str, String str2) {
        return FlutterInjector.instance().flutterLoader().getLookupKeyForAsset(str, str2);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PluginRegistry.Registrar publish(Object obj) {
        this.globalRegistrarMap.put(this.pluginId, obj);
        return this;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PluginRegistry.Registrar addRequestPermissionsResultListener(PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener) {
        this.requestPermissionsResultListeners.add(requestPermissionsResultListener);
        ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
        if (activityPluginBinding != null) {
            activityPluginBinding.addRequestPermissionsResultListener(requestPermissionsResultListener);
        }
        return this;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PluginRegistry.Registrar addActivityResultListener(PluginRegistry.ActivityResultListener activityResultListener) {
        this.activityResultListeners.add(activityResultListener);
        ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
        if (activityPluginBinding != null) {
            activityPluginBinding.addActivityResultListener(activityResultListener);
        }
        return this;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PluginRegistry.Registrar addNewIntentListener(PluginRegistry.NewIntentListener newIntentListener) {
        this.newIntentListeners.add(newIntentListener);
        ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
        if (activityPluginBinding != null) {
            activityPluginBinding.addOnNewIntentListener(newIntentListener);
        }
        return this;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PluginRegistry.Registrar addUserLeaveHintListener(PluginRegistry.UserLeaveHintListener userLeaveHintListener) {
        this.userLeaveHintListeners.add(userLeaveHintListener);
        ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
        if (activityPluginBinding != null) {
            activityPluginBinding.addOnUserLeaveHintListener(userLeaveHintListener);
        }
        return this;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PluginRegistry.Registrar addWindowFocusChangedListener(PluginRegistry.WindowFocusChangedListener windowFocusChangedListener) {
        this.WindowFocusChangedListeners.add(windowFocusChangedListener);
        ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
        if (activityPluginBinding != null) {
            activityPluginBinding.addOnWindowFocusChangedListener(windowFocusChangedListener);
        }
        return this;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.Registrar
    public PluginRegistry.Registrar addViewDestroyListener(PluginRegistry.ViewDestroyListener viewDestroyListener) {
        this.viewDestroyListeners.add(viewDestroyListener);
        return this;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Log.v(TAG, "Attached to FlutterEngine.");
        this.pluginBinding = flutterPluginBinding;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Log.v(TAG, "Detached from FlutterEngine.");
        Iterator<PluginRegistry.ViewDestroyListener> it = this.viewDestroyListeners.iterator();
        while (it.hasNext()) {
            it.next().onViewDestroy(null);
        }
        this.pluginBinding = null;
        this.activityPluginBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Log.v(TAG, "Attached to an Activity.");
        this.activityPluginBinding = activityPluginBinding;
        addExistingListenersToActivityPluginBinding();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        Log.v(TAG, "Detached from an Activity for config changes.");
        this.activityPluginBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        Log.v(TAG, "Reconnected to an Activity after config changes.");
        this.activityPluginBinding = activityPluginBinding;
        addExistingListenersToActivityPluginBinding();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Log.v(TAG, "Detached from an Activity.");
        this.activityPluginBinding = null;
    }

    private void addExistingListenersToActivityPluginBinding() {
        Iterator<PluginRegistry.RequestPermissionsResultListener> it = this.requestPermissionsResultListeners.iterator();
        while (it.hasNext()) {
            this.activityPluginBinding.addRequestPermissionsResultListener(it.next());
        }
        Iterator<PluginRegistry.ActivityResultListener> it2 = this.activityResultListeners.iterator();
        while (it2.hasNext()) {
            this.activityPluginBinding.addActivityResultListener(it2.next());
        }
        Iterator<PluginRegistry.NewIntentListener> it3 = this.newIntentListeners.iterator();
        while (it3.hasNext()) {
            this.activityPluginBinding.addOnNewIntentListener(it3.next());
        }
        Iterator<PluginRegistry.UserLeaveHintListener> it4 = this.userLeaveHintListeners.iterator();
        while (it4.hasNext()) {
            this.activityPluginBinding.addOnUserLeaveHintListener(it4.next());
        }
        Iterator<PluginRegistry.WindowFocusChangedListener> it5 = this.WindowFocusChangedListeners.iterator();
        while (it5.hasNext()) {
            this.activityPluginBinding.addOnWindowFocusChangedListener(it5.next());
        }
    }
}
