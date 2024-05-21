package tech.rabbit.r1launcher.components.wifiutils.utils;

import android.content.Intent;
import kotlin.Metadata;

/* compiled from: VersionUtil.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006¨\u0006\n"}, d2 = {"Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;", "", "()V", "getPanelIntent", "Landroid/content/Intent;", "isAndroidQOrLater", "", "isJellyBeanOrLater", "isLollipopOrLater", "isMarshmallowOrLater", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VersionUtil {
    public static final int $stable = 0;
    public static final VersionUtil INSTANCE = new VersionUtil();

    public final boolean isAndroidQOrLater() {
        return false;
    }

    public final boolean isJellyBeanOrLater() {
        return true;
    }

    public final boolean isLollipopOrLater() {
        return true;
    }

    public final boolean isMarshmallowOrLater() {
        return true;
    }

    private VersionUtil() {
    }

    public final Intent getPanelIntent() {
        return new Intent("android.settings.panel.action.WIFI");
    }
}
