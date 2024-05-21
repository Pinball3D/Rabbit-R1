package io.flutter.plugin.text;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.embedding.engine.systemchannels.ProcessTextChannel;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ProcessTextPlugin implements FlutterPlugin, ActivityAware, PluginRegistry.ActivityResultListener, ProcessTextChannel.ProcessTextMethodHandler {
    private static final String TAG = "ProcessTextPlugin";
    private ActivityPluginBinding activityBinding;
    private final PackageManager packageManager;
    private final ProcessTextChannel processTextChannel;
    private Map<Integer, MethodChannel.Result> requestsByCode = new HashMap();
    private Map<String, ResolveInfo> resolveInfosById;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    public ProcessTextPlugin(ProcessTextChannel processTextChannel) {
        this.processTextChannel = processTextChannel;
        this.packageManager = processTextChannel.packageManager;
        processTextChannel.setMethodHandler(this);
    }

    @Override // io.flutter.embedding.engine.systemchannels.ProcessTextChannel.ProcessTextMethodHandler
    public Map<String, String> queryTextActions() {
        if (this.resolveInfosById == null) {
            cacheResolveInfos();
        }
        HashMap hashMap = new HashMap();
        for (String str : this.resolveInfosById.keySet()) {
            hashMap.put(str, this.resolveInfosById.get(str).loadLabel(this.packageManager).toString());
        }
        return hashMap;
    }

    @Override // io.flutter.embedding.engine.systemchannels.ProcessTextChannel.ProcessTextMethodHandler
    public void processTextAction(String str, String str2, boolean z, MethodChannel.Result result) {
        if (this.activityBinding == null) {
            result.error("error", "Plugin not bound to an Activity", null);
            return;
        }
        Map<String, ResolveInfo> map = this.resolveInfosById;
        if (map == null) {
            result.error("error", "Can not process text actions before calling queryTextActions", null);
            return;
        }
        ResolveInfo resolveInfo = map.get(str);
        if (resolveInfo == null) {
            result.error("error", "Text processing activity not found", null);
            return;
        }
        Integer valueOf = Integer.valueOf(result.hashCode());
        this.requestsByCode.put(valueOf, result);
        Intent intent = new Intent();
        intent.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        intent.setAction("android.intent.action.PROCESS_TEXT");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.PROCESS_TEXT", str2);
        intent.putExtra("android.intent.extra.PROCESS_TEXT_READONLY", z);
        this.activityBinding.getActivity().startActivityForResult(intent, valueOf.intValue());
    }

    private void cacheResolveInfos() {
        List<ResolveInfo> queryIntentActivities;
        this.resolveInfosById = new HashMap();
        Intent type = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        if (Build.VERSION.SDK_INT >= 33) {
            queryIntentActivities = this.packageManager.queryIntentActivities(type, PackageManager.ResolveInfoFlags.of(0L));
        } else {
            queryIntentActivities = this.packageManager.queryIntentActivities(type, 0);
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            String str = resolveInfo.activityInfo.name;
            resolveInfo.loadLabel(this.packageManager).toString();
            this.resolveInfosById.put(str, resolveInfo);
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (!this.requestsByCode.containsKey(Integer.valueOf(i))) {
            return false;
        }
        this.requestsByCode.remove(Integer.valueOf(i)).success(i2 == -1 ? intent.getStringExtra("android.intent.extra.PROCESS_TEXT") : null);
        return true;
    }

    public void destroy() {
        this.processTextChannel.setMethodHandler(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activityBinding = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.activityBinding.removeActivityResultListener(this);
        this.activityBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        this.activityBinding = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activityBinding.removeActivityResultListener(this);
        this.activityBinding = null;
    }
}
