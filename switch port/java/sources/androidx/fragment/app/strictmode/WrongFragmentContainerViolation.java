package androidx.fragment.app.strictmode;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import io.sentry.protocol.Request;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WrongFragmentContainerViolation.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;", "Landroidx/fragment/app/strictmode/Violation;", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "container", "Landroid/view/ViewGroup;", "(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V", "getContainer", "()Landroid/view/ViewGroup;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WrongFragmentContainerViolation extends Violation {
    private final ViewGroup container;

    public final ViewGroup getContainer() {
        return this.container;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrongFragmentContainerViolation(Fragment fragment, ViewGroup container) {
        super(fragment, "Attempting to add fragment " + fragment + " to container " + container + " which is not a FragmentContainerView");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(container, "container");
        this.container = container;
    }
}
