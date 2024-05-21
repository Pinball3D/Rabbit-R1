package androidx.window.core;

import androidx.window.core.SpecificationComputer;
import kotlin.Metadata;

/* compiled from: BuildConfig.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/window/core/BuildConfig;", "", "()V", "verificationMode", "Landroidx/window/core/SpecificationComputer$VerificationMode;", "getVerificationMode", "()Landroidx/window/core/SpecificationComputer$VerificationMode;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BuildConfig {
    public static final BuildConfig INSTANCE = new BuildConfig();
    private static final SpecificationComputer.VerificationMode verificationMode = SpecificationComputer.VerificationMode.QUIET;

    public final SpecificationComputer.VerificationMode getVerificationMode() {
        return verificationMode;
    }

    private BuildConfig() {
    }
}
