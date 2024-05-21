package com.r.l.wss.request.emit_start_end_utterance;

import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VoiceActivity.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\r"}, d2 = {"Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;", "", "()V", "imageBase64", "", "getImageBase64", "()Ljava/lang/String;", "setImageBase64", "(Ljava/lang/String;)V", SentryThread.JsonKeys.STATE, "getState", "setState", "Companion", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceActivity {
    public static final String inactive = "inactive";
    public static final String press = "pttButtonPressed";
    public static final String release = "pttButtonReleased";

    @SerializedName("imageBase64")
    private String imageBase64;

    @SerializedName(SentryThread.JsonKeys.STATE)
    private String state = "";

    public final String getImageBase64() {
        return this.imageBase64;
    }

    public final String getState() {
        return this.state;
    }

    public final void setImageBase64(String str) {
        this.imageBase64 = str;
    }

    public final void setState(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.state = str;
    }
}
