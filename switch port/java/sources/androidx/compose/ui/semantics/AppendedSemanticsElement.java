package androidx.compose.ui.semantics;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsModifier.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0080\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B&\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u001a\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nHÆ\u0003J.\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0019\b\u0002\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nHÆ\u0001J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\u0013\u0010\u0018\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0002H\u0016J\f\u0010!\u001a\u00020\t*\u00020\"H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\"\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006#"}, d2 = {"Landroidx/compose/ui/semantics/AppendedSemanticsElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/semantics/CoreSemanticsModifierNode;", "Landroidx/compose/ui/semantics/SemanticsModifier;", "mergeDescendants", "", "properties", "Lkotlin/Function1;", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "", "Lkotlin/ExtensionFunctionType;", "(ZLkotlin/jvm/functions/Function1;)V", "getMergeDescendants", "()Z", "getProperties", "()Lkotlin/jvm/functions/Function1;", "semanticsConfiguration", "Landroidx/compose/ui/semantics/SemanticsConfiguration;", "getSemanticsConfiguration", "()Landroidx/compose/ui/semantics/SemanticsConfiguration;", "component1", "component2", "copy", "create", "equals", "other", "", "hashCode", "", "toString", "", "update", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class AppendedSemanticsElement extends ModifierNodeElement<CoreSemanticsModifierNode> implements SemanticsModifier {
    private final boolean mergeDescendants;
    private final Function1<SemanticsPropertyReceiver, Unit> properties;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AppendedSemanticsElement copy$default(AppendedSemanticsElement appendedSemanticsElement, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = appendedSemanticsElement.mergeDescendants;
        }
        if ((i & 2) != 0) {
            function1 = appendedSemanticsElement.properties;
        }
        return appendedSemanticsElement.copy(z, function1);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getMergeDescendants() {
        return this.mergeDescendants;
    }

    public final Function1<SemanticsPropertyReceiver, Unit> component2() {
        return this.properties;
    }

    public final AppendedSemanticsElement copy(boolean mergeDescendants, Function1<? super SemanticsPropertyReceiver, Unit> properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        return new AppendedSemanticsElement(mergeDescendants, properties);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppendedSemanticsElement)) {
            return false;
        }
        AppendedSemanticsElement appendedSemanticsElement = (AppendedSemanticsElement) other;
        return this.mergeDescendants == appendedSemanticsElement.mergeDescendants && Intrinsics.areEqual(this.properties, appendedSemanticsElement.properties);
    }

    public final boolean getMergeDescendants() {
        return this.mergeDescendants;
    }

    public final Function1<SemanticsPropertyReceiver, Unit> getProperties() {
        return this.properties;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        boolean z = this.mergeDescendants;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.properties.hashCode();
    }

    public String toString() {
        return "AppendedSemanticsElement(mergeDescendants=" + this.mergeDescendants + ", properties=" + this.properties + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AppendedSemanticsElement(boolean z, Function1<? super SemanticsPropertyReceiver, Unit> properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        this.mergeDescendants = z;
        this.properties = properties;
    }

    @Override // androidx.compose.ui.semantics.SemanticsModifier
    public SemanticsConfiguration getSemanticsConfiguration() {
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.setMergingSemanticsOfDescendants(this.mergeDescendants);
        this.properties.invoke(semanticsConfiguration);
        return semanticsConfiguration;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public CoreSemanticsModifierNode create() {
        return new CoreSemanticsModifierNode(this.mergeDescendants, false, this.properties);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(CoreSemanticsModifierNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setMergeDescendants(this.mergeDescendants);
        node.setProperties(this.properties);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("semantics");
        inspectorInfo.getProperties().set("mergeDescendants", Boolean.valueOf(this.mergeDescendants));
        SemanticsModifierKt.addSemanticsPropertiesFrom(inspectorInfo, getSemanticsConfiguration());
    }
}
