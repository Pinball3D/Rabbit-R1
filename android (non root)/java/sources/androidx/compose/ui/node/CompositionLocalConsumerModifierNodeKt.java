package androidx.compose.ui.node;

import androidx.compose.runtime.CompositionLocal;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CompositionLocalConsumerModifierNode.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"currentValueOf", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "local", "Landroidx/compose/runtime/CompositionLocal;", "(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CompositionLocalConsumerModifierNodeKt {
    public static final <T> T currentValueOf(CompositionLocalConsumerModifierNode compositionLocalConsumerModifierNode, CompositionLocal<T> local) {
        Intrinsics.checkNotNullParameter(compositionLocalConsumerModifierNode, "<this>");
        Intrinsics.checkNotNullParameter(local, "local");
        if (!compositionLocalConsumerModifierNode.getNode().getIsAttached()) {
            throw new IllegalStateException("Cannot read CompositionLocal because the Modifier node is not currently attached.".toString());
        }
        return (T) DelegatableNodeKt.requireLayoutNode(compositionLocalConsumerModifierNode).getCompositionLocalMap().get(local);
    }
}
