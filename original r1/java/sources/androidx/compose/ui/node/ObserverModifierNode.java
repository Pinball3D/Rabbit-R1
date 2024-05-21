package androidx.compose.ui.node;

import kotlin.Metadata;

/* compiled from: ObserverModifierNode.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/node/DelegatableNode;", "onObservedReadsChanged", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ObserverModifierNode extends DelegatableNode {
    void onObservedReadsChanged();
}
