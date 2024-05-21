package tech.rabbit.r1launcher.initstep.utils;

import android.content.Context;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;

/* compiled from: Utils.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/initstep/utils/Utils;", "", "()V", "isFastClick", "", "hit", "", "duration", "", "readSimOperatorName", "", "context", "Landroid/content/Context;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Utils {
    public static final int $stable = 0;
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public final String readSimOperatorName(Context context) {
        String string;
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        String simOperatorName = telephonyManager.getSimOperatorName();
        if (simOperatorName == null || simOperatorName.length() == 0) {
            string = context.getString(R.string.text_t_mobile);
            str = "getString(...)";
        } else {
            string = telephonyManager.getSimOperatorName();
            str = "getSimOperatorName(...)";
        }
        Intrinsics.checkNotNullExpressionValue(string, str);
        return string;
    }

    public static /* synthetic */ boolean isFastClick$default(Utils utils, long[] jArr, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 500;
        }
        return utils.isFastClick(jArr, j);
    }

    public final boolean isFastClick(long[] hit, long duration) {
        Intrinsics.checkNotNullParameter(hit, "hit");
        System.arraycopy(hit, 1, hit, 0, hit.length - 1);
        hit[hit.length - 1] = SystemClock.uptimeMillis();
        return hit[0] >= SystemClock.uptimeMillis() - duration;
    }
}
