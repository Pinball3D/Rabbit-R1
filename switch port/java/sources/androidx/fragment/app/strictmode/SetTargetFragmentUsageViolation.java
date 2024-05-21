package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import io.sentry.protocol.Request;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SetTargetFragmentUsageViolation.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;", "Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "targetFragment", "requestCode", "", "(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V", "getRequestCode", "()I", "getTargetFragment", "()Landroidx/fragment/app/Fragment;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SetTargetFragmentUsageViolation extends TargetFragmentUsageViolation {
    private final int requestCode;
    private final Fragment targetFragment;

    public final int getRequestCode() {
        return this.requestCode;
    }

    public final Fragment getTargetFragment() {
        return this.targetFragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetTargetFragmentUsageViolation(Fragment fragment, Fragment targetFragment, int i) {
        super(fragment, "Attempting to set target fragment " + targetFragment + " with request code " + i + " for fragment " + fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(targetFragment, "targetFragment");
        this.targetFragment = targetFragment;
        this.requestCode = i;
    }
}
