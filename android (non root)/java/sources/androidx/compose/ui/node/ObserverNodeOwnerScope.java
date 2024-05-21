package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ObserverModifierNode.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/node/ObserverNodeOwnerScope;", "Landroidx/compose/ui/node/OwnerScope;", "observerNode", "Landroidx/compose/ui/node/ObserverModifierNode;", "(Landroidx/compose/ui/node/ObserverModifierNode;)V", "isValidOwnerScope", "", "()Z", "getObserverNode$ui_release", "()Landroidx/compose/ui/node/ObserverModifierNode;", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ObserverNodeOwnerScope implements OwnerScope {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Function1<ObserverNodeOwnerScope, Unit> OnObserveReadsChanged = new Function1<ObserverNodeOwnerScope, Unit>() { // from class: androidx.compose.ui.node.ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ObserverNodeOwnerScope observerNodeOwnerScope) {
            invoke2(observerNodeOwnerScope);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ObserverNodeOwnerScope it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (it.isValidOwnerScope()) {
                it.getObserverNode().onObservedReadsChanged();
            }
        }
    };
    private final ObserverModifierNode observerNode;

    /* renamed from: getObserverNode$ui_release, reason: from getter */
    public final ObserverModifierNode getObserverNode() {
        return this.observerNode;
    }

    public ObserverNodeOwnerScope(ObserverModifierNode observerNode) {
        Intrinsics.checkNotNullParameter(observerNode, "observerNode");
        this.observerNode = observerNode;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValidOwnerScope() {
        return this.observerNode.getNode().getIsAttached();
    }

    /* compiled from: ObserverModifierNode.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion;", "", "()V", "OnObserveReadsChanged", "Lkotlin/Function1;", "Landroidx/compose/ui/node/ObserverNodeOwnerScope;", "", "getOnObserveReadsChanged$ui_release", "()Lkotlin/jvm/functions/Function1;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Function1<ObserverNodeOwnerScope, Unit> getOnObserveReadsChanged$ui_release() {
            return ObserverNodeOwnerScope.OnObserveReadsChanged;
        }
    }
}
