package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TestModifierUpdater.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "It is a test API, do not use it in the real applications")
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/compose/ui/layout/TestModifierUpdater;", "", "node", "Landroidx/compose/ui/node/LayoutNode;", "(Landroidx/compose/ui/node/LayoutNode;)V", "updateModifier", "", "modifier", "Landroidx/compose/ui/Modifier;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TestModifierUpdater {
    public static final int $stable = 8;
    private final LayoutNode node;

    public TestModifierUpdater(LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.node = node;
    }

    public final void updateModifier(Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.node.setModifier(modifier);
    }
}
