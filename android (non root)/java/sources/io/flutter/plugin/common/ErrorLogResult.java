package io.flutter.plugin.common;

import io.flutter.Log;
import io.flutter.plugin.common.MethodChannel;

/* loaded from: classes3.dex */
public class ErrorLogResult implements MethodChannel.Result {
    private int level;
    private String tag;

    @Override // io.flutter.plugin.common.MethodChannel.Result
    public void success(Object obj) {
    }

    public ErrorLogResult(String str) {
        this(str, Log.WARN);
    }

    public ErrorLogResult(String str, int i) {
        this.tag = str;
        this.level = i;
    }

    @Override // io.flutter.plugin.common.MethodChannel.Result
    public void error(String str, String str2, Object obj) {
        String str3 = obj != null ? " details: " + obj : "";
        if (this.level < Log.WARN) {
            return;
        }
        Log.println(this.level, this.tag, str2 + str3);
    }

    @Override // io.flutter.plugin.common.MethodChannel.Result
    public void notImplemented() {
        if (this.level < Log.WARN) {
            return;
        }
        Log.println(this.level, this.tag, "method not implemented");
    }
}
