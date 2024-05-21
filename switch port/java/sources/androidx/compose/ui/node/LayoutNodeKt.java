package androidx.compose.ui.node;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutNode.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0000\u001a\f\u0010\n\u001a\u00020\u000b*\u00020\bH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"DebugChanges", "", "getDebugChanges$annotations", "()V", "DefaultDensity", "Landroidx/compose/ui/unit/Density;", "add", "", "Landroidx/compose/ui/node/LayoutNode;", "child", "requireOwner", "Landroidx/compose/ui/node/Owner;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutNodeKt {
    private static final boolean DebugChanges = false;
    private static final Density DefaultDensity = DensityKt.Density$default(1.0f, 0.0f, 2, null);

    public static final /* synthetic */ Density access$getDefaultDensity$p() {
        return DefaultDensity;
    }

    private static /* synthetic */ void getDebugChanges$annotations() {
    }

    public static final Owner requireOwner(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Owner owner = layoutNode.getOwner();
        if (owner != null) {
            return owner;
        }
        throw new IllegalStateException("LayoutNode should be attached to an owner".toString());
    }

    public static final void add(LayoutNode layoutNode, LayoutNode child) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        layoutNode.insertAt$ui_release(layoutNode.getChildren$ui_release().size(), child);
    }
}
