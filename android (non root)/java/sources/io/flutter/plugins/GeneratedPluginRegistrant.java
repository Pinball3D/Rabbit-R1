package io.flutter.plugins;

import dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.videoplayer.VideoPlayerPlugin;
import io.sentry.flutter.SentryFlutterPlugin;

/* loaded from: classes3.dex */
public final class GeneratedPluginRegistrant {
    private static final String TAG = "GeneratedPluginRegistrant";

    public static void registerWith(FlutterEngine flutterEngine) {
        try {
            flutterEngine.getPlugins().add(new PackageInfoPlugin());
        } catch (Exception e) {
            Log.e(TAG, "Error registering plugin package_info_plus, dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin", e);
        }
        try {
            flutterEngine.getPlugins().add(new SentryFlutterPlugin());
        } catch (Exception e2) {
            Log.e(TAG, "Error registering plugin sentry_flutter, io.sentry.flutter.SentryFlutterPlugin", e2);
        }
        try {
            flutterEngine.getPlugins().add(new VideoPlayerPlugin());
        } catch (Exception e3) {
            Log.e(TAG, "Error registering plugin video_player_android, io.flutter.plugins.videoplayer.VideoPlayerPlugin", e3);
        }
    }
}
