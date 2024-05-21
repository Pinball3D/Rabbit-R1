package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import io.sentry.protocol.Request;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WrongNestedHierarchyViolation.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/fragment/app/strictmode/WrongNestedHierarchyViolation;", "Landroidx/fragment/app/strictmode/Violation;", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "expectedParentFragment", "containerId", "", "(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V", "getContainerId", "()I", "getExpectedParentFragment", "()Landroidx/fragment/app/Fragment;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WrongNestedHierarchyViolation extends Violation {
    private final int containerId;
    private final Fragment expectedParentFragment;

    public final int getContainerId() {
        return this.containerId;
    }

    public final Fragment getExpectedParentFragment() {
        return this.expectedParentFragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrongNestedHierarchyViolation(Fragment fragment, Fragment expectedParentFragment, int i) {
        super(fragment, "Attempting to nest fragment " + fragment + " within the view of parent fragment " + expectedParentFragment + " via container with ID " + i + " without using parent's childFragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(expectedParentFragment, "expectedParentFragment");
        this.expectedParentFragment = expectedParentFragment;
        this.containerId = i;
    }
}
