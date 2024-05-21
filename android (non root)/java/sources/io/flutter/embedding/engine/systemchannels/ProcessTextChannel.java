package io.flutter.embedding.engine.systemchannels;

import android.content.pm.PackageManager;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes3.dex */
public class ProcessTextChannel {
    private static final String CHANNEL_NAME = "flutter/processtext";
    private static final String METHOD_PROCESS_TEXT_ACTION = "ProcessText.processTextAction";
    private static final String METHOD_QUERY_TEXT_ACTIONS = "ProcessText.queryTextActions";
    private static final String TAG = "ProcessTextChannel";
    public final MethodChannel channel;
    public final PackageManager packageManager;
    public final MethodChannel.MethodCallHandler parsingMethodHandler;
    private ProcessTextMethodHandler processTextMethodHandler;

    /* loaded from: classes3.dex */
    public interface ProcessTextMethodHandler {
        void processTextAction(String str, String str2, boolean z, MethodChannel.Result result);

        Map<String, String> queryTextActions();
    }

    public void setMethodHandler(ProcessTextMethodHandler processTextMethodHandler) {
        this.processTextMethodHandler = processTextMethodHandler;
    }

    public ProcessTextChannel(DartExecutor dartExecutor, PackageManager packageManager) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.ProcessTextChannel.1
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if (ProcessTextChannel.this.processTextMethodHandler == null) {
                    return;
                }
                String str = methodCall.method;
                Object obj = methodCall.arguments;
                str.hashCode();
                if (!str.equals(ProcessTextChannel.METHOD_PROCESS_TEXT_ACTION)) {
                    if (str.equals(ProcessTextChannel.METHOD_QUERY_TEXT_ACTIONS)) {
                        try {
                            result.success(ProcessTextChannel.this.processTextMethodHandler.queryTextActions());
                            return;
                        } catch (IllegalStateException e) {
                            result.error("error", e.getMessage(), null);
                            return;
                        }
                    }
                    result.notImplemented();
                    return;
                }
                try {
                    ArrayList arrayList = (ArrayList) obj;
                    ProcessTextChannel.this.processTextMethodHandler.processTextAction((String) arrayList.get(0), (String) arrayList.get(1), ((Boolean) arrayList.get(2)).booleanValue(), result);
                } catch (IllegalStateException e2) {
                    result.error("error", e2.getMessage(), null);
                }
            }
        };
        this.parsingMethodHandler = methodCallHandler;
        this.packageManager = packageManager;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, CHANNEL_NAME, StandardMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }
}
