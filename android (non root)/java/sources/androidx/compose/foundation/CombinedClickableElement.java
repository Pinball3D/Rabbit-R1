package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Clickable.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001Bf\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fø\u0001\u0000¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0013\u0010\u0013\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0002H\u0016J\f\u0010\u001a\u001a\u00020\r*\u00020\u001bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001c"}, d2 = {"Landroidx/compose/foundation/CombinedClickableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/CombinedClickableNode;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "enabled", "", "onClickLabel", "", "role", "Landroidx/compose/ui/semantics/Role;", "onClick", "Lkotlin/Function0;", "", "onLongClickLabel", "onLongClick", "onDoubleClick", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "create", "equals", "other", "", "hashCode", "", "update", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CombinedClickableElement extends ModifierNodeElement<CombinedClickableNode> {
    private final boolean enabled;
    private final MutableInteractionSource interactionSource;
    private final Function0<Unit> onClick;
    private final String onClickLabel;
    private final Function0<Unit> onDoubleClick;
    private final Function0<Unit> onLongClick;
    private final String onLongClickLabel;
    private final Role role;

    public /* synthetic */ CombinedClickableElement(MutableInteractionSource mutableInteractionSource, boolean z, String str, Role role, Function0 function0, String str2, Function0 function02, Function0 function03, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableInteractionSource, z, str, role, function0, str2, function02, function03);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
    }

    public /* synthetic */ CombinedClickableElement(MutableInteractionSource mutableInteractionSource, boolean z, String str, Role role, Function0 function0, String str2, Function0 function02, Function0 function03, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableInteractionSource, z, str, (i & 8) != 0 ? null : role, function0, str2, function02, function03, null);
    }

    private CombinedClickableElement(MutableInteractionSource interactionSource, boolean z, String str, Role role, Function0<Unit> onClick, String str2, Function0<Unit> function0, Function0<Unit> function02) {
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        this.interactionSource = interactionSource;
        this.enabled = z;
        this.onClickLabel = str;
        this.role = role;
        this.onClick = onClick;
        this.onLongClickLabel = str2;
        this.onLongClick = function0;
        this.onDoubleClick = function02;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public CombinedClickableNode create() {
        return new CombinedClickableNode(this.interactionSource, this.enabled, this.onClickLabel, this.role, this.onClick, this.onLongClickLabel, this.onLongClick, this.onDoubleClick, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(CombinedClickableNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.m219updatecJG_KMw(this.interactionSource, this.enabled, this.onClickLabel, this.role, this.onClick, this.onLongClickLabel, this.onLongClick, this.onDoubleClick);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type androidx.compose.foundation.CombinedClickableElement");
        CombinedClickableElement combinedClickableElement = (CombinedClickableElement) other;
        return Intrinsics.areEqual(this.interactionSource, combinedClickableElement.interactionSource) && this.enabled == combinedClickableElement.enabled && Intrinsics.areEqual(this.onClickLabel, combinedClickableElement.onClickLabel) && Intrinsics.areEqual(this.role, combinedClickableElement.role) && Intrinsics.areEqual(this.onClick, combinedClickableElement.onClick) && Intrinsics.areEqual(this.onLongClickLabel, combinedClickableElement.onLongClickLabel) && Intrinsics.areEqual(this.onLongClick, combinedClickableElement.onLongClick) && Intrinsics.areEqual(this.onDoubleClick, combinedClickableElement.onDoubleClick);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int hashCode = ((this.interactionSource.hashCode() * 31) + Boolean.hashCode(this.enabled)) * 31;
        String str = this.onClickLabel;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        Role role = this.role;
        int m4253hashCodeimpl = (((hashCode2 + (role != null ? Role.m4253hashCodeimpl(role.getValue()) : 0)) * 31) + this.onClick.hashCode()) * 31;
        String str2 = this.onLongClickLabel;
        int hashCode3 = (m4253hashCodeimpl + (str2 != null ? str2.hashCode() : 0)) * 31;
        Function0<Unit> function0 = this.onLongClick;
        int hashCode4 = (hashCode3 + (function0 != null ? function0.hashCode() : 0)) * 31;
        Function0<Unit> function02 = this.onDoubleClick;
        return hashCode4 + (function02 != null ? function02.hashCode() : 0);
    }
}
