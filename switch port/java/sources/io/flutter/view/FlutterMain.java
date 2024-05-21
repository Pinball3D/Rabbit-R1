package io.flutter.view;

import android.content.Context;
import android.os.Handler;
import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.loader.FlutterLoader;

@Deprecated
/* loaded from: classes3.dex */
public class FlutterMain {

    /* loaded from: classes3.dex */
    public static class Settings {
        private String logTag;

        public String getLogTag() {
            return this.logTag;
        }

        public void setLogTag(String str) {
            this.logTag = str;
        }
    }

    public static void startInitialization(Context context) {
        FlutterInjector.instance().flutterLoader().startInitialization(context);
    }

    public static void startInitialization(Context context, Settings settings) {
        FlutterLoader.Settings settings2 = new FlutterLoader.Settings();
        settings2.setLogTag(settings.getLogTag());
        FlutterInjector.instance().flutterLoader().startInitialization(context, settings2);
    }

    public static void ensureInitializationComplete(Context context, String[] strArr) {
        FlutterInjector.instance().flutterLoader().ensureInitializationComplete(context, strArr);
    }

    public static void ensureInitializationCompleteAsync(Context context, String[] strArr, Handler handler, Runnable runnable) {
        FlutterInjector.instance().flutterLoader().ensureInitializationCompleteAsync(context, strArr, handler, runnable);
    }

    public static String findAppBundlePath() {
        return FlutterInjector.instance().flutterLoader().findAppBundlePath();
    }

    @Deprecated
    public static String findAppBundlePath(Context context) {
        return FlutterInjector.instance().flutterLoader().findAppBundlePath();
    }

    public static String getLookupKeyForAsset(String str) {
        return FlutterInjector.instance().flutterLoader().getLookupKeyForAsset(str);
    }

    public static String getLookupKeyForAsset(String str, String str2) {
        return FlutterInjector.instance().flutterLoader().getLookupKeyForAsset(str, str2);
    }
}
