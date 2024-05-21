package io.flutter.embedding.engine.systemchannels;

import androidx.core.view.ViewCompat;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class PlatformChannel {
    private static final String TAG = "PlatformChannel";
    public final MethodChannel channel;
    final MethodChannel.MethodCallHandler parsingMethodCallHandler;
    private PlatformMessageHandler platformMessageHandler;

    /* loaded from: classes3.dex */
    public interface PlatformMessageHandler {
        boolean clipboardHasStrings();

        CharSequence getClipboardData(ClipboardContentFormat clipboardContentFormat);

        void playSystemSound(SoundType soundType);

        void popSystemNavigator();

        void restoreSystemUiOverlays();

        void setApplicationSwitcherDescription(AppSwitcherDescription appSwitcherDescription);

        void setClipboardData(String str);

        default void setFrameworkHandlesBack(boolean z) {
        }

        void setPreferredOrientations(int i);

        void setSystemUiChangeListener();

        void setSystemUiOverlayStyle(SystemChromeStyle systemChromeStyle);

        void share(String str);

        void showSystemOverlays(List<SystemUiOverlay> list);

        void showSystemUiMode(SystemUiMode systemUiMode);

        void vibrateHapticFeedback(HapticFeedbackType hapticFeedbackType);
    }

    public void setPlatformMessageHandler(PlatformMessageHandler platformMessageHandler) {
        this.platformMessageHandler = platformMessageHandler;
    }

    public PlatformChannel(DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.PlatformChannel.1
            /* JADX WARN: Removed duplicated region for block: B:26:0x0145 A[Catch: JSONException -> 0x026a, TryCatch #5 {JSONException -> 0x026a, blocks: (B:7:0x002c, B:8:0x0030, B:13:0x00dd, B:15:0x00e2, B:17:0x00f2, B:19:0x010b, B:21:0x011f, B:31:0x0123, B:24:0x0139, B:26:0x0145, B:28:0x0152, B:33:0x0128, B:34:0x0157, B:36:0x0165, B:38:0x0199, B:40:0x01a7, B:85:0x0232, B:64:0x024e, B:82:0x0190, B:54:0x01cc, B:47:0x01ec, B:75:0x020c, B:61:0x022a, B:89:0x0246, B:68:0x0262, B:91:0x0035, B:94:0x0040, B:97:0x004b, B:100:0x0057, B:103:0x0063, B:106:0x006e, B:109:0x0079, B:112:0x0083, B:115:0x008d, B:118:0x0097, B:121:0x00a1, B:124:0x00ab, B:127:0x00b6, B:130:0x00c1, B:133:0x00cc, B:43:0x01d5, B:50:0x01b5, B:57:0x0214, B:71:0x01f5, B:78:0x0179), top: B:6:0x002c, inners: #0, #1, #2, #3, #4, #6, #7, #8 }] */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0152 A[Catch: JSONException -> 0x026a, TryCatch #5 {JSONException -> 0x026a, blocks: (B:7:0x002c, B:8:0x0030, B:13:0x00dd, B:15:0x00e2, B:17:0x00f2, B:19:0x010b, B:21:0x011f, B:31:0x0123, B:24:0x0139, B:26:0x0145, B:28:0x0152, B:33:0x0128, B:34:0x0157, B:36:0x0165, B:38:0x0199, B:40:0x01a7, B:85:0x0232, B:64:0x024e, B:82:0x0190, B:54:0x01cc, B:47:0x01ec, B:75:0x020c, B:61:0x022a, B:89:0x0246, B:68:0x0262, B:91:0x0035, B:94:0x0040, B:97:0x004b, B:100:0x0057, B:103:0x0063, B:106:0x006e, B:109:0x0079, B:112:0x0083, B:115:0x008d, B:118:0x0097, B:121:0x00a1, B:124:0x00ab, B:127:0x00b6, B:130:0x00c1, B:133:0x00cc, B:43:0x01d5, B:50:0x01b5, B:57:0x0214, B:71:0x01f5, B:78:0x0179), top: B:6:0x002c, inners: #0, #1, #2, #3, #4, #6, #7, #8 }] */
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onMethodCall(io.flutter.plugin.common.MethodCall r6, io.flutter.plugin.common.MethodChannel.Result r7) {
                /*
                    Method dump skipped, instructions count: 738
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass1.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
            }
        };
        this.parsingMethodCallHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/platform", JSONMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }

    public void systemChromeChanged(boolean z) {
        Log.v(TAG, "Sending 'systemUIChange' message.");
        this.channel.invokeMethod("SystemChrome.systemUIChange", Arrays.asList(Boolean.valueOf(z)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x003e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0054 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int decodeOrientations(org.json.JSONArray r9) throws org.json.JSONException, java.lang.NoSuchFieldException {
        /*
            r8 = this;
            r8 = 0
            r0 = r8
            r1 = r0
            r2 = r1
        L4:
            int r3 = r9.length()
            r4 = 4
            r5 = 2
            r6 = 1
            if (r0 >= r3) goto L38
            java.lang.String r3 = r9.getString(r0)
            io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r3 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.fromValue(r3)
            int[] r7 = io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation
            int r3 = r3.ordinal()
            r3 = r7[r3]
            if (r3 == r6) goto L30
            if (r3 == r5) goto L2d
            r5 = 3
            if (r3 == r5) goto L2a
            if (r3 == r4) goto L27
            goto L32
        L27:
            r1 = r1 | 8
            goto L32
        L2a:
            r1 = r1 | 2
            goto L32
        L2d:
            r1 = r1 | 4
            goto L32
        L30:
            r1 = r1 | 1
        L32:
            if (r2 != 0) goto L35
            r2 = r1
        L35:
            int r0 = r0 + 1
            goto L4
        L38:
            if (r1 == 0) goto L58
            r9 = 9
            r0 = 8
            switch(r1) {
                case 2: goto L57;
                case 3: goto L4e;
                case 4: goto L4d;
                case 5: goto L4a;
                case 6: goto L4e;
                case 7: goto L4e;
                case 8: goto L49;
                case 9: goto L4e;
                case 10: goto L46;
                case 11: goto L45;
                case 12: goto L4e;
                case 13: goto L4e;
                case 14: goto L4e;
                case 15: goto L42;
                default: goto L41;
            }
        L41:
            goto L54
        L42:
            r8 = 13
            return r8
        L45:
            return r5
        L46:
            r8 = 11
            return r8
        L49:
            return r0
        L4a:
            r8 = 12
            return r8
        L4d:
            return r9
        L4e:
            if (r2 == r5) goto L57
            if (r2 == r4) goto L56
            if (r2 == r0) goto L55
        L54:
            return r6
        L55:
            return r0
        L56:
            return r9
        L57:
            return r8
        L58:
            r8 = -1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.decodeOrientations(org.json.JSONArray):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AppSwitcherDescription decodeAppSwitcherDescription(JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getInt("primaryColor");
        if (i != 0) {
            i |= ViewCompat.MEASURED_STATE_MASK;
        }
        return new AppSwitcherDescription(i, jSONObject.getString("label"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<SystemUiOverlay> decodeSystemUiOverlays(JSONArray jSONArray) throws JSONException, NoSuchFieldException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            int i2 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.fromValue(jSONArray.getString(i)).ordinal()];
            if (i2 == 1) {
                arrayList.add(SystemUiOverlay.TOP_OVERLAYS);
            } else if (i2 == 2) {
                arrayList.add(SystemUiOverlay.BOTTOM_OVERLAYS);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.flutter.embedding.engine.systemchannels.PlatformChannel$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation;
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode;
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay;

        static {
            int[] iArr = new int[SystemUiMode.values().length];
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode = iArr;
            try {
                iArr[SystemUiMode.LEAN_BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.IMMERSIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.IMMERSIVE_STICKY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.EDGE_TO_EDGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SystemUiOverlay.values().length];
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay = iArr2;
            try {
                iArr2[SystemUiOverlay.TOP_OVERLAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.BOTTOM_OVERLAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[DeviceOrientation.values().length];
            $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation = iArr3;
            try {
                iArr3[DeviceOrientation.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation[DeviceOrientation.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SystemUiMode decodeSystemUiMode(String str) throws JSONException, NoSuchFieldException {
        int i = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiMode[SystemUiMode.fromValue(str).ordinal()];
        if (i == 1) {
            return SystemUiMode.LEAN_BACK;
        }
        if (i == 2) {
            return SystemUiMode.IMMERSIVE;
        }
        if (i == 3) {
            return SystemUiMode.IMMERSIVE_STICKY;
        }
        if (i == 4) {
            return SystemUiMode.EDGE_TO_EDGE;
        }
        return SystemUiMode.EDGE_TO_EDGE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SystemChromeStyle decodeSystemChromeStyle(JSONObject jSONObject) throws JSONException, NoSuchFieldException {
        return new SystemChromeStyle(!jSONObject.isNull("statusBarColor") ? Integer.valueOf(jSONObject.getInt("statusBarColor")) : null, !jSONObject.isNull("statusBarIconBrightness") ? Brightness.fromValue(jSONObject.getString("statusBarIconBrightness")) : null, !jSONObject.isNull("systemStatusBarContrastEnforced") ? Boolean.valueOf(jSONObject.getBoolean("systemStatusBarContrastEnforced")) : null, !jSONObject.isNull("systemNavigationBarColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarColor")) : null, !jSONObject.isNull("systemNavigationBarIconBrightness") ? Brightness.fromValue(jSONObject.getString("systemNavigationBarIconBrightness")) : null, !jSONObject.isNull("systemNavigationBarDividerColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarDividerColor")) : null, jSONObject.isNull("systemNavigationBarContrastEnforced") ? null : Boolean.valueOf(jSONObject.getBoolean("systemNavigationBarContrastEnforced")));
    }

    /* loaded from: classes3.dex */
    public enum SoundType {
        CLICK("SystemSoundType.click"),
        ALERT("SystemSoundType.alert");

        private final String encodedName;

        static SoundType fromValue(String str) throws NoSuchFieldException {
            for (SoundType soundType : values()) {
                if (soundType.encodedName.equals(str)) {
                    return soundType;
                }
            }
            throw new NoSuchFieldException("No such SoundType: " + str);
        }

        SoundType(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum HapticFeedbackType {
        STANDARD(null),
        LIGHT_IMPACT("HapticFeedbackType.lightImpact"),
        MEDIUM_IMPACT("HapticFeedbackType.mediumImpact"),
        HEAVY_IMPACT("HapticFeedbackType.heavyImpact"),
        SELECTION_CLICK("HapticFeedbackType.selectionClick");

        private final String encodedName;

        static HapticFeedbackType fromValue(String str) throws NoSuchFieldException {
            for (HapticFeedbackType hapticFeedbackType : values()) {
                String str2 = hapticFeedbackType.encodedName;
                if ((str2 == null && str == null) || (str2 != null && str2.equals(str))) {
                    return hapticFeedbackType;
                }
            }
            throw new NoSuchFieldException("No such HapticFeedbackType: " + str);
        }

        HapticFeedbackType(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum DeviceOrientation {
        PORTRAIT_UP("DeviceOrientation.portraitUp"),
        PORTRAIT_DOWN("DeviceOrientation.portraitDown"),
        LANDSCAPE_LEFT("DeviceOrientation.landscapeLeft"),
        LANDSCAPE_RIGHT("DeviceOrientation.landscapeRight");

        private String encodedName;

        static DeviceOrientation fromValue(String str) throws NoSuchFieldException {
            for (DeviceOrientation deviceOrientation : values()) {
                if (deviceOrientation.encodedName.equals(str)) {
                    return deviceOrientation;
                }
            }
            throw new NoSuchFieldException("No such DeviceOrientation: " + str);
        }

        DeviceOrientation(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum SystemUiOverlay {
        TOP_OVERLAYS("SystemUiOverlay.top"),
        BOTTOM_OVERLAYS("SystemUiOverlay.bottom");

        private String encodedName;

        static SystemUiOverlay fromValue(String str) throws NoSuchFieldException {
            for (SystemUiOverlay systemUiOverlay : values()) {
                if (systemUiOverlay.encodedName.equals(str)) {
                    return systemUiOverlay;
                }
            }
            throw new NoSuchFieldException("No such SystemUiOverlay: " + str);
        }

        SystemUiOverlay(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum SystemUiMode {
        LEAN_BACK("SystemUiMode.leanBack"),
        IMMERSIVE("SystemUiMode.immersive"),
        IMMERSIVE_STICKY("SystemUiMode.immersiveSticky"),
        EDGE_TO_EDGE("SystemUiMode.edgeToEdge");

        private String encodedName;

        static SystemUiMode fromValue(String str) throws NoSuchFieldException {
            for (SystemUiMode systemUiMode : values()) {
                if (systemUiMode.encodedName.equals(str)) {
                    return systemUiMode;
                }
            }
            throw new NoSuchFieldException("No such SystemUiMode: " + str);
        }

        SystemUiMode(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class AppSwitcherDescription {
        public final int color;
        public final String label;

        public AppSwitcherDescription(int i, String str) {
            this.color = i;
            this.label = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class SystemChromeStyle {
        public final Integer statusBarColor;
        public final Brightness statusBarIconBrightness;
        public final Integer systemNavigationBarColor;
        public final Boolean systemNavigationBarContrastEnforced;
        public final Integer systemNavigationBarDividerColor;
        public final Brightness systemNavigationBarIconBrightness;
        public final Boolean systemStatusBarContrastEnforced;

        public SystemChromeStyle(Integer num, Brightness brightness, Boolean bool, Integer num2, Brightness brightness2, Integer num3, Boolean bool2) {
            this.statusBarColor = num;
            this.statusBarIconBrightness = brightness;
            this.systemStatusBarContrastEnforced = bool;
            this.systemNavigationBarColor = num2;
            this.systemNavigationBarIconBrightness = brightness2;
            this.systemNavigationBarDividerColor = num3;
            this.systemNavigationBarContrastEnforced = bool2;
        }
    }

    /* loaded from: classes3.dex */
    public enum Brightness {
        LIGHT("Brightness.light"),
        DARK("Brightness.dark");

        private String encodedName;

        static Brightness fromValue(String str) throws NoSuchFieldException {
            for (Brightness brightness : values()) {
                if (brightness.encodedName.equals(str)) {
                    return brightness;
                }
            }
            throw new NoSuchFieldException("No such Brightness: " + str);
        }

        Brightness(String str) {
            this.encodedName = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum ClipboardContentFormat {
        PLAIN_TEXT("text/plain");

        private String encodedName;

        static ClipboardContentFormat fromValue(String str) throws NoSuchFieldException {
            for (ClipboardContentFormat clipboardContentFormat : values()) {
                if (clipboardContentFormat.encodedName.equals(str)) {
                    return clipboardContentFormat;
                }
            }
            throw new NoSuchFieldException("No such ClipboardContentFormat: " + str);
        }

        ClipboardContentFormat(String str) {
            this.encodedName = str;
        }
    }
}
