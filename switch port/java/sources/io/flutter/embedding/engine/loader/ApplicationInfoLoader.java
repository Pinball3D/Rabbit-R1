package io.flutter.embedding.engine.loader;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import java.io.IOException;
import org.json.JSONArray;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class ApplicationInfoLoader {
    public static final String NETWORK_POLICY_METADATA_KEY = "io.flutter.network-policy";
    public static final String PUBLIC_AUTOMATICALLY_REGISTER_PLUGINS_METADATA_KEY = "io.flutter.automatically-register-plugins";
    public static final String PUBLIC_AOT_SHARED_LIBRARY_NAME = FlutterLoader.class.getName() + ".aot-shared-library-name";
    public static final String PUBLIC_VM_SNAPSHOT_DATA_KEY = FlutterLoader.class.getName() + ".vm-snapshot-data";
    public static final String PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY = FlutterLoader.class.getName() + ".isolate-snapshot-data";
    public static final String PUBLIC_FLUTTER_ASSETS_DIR_KEY = FlutterLoader.class.getName() + ".flutter-assets-dir";

    private static ApplicationInfo getApplicationInfo(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private static String getString(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        return bundle.getString(str, null);
    }

    private static boolean getBoolean(Bundle bundle, String str, boolean z) {
        return bundle == null ? z : bundle.getBoolean(str, z);
    }

    private static String getNetworkPolicy(ApplicationInfo applicationInfo, Context context) {
        int i;
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null || (i = bundle.getInt(NETWORK_POLICY_METADATA_KEY, 0)) <= 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            xml.next();
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    if (xml.getName().equals("domain-config")) {
                        parseDomainConfig(xml, jSONArray, false);
                    }
                }
            }
            return jSONArray.toString();
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    private static void parseDomainConfig(XmlResourceParser xmlResourceParser, JSONArray jSONArray, boolean z) throws IOException, XmlPullParserException {
        boolean attributeBooleanValue = xmlResourceParser.getAttributeBooleanValue(null, "cleartextTrafficPermitted", z);
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 2) {
                if (xmlResourceParser.getName().equals("domain")) {
                    parseDomain(xmlResourceParser, jSONArray, attributeBooleanValue);
                } else if (xmlResourceParser.getName().equals("domain-config")) {
                    parseDomainConfig(xmlResourceParser, jSONArray, attributeBooleanValue);
                } else {
                    skipTag(xmlResourceParser);
                }
            } else if (next == 3) {
                return;
            }
        }
    }

    private static void skipTag(XmlResourceParser xmlResourceParser) throws IOException, XmlPullParserException {
        String name = xmlResourceParser.getName();
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            if (eventType == 3 && xmlResourceParser.getName() == name) {
                return;
            } else {
                eventType = xmlResourceParser.next();
            }
        }
    }

    private static void parseDomain(XmlResourceParser xmlResourceParser, JSONArray jSONArray, boolean z) throws IOException, XmlPullParserException {
        boolean attributeBooleanValue = xmlResourceParser.getAttributeBooleanValue(null, "includeSubdomains", false);
        xmlResourceParser.next();
        if (xmlResourceParser.getEventType() != 4) {
            throw new IllegalStateException("Expected text");
        }
        String trim = xmlResourceParser.getText().trim();
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(trim);
        jSONArray2.put(attributeBooleanValue);
        jSONArray2.put(z);
        jSONArray.put(jSONArray2);
        xmlResourceParser.next();
        if (xmlResourceParser.getEventType() != 3) {
            throw new IllegalStateException("Expected end of domain tag");
        }
    }

    public static FlutterApplicationInfo load(Context context) {
        ApplicationInfo applicationInfo = getApplicationInfo(context);
        return new FlutterApplicationInfo(getString(applicationInfo.metaData, PUBLIC_AOT_SHARED_LIBRARY_NAME), getString(applicationInfo.metaData, PUBLIC_VM_SNAPSHOT_DATA_KEY), getString(applicationInfo.metaData, PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY), getString(applicationInfo.metaData, PUBLIC_FLUTTER_ASSETS_DIR_KEY), getNetworkPolicy(applicationInfo, context), applicationInfo.nativeLibraryDir, getBoolean(applicationInfo.metaData, PUBLIC_AUTOMATICALLY_REGISTER_PLUGINS_METADATA_KEY, true));
    }
}
