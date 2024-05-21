package tech.rabbit.r1launcher.initstep.utils;

import kotlin.Metadata;

/* compiled from: Constants.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/initstep/utils/Constants;", "", "()V", "KEY_CODE_SLIDE_DOWN", "", "KEY_CODE_SLIDE_UP", "isSideButtonKeyCode", "", "keyCode", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Constants {
    public static final int $stable = 0;
    public static final Constants INSTANCE = new Constants();
    public static final int KEY_CODE_SLIDE_DOWN = 20;
    public static final int KEY_CODE_SLIDE_UP = 19;

    public final boolean isSideButtonKeyCode(int keyCode) {
        return 80 == keyCode || 26 == keyCode || 24 == keyCode;
    }

    private Constants() {
    }
}
