package io.flutter.embedding.engine.plugins;

import android.content.Context;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineGroup;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.platform.PlatformViewRegistry;
import io.flutter.view.TextureRegistry;

/* loaded from: classes3.dex */
public interface FlutterPlugin {

    /* loaded from: classes3.dex */
    public interface FlutterAssets {
        String getAssetFilePathByName(String str);

        String getAssetFilePathByName(String str, String str2);

        String getAssetFilePathBySubpath(String str);

        String getAssetFilePathBySubpath(String str, String str2);
    }

    void onAttachedToEngine(FlutterPluginBinding flutterPluginBinding);

    void onDetachedFromEngine(FlutterPluginBinding flutterPluginBinding);

    /* loaded from: classes3.dex */
    public static class FlutterPluginBinding {
        private final Context applicationContext;
        private final BinaryMessenger binaryMessenger;
        private final FlutterAssets flutterAssets;
        private final FlutterEngine flutterEngine;
        private final FlutterEngineGroup group;
        private final PlatformViewRegistry platformViewRegistry;
        private final TextureRegistry textureRegistry;

        public Context getApplicationContext() {
            return this.applicationContext;
        }

        public BinaryMessenger getBinaryMessenger() {
            return this.binaryMessenger;
        }

        public FlutterEngineGroup getEngineGroup() {
            return this.group;
        }

        public FlutterAssets getFlutterAssets() {
            return this.flutterAssets;
        }

        @Deprecated
        public FlutterEngine getFlutterEngine() {
            return this.flutterEngine;
        }

        public PlatformViewRegistry getPlatformViewRegistry() {
            return this.platformViewRegistry;
        }

        public TextureRegistry getTextureRegistry() {
            return this.textureRegistry;
        }

        public FlutterPluginBinding(Context context, FlutterEngine flutterEngine, BinaryMessenger binaryMessenger, TextureRegistry textureRegistry, PlatformViewRegistry platformViewRegistry, FlutterAssets flutterAssets, FlutterEngineGroup flutterEngineGroup) {
            this.applicationContext = context;
            this.flutterEngine = flutterEngine;
            this.binaryMessenger = binaryMessenger;
            this.textureRegistry = textureRegistry;
            this.platformViewRegistry = platformViewRegistry;
            this.flutterAssets = flutterAssets;
            this.group = flutterEngineGroup;
        }
    }
}
