package androidx.compose.ui;

import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ComposedModifier.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016R$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/CompositionLocalMapInjectionNode;", "Landroidx/compose/ui/Modifier$Node;", "map", "Landroidx/compose/runtime/CompositionLocalMap;", "(Landroidx/compose/runtime/CompositionLocalMap;)V", "value", "getMap", "()Landroidx/compose/runtime/CompositionLocalMap;", "setMap", "onAttach", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CompositionLocalMapInjectionNode extends Modifier.Node {
    private CompositionLocalMap map;

    public final CompositionLocalMap getMap() {
        return this.map;
    }

    public CompositionLocalMapInjectionNode(CompositionLocalMap map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.map = map;
    }

    public final void setMap(CompositionLocalMap value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.map = value;
        DelegatableNodeKt.requireLayoutNode(this).setCompositionLocalMap(value);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        DelegatableNodeKt.requireLayoutNode(this).setCompositionLocalMap(this.map);
    }
}
