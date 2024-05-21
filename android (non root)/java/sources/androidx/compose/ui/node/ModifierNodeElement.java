package androidx.compose.ui.node;

import androidx.compose.ui.ActualKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.Modifier.Node;
import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ValueElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.Sequence;

/* compiled from: ModifierNodeElement.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b'\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\r\u0010\u0018\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0015H¦\u0002J\b\u0010\u001d\u001a\u00020\u001eH&J\u0015\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00028\u0000H&¢\u0006\u0002\u0010\"J\f\u0010#\u001a\u00020 *\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006$"}, d2 = {"Landroidx/compose/ui/node/ModifierNodeElement;", "N", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/Modifier$Element;", "Landroidx/compose/ui/platform/InspectableValue;", "()V", "_inspectorValues", "Landroidx/compose/ui/platform/InspectorInfo;", "inspectableElements", "Lkotlin/sequences/Sequence;", "Landroidx/compose/ui/platform/ValueElement;", "getInspectableElements", "()Lkotlin/sequences/Sequence;", "inspectorValues", "getInspectorValues", "()Landroidx/compose/ui/platform/InspectorInfo;", "nameFallback", "", "getNameFallback", "()Ljava/lang/String;", "valueOverride", "", "getValueOverride", "()Ljava/lang/Object;", "create", "()Landroidx/compose/ui/Modifier$Node;", "equals", "", "other", "hashCode", "", "update", "", "node", "(Landroidx/compose/ui/Modifier$Node;)V", "inspectableProperties", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class ModifierNodeElement<N extends Modifier.Node> implements Modifier.Element, InspectableValue {
    public static final int $stable = 0;
    private InspectorInfo _inspectorValues;

    public abstract N create();

    public abstract boolean equals(Object other);

    public abstract int hashCode();

    public abstract void update(N node);

    private final InspectorInfo getInspectorValues() {
        InspectorInfo inspectorInfo = this._inspectorValues;
        if (inspectorInfo != null) {
            return inspectorInfo;
        }
        InspectorInfo inspectorInfo2 = new InspectorInfo();
        inspectorInfo2.setName(Reflection.getOrCreateKotlinClass(getClass()).getSimpleName());
        inspectableProperties(inspectorInfo2);
        this._inspectorValues = inspectorInfo2;
        return inspectorInfo2;
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public final String getNameFallback() {
        return getInspectorValues().getName();
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public final Object getValueOverride() {
        return getInspectorValues().getValue();
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public final Sequence<ValueElement> getInspectableElements() {
        return getInspectorValues().getProperties();
    }

    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        ActualKt.tryPopulateReflectively(inspectorInfo, this);
    }
}
