package io.flutter.embedding.engine.plugins.shim;

import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class ShimPluginRegistry implements PluginRegistry {
    private static final String TAG = "ShimPluginRegistry";
    private final FlutterEngine flutterEngine;
    private final Map<String, Object> pluginMap = new HashMap();
    private final ShimRegistrarAggregate shimRegistrarAggregate;

    public ShimPluginRegistry(FlutterEngine flutterEngine) {
        this.flutterEngine = flutterEngine;
        ShimRegistrarAggregate shimRegistrarAggregate = new ShimRegistrarAggregate();
        this.shimRegistrarAggregate = shimRegistrarAggregate;
        flutterEngine.getPlugins().add(shimRegistrarAggregate);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public PluginRegistry.Registrar registrarFor(String str) {
        Log.v(TAG, "Creating plugin Registrar for '" + str + "'");
        if (this.pluginMap.containsKey(str)) {
            throw new IllegalStateException("Plugin key " + str + " is already in use");
        }
        this.pluginMap.put(str, null);
        ShimRegistrar shimRegistrar = new ShimRegistrar(str, this.pluginMap);
        this.shimRegistrarAggregate.addPlugin(shimRegistrar);
        return shimRegistrar;
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public boolean hasPlugin(String str) {
        return this.pluginMap.containsKey(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry
    public <T> T valuePublishedByPlugin(String str) {
        return (T) this.pluginMap.get(str);
    }

    /* loaded from: classes3.dex */
    private static class ShimRegistrarAggregate implements FlutterPlugin, ActivityAware {
        private ActivityPluginBinding activityPluginBinding;
        private FlutterPlugin.FlutterPluginBinding flutterPluginBinding;
        private final Set<ShimRegistrar> shimRegistrars;

        private ShimRegistrarAggregate() {
            this.shimRegistrars = new HashSet();
        }

        public void addPlugin(ShimRegistrar shimRegistrar) {
            this.shimRegistrars.add(shimRegistrar);
            FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.flutterPluginBinding;
            if (flutterPluginBinding != null) {
                shimRegistrar.onAttachedToEngine(flutterPluginBinding);
            }
            ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
            if (activityPluginBinding != null) {
                shimRegistrar.onAttachedToActivity(activityPluginBinding);
            }
        }

        @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
        public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
            this.flutterPluginBinding = flutterPluginBinding;
            Iterator<ShimRegistrar> it = this.shimRegistrars.iterator();
            while (it.hasNext()) {
                it.next().onAttachedToEngine(flutterPluginBinding);
            }
        }

        @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
        public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
            Iterator<ShimRegistrar> it = this.shimRegistrars.iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromEngine(flutterPluginBinding);
            }
            this.flutterPluginBinding = null;
            this.activityPluginBinding = null;
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
        public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
            this.activityPluginBinding = activityPluginBinding;
            Iterator<ShimRegistrar> it = this.shimRegistrars.iterator();
            while (it.hasNext()) {
                it.next().onAttachedToActivity(activityPluginBinding);
            }
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
        public void onDetachedFromActivityForConfigChanges() {
            Iterator<ShimRegistrar> it = this.shimRegistrars.iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromActivity();
            }
            this.activityPluginBinding = null;
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
        public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
            this.activityPluginBinding = activityPluginBinding;
            Iterator<ShimRegistrar> it = this.shimRegistrars.iterator();
            while (it.hasNext()) {
                it.next().onReattachedToActivityForConfigChanges(activityPluginBinding);
            }
        }

        @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
        public void onDetachedFromActivity() {
            Iterator<ShimRegistrar> it = this.shimRegistrars.iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromActivity();
            }
            this.activityPluginBinding = null;
        }
    }
}
