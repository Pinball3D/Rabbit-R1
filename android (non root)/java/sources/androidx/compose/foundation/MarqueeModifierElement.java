package androidx.compose.foundation;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BasicMarquee.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B8\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\fø\u0001\u0000¢\u0006\u0002\u0010\rJ\t\u0010\u0010\u001a\u00020\u0004HÂ\u0003J\u0019\u0010\u0011\u001a\u00020\u0006HÂ\u0003ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0014\u001a\u00020\u0004HÂ\u0003J\t\u0010\u0015\u001a\u00020\u0004HÂ\u0003J\t\u0010\u0016\u001a\u00020\nHÂ\u0003J\u0019\u0010\u0017\u001a\u00020\fHÂ\u0003ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019JR\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u0002H\u0016J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0004HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0002H\u0016J\f\u0010(\u001a\u00020&*\u00020)H\u0016R\u0019\u0010\u0005\u001a\u00020\u0006X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\u00020\fX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006*"}, d2 = {"Landroidx/compose/foundation/MarqueeModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/MarqueeModifierNode;", "iterations", "", "animationMode", "Landroidx/compose/foundation/MarqueeAnimationMode;", "delayMillis", "initialDelayMillis", "spacing", "Landroidx/compose/foundation/MarqueeSpacing;", "velocity", "Landroidx/compose/ui/unit/Dp;", "(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "I", "F", "component1", "component2", "component2-ZbEOnfQ", "()I", "component3", "component4", "component5", "component6", "component6-D9Ej5fM", "()F", "copy", "copy-lWfNwf4", "(IIIILandroidx/compose/foundation/MarqueeSpacing;F)Landroidx/compose/foundation/MarqueeModifierElement;", "create", "equals", "", "other", "", "hashCode", "toString", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final /* data */ class MarqueeModifierElement extends ModifierNodeElement<MarqueeModifierNode> {
    private final int animationMode;
    private final int delayMillis;
    private final int initialDelayMillis;
    private final int iterations;
    private final MarqueeSpacing spacing;
    private final float velocity;

    public /* synthetic */ MarqueeModifierElement(int i, int i2, int i3, int i4, MarqueeSpacing marqueeSpacing, float f, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, i4, marqueeSpacing, f);
    }

    /* renamed from: component1, reason: from getter */
    private final int getIterations() {
        return this.iterations;
    }

    /* renamed from: component2-ZbEOnfQ, reason: not valid java name and from getter */
    private final int getAnimationMode() {
        return this.animationMode;
    }

    /* renamed from: component3, reason: from getter */
    private final int getDelayMillis() {
        return this.delayMillis;
    }

    /* renamed from: component4, reason: from getter */
    private final int getInitialDelayMillis() {
        return this.initialDelayMillis;
    }

    /* renamed from: component5, reason: from getter */
    private final MarqueeSpacing getSpacing() {
        return this.spacing;
    }

    /* renamed from: component6-D9Ej5fM, reason: not valid java name and from getter */
    private final float getVelocity() {
        return this.velocity;
    }

    /* renamed from: copy-lWfNwf4$default, reason: not valid java name */
    public static /* synthetic */ MarqueeModifierElement m244copylWfNwf4$default(MarqueeModifierElement marqueeModifierElement, int i, int i2, int i3, int i4, MarqueeSpacing marqueeSpacing, float f, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = marqueeModifierElement.iterations;
        }
        if ((i5 & 2) != 0) {
            i2 = marqueeModifierElement.animationMode;
        }
        int i6 = i2;
        if ((i5 & 4) != 0) {
            i3 = marqueeModifierElement.delayMillis;
        }
        int i7 = i3;
        if ((i5 & 8) != 0) {
            i4 = marqueeModifierElement.initialDelayMillis;
        }
        int i8 = i4;
        if ((i5 & 16) != 0) {
            marqueeSpacing = marqueeModifierElement.spacing;
        }
        MarqueeSpacing marqueeSpacing2 = marqueeSpacing;
        if ((i5 & 32) != 0) {
            f = marqueeModifierElement.velocity;
        }
        return marqueeModifierElement.m245copylWfNwf4(i, i6, i7, i8, marqueeSpacing2, f);
    }

    /* renamed from: copy-lWfNwf4, reason: not valid java name */
    public final MarqueeModifierElement m245copylWfNwf4(int iterations, int animationMode, int delayMillis, int initialDelayMillis, MarqueeSpacing spacing, float velocity) {
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        return new MarqueeModifierElement(iterations, animationMode, delayMillis, initialDelayMillis, spacing, velocity, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MarqueeModifierElement)) {
            return false;
        }
        MarqueeModifierElement marqueeModifierElement = (MarqueeModifierElement) other;
        return this.iterations == marqueeModifierElement.iterations && MarqueeAnimationMode.m234equalsimpl0(this.animationMode, marqueeModifierElement.animationMode) && this.delayMillis == marqueeModifierElement.delayMillis && this.initialDelayMillis == marqueeModifierElement.initialDelayMillis && Intrinsics.areEqual(this.spacing, marqueeModifierElement.spacing) && Dp.m4888equalsimpl0(this.velocity, marqueeModifierElement.velocity);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return (((((((((Integer.hashCode(this.iterations) * 31) + MarqueeAnimationMode.m235hashCodeimpl(this.animationMode)) * 31) + Integer.hashCode(this.delayMillis)) * 31) + Integer.hashCode(this.initialDelayMillis)) * 31) + this.spacing.hashCode()) * 31) + Dp.m4889hashCodeimpl(this.velocity);
    }

    public String toString() {
        return "MarqueeModifierElement(iterations=" + this.iterations + ", animationMode=" + ((Object) MarqueeAnimationMode.m236toStringimpl(this.animationMode)) + ", delayMillis=" + this.delayMillis + ", initialDelayMillis=" + this.initialDelayMillis + ", spacing=" + this.spacing + ", velocity=" + ((Object) Dp.m4894toStringimpl(this.velocity)) + ')';
    }

    private MarqueeModifierElement(int i, int i2, int i3, int i4, MarqueeSpacing spacing, float f) {
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        this.iterations = i;
        this.animationMode = i2;
        this.delayMillis = i3;
        this.initialDelayMillis = i4;
        this.spacing = spacing;
        this.velocity = f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("basicMarquee");
        inspectorInfo.getProperties().set("iterations", Integer.valueOf(this.iterations));
        inspectorInfo.getProperties().set("animationMode", MarqueeAnimationMode.m231boximpl(this.animationMode));
        inspectorInfo.getProperties().set("delayMillis", Integer.valueOf(this.delayMillis));
        inspectorInfo.getProperties().set("initialDelayMillis", Integer.valueOf(this.initialDelayMillis));
        inspectorInfo.getProperties().set("spacing", this.spacing);
        inspectorInfo.getProperties().set("velocity", Dp.m4881boximpl(this.velocity));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public MarqueeModifierNode create() {
        return new MarqueeModifierNode(this.iterations, this.animationMode, this.delayMillis, this.initialDelayMillis, this.spacing, this.velocity, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(MarqueeModifierNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.m249updatelWfNwf4(this.iterations, this.animationMode, this.delayMillis, this.initialDelayMillis, this.spacing, this.velocity);
    }
}
