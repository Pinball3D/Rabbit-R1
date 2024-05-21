package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ObserverModifierNode.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a+\u0010\u0000\u001a\u00020\u0001\"\f\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004*\u0002H\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"observeReads", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/ObserverModifierNode;", "block", "Lkotlin/Function0;", "(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ObserverModifierNodeKt {
    public static final <T extends Modifier.Node & ObserverModifierNode> void observeReads(T t, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ObserverNodeOwnerScope ownerScope = t.getOwnerScope();
        if (ownerScope == null) {
            ownerScope = new ObserverNodeOwnerScope(t);
            t.setOwnerScope$ui_release(ownerScope);
        }
        DelegatableNodeKt.requireOwner(t).getSnapshotObserver().observeReads$ui_release(ownerScope, ObserverNodeOwnerScope.INSTANCE.getOnObserveReadsChanged$ui_release(), block);
    }
}
