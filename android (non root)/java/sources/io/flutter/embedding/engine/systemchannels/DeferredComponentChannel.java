package io.flutter.embedding.engine.systemchannels;

import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class DeferredComponentChannel {
    private static final String TAG = "DeferredComponentChannel";
    private final MethodChannel channel;
    private Map<String, List<MethodChannel.Result>> componentNameToResults;
    private DeferredComponentManager deferredComponentManager;
    final MethodChannel.MethodCallHandler parsingMethodHandler;

    public void setDeferredComponentManager(DeferredComponentManager deferredComponentManager) {
        this.deferredComponentManager = deferredComponentManager;
    }

    public DeferredComponentChannel(DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.DeferredComponentChannel.1
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if (DeferredComponentChannel.this.deferredComponentManager == null) {
                    return;
                }
                String str = methodCall.method;
                Map map = (Map) methodCall.arguments();
                Log.v(DeferredComponentChannel.TAG, "Received '" + str + "' message.");
                int intValue = ((Integer) map.get("loadingUnitId")).intValue();
                String str2 = (String) map.get("componentName");
                str.hashCode();
                char c = 65535;
                switch (str.hashCode()) {
                    case -1004447972:
                        if (str.equals("uninstallDeferredComponent")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 399701758:
                        if (str.equals("getDeferredComponentInstallState")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 520962947:
                        if (str.equals("installDeferredComponent")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        DeferredComponentChannel.this.deferredComponentManager.uninstallDeferredComponent(intValue, str2);
                        result.success(null);
                        return;
                    case 1:
                        result.success(DeferredComponentChannel.this.deferredComponentManager.getDeferredComponentInstallState(intValue, str2));
                        return;
                    case 2:
                        DeferredComponentChannel.this.deferredComponentManager.installDeferredComponent(intValue, str2);
                        if (!DeferredComponentChannel.this.componentNameToResults.containsKey(str2)) {
                            DeferredComponentChannel.this.componentNameToResults.put(str2, new ArrayList());
                        }
                        ((List) DeferredComponentChannel.this.componentNameToResults.get(str2)).add(result);
                        return;
                    default:
                        result.notImplemented();
                        return;
                }
            }
        };
        this.parsingMethodHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/deferredcomponent", StandardMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
        this.deferredComponentManager = FlutterInjector.instance().deferredComponentManager();
        this.componentNameToResults = new HashMap();
    }

    public void completeInstallSuccess(String str) {
        if (this.componentNameToResults.containsKey(str)) {
            Iterator<MethodChannel.Result> it = this.componentNameToResults.get(str).iterator();
            while (it.hasNext()) {
                it.next().success(null);
            }
            this.componentNameToResults.get(str).clear();
        }
    }

    public void completeInstallError(String str, String str2) {
        if (this.componentNameToResults.containsKey(str)) {
            Iterator<MethodChannel.Result> it = this.componentNameToResults.get(str).iterator();
            while (it.hasNext()) {
                it.next().error("DeferredComponent Install failure", str2, null);
            }
            this.componentNameToResults.get(str).clear();
        }
    }
}
