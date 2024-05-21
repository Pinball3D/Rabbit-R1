package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.semantics.Role;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Clickable.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001Bd\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bø\u0001\u0000¢\u0006\u0002\u0010\u0010Jm\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bø\u0001\u0001ø\u0001\u0000¢\u0006\u0002\b\u001aR\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u001b"}, d2 = {"Landroidx/compose/foundation/CombinedClickableNode;", "Landroidx/compose/foundation/AbstractClickableNode;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "enabled", "", "onClickLabel", "", "role", "Landroidx/compose/ui/semantics/Role;", "onClick", "Lkotlin/Function0;", "", "onLongClickLabel", "onLongClick", "onDoubleClick", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "clickablePointerInputNode", "Landroidx/compose/foundation/CombinedClickablePointerInputNode;", "getClickablePointerInputNode", "()Landroidx/compose/foundation/CombinedClickablePointerInputNode;", "clickableSemanticsNode", "Landroidx/compose/foundation/ClickableSemanticsNode;", "getClickableSemanticsNode", "()Landroidx/compose/foundation/ClickableSemanticsNode;", "update", "update-cJG_KMw", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class CombinedClickableNode extends AbstractClickableNode {
    private final CombinedClickablePointerInputNode clickablePointerInputNode;
    private final ClickableSemanticsNode clickableSemanticsNode;
    private Function0<Unit> onLongClick;

    public /* synthetic */ CombinedClickableNode(MutableInteractionSource mutableInteractionSource, boolean z, String str, Role role, Function0 function0, String str2, Function0 function02, Function0 function03, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableInteractionSource, z, str, role, function0, str2, function02, function03);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public CombinedClickablePointerInputNode getClickablePointerInputNode() {
        return this.clickablePointerInputNode;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public ClickableSemanticsNode getClickableSemanticsNode() {
        return this.clickableSemanticsNode;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CombinedClickableNode(MutableInteractionSource interactionSource, boolean z, String str, Role role, Function0<Unit> onClick, String str2, Function0<Unit> function0, Function0<Unit> function02) {
        super(interactionSource, z, str, role, onClick, null);
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        this.onLongClick = function0;
        this.clickableSemanticsNode = (ClickableSemanticsNode) delegate(new ClickableSemanticsNode(z, str, role, onClick, str2, function0, null));
        this.clickablePointerInputNode = (CombinedClickablePointerInputNode) delegate(new CombinedClickablePointerInputNode(z, interactionSource, onClick, getInteractionData(), this.onLongClick, function02));
    }

    /* renamed from: update-cJG_KMw, reason: not valid java name */
    public final void m219updatecJG_KMw(MutableInteractionSource interactionSource, boolean enabled, String onClickLabel, Role role, Function0<Unit> onClick, String onLongClickLabel, Function0<Unit> onLongClick, Function0<Unit> onDoubleClick) {
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if ((this.onLongClick == null) != (onLongClick == null)) {
            disposeInteractionSource();
        }
        this.onLongClick = onLongClick;
        m154updateCommonXHw0xAI(interactionSource, enabled, onClickLabel, role, onClick);
        getClickableSemanticsNode().m214updateUMe6uN4(enabled, onClickLabel, role, onClick, onLongClickLabel, onLongClick);
        getClickablePointerInputNode().update(enabled, interactionSource, onClick, onLongClick, onDoubleClick);
    }
}
