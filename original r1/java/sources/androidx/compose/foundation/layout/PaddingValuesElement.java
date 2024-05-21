package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Padding.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B&\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\t¢\u0006\u0002\u0010\nJ\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0002H\u0016J\f\u0010\u0018\u001a\u00020\b*\u00020\u0007H\u0016R\"\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Landroidx/compose/foundation/layout/PaddingValuesElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/PaddingValuesModifier;", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "inspectorInfo", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function1;)V", "getInspectorInfo", "()Lkotlin/jvm/functions/Function1;", "getPaddingValues", "()Landroidx/compose/foundation/layout/PaddingValues;", "create", "equals", "", "other", "", "hashCode", "", "update", "node", "inspectableProperties", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PaddingValuesElement extends ModifierNodeElement<PaddingValuesModifier> {
    private final Function1<InspectorInfo, Unit> inspectorInfo;
    private final PaddingValues paddingValues;

    public final Function1<InspectorInfo, Unit> getInspectorInfo() {
        return this.inspectorInfo;
    }

    public final PaddingValues getPaddingValues() {
        return this.paddingValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaddingValuesElement(PaddingValues paddingValues, Function1<? super InspectorInfo, Unit> inspectorInfo) {
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.paddingValues = paddingValues;
        this.inspectorInfo = inspectorInfo;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public PaddingValuesModifier create() {
        return new PaddingValuesModifier(this.paddingValues);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(PaddingValuesModifier node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setPaddingValues(this.paddingValues);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.paddingValues.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        PaddingValuesElement paddingValuesElement = other instanceof PaddingValuesElement ? (PaddingValuesElement) other : null;
        if (paddingValuesElement == null) {
            return false;
        }
        return Intrinsics.areEqual(this.paddingValues, paddingValuesElement.paddingValues);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        this.inspectorInfo.invoke(inspectorInfo);
    }
}
