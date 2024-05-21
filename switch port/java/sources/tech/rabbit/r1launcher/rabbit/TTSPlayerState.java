package tech.rabbit.r1launcher.rabbit;

import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TTSPlayer.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;", "", "()V", TTSPlayerState.allMuted, "", TTSPlayerState.audioMuted, SentryThread.JsonKeys.STATE, "getState", "()Ljava/lang/String;", "setState", "(Ljava/lang/String;)V", TTSPlayerState.textMuted, TTSPlayerState.unmuted, "updateState", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TTSPlayerState {
    public static final String allMuted = "allMuted";
    public static final String audioMuted = "audioMuted";
    public static final String textMuted = "textMuted";
    public static final TTSPlayerState INSTANCE = new TTSPlayerState();
    public static final String unmuted = "unmuted";
    private static String state = unmuted;
    public static final int $stable = 8;

    public final String getState() {
        return state;
    }

    public final void setState(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        state = str;
    }

    private TTSPlayerState() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000b. Please report as an issue. */
    public final void updateState(String state2) {
        Intrinsics.checkNotNullParameter(state2, "state");
        switch (state2.hashCode()) {
            case -1054150594:
                if (state2.equals(textMuted)) {
                    state = textMuted;
                    return;
                }
                state = unmuted;
                return;
            case -282781070:
                if (state2.equals(unmuted)) {
                    state = unmuted;
                    return;
                }
                state = unmuted;
                return;
            case 1532779317:
                if (state2.equals(audioMuted)) {
                    state = audioMuted;
                    return;
                }
                state = unmuted;
                return;
            case 1781687370:
                if (state2.equals(allMuted)) {
                    state = allMuted;
                    return;
                }
                state = unmuted;
                return;
            default:
                state = unmuted;
                return;
        }
    }
}
