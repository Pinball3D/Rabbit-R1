package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import io.sentry.protocol.Request;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GetRetainInstanceUsageViolation.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;", "Landroidx/fragment/app/strictmode/RetainInstanceUsageViolation;", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class GetRetainInstanceUsageViolation extends RetainInstanceUsageViolation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetRetainInstanceUsageViolation(Fragment fragment) {
        super(fragment, "Attempting to get retain instance for fragment " + fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
    }
}
