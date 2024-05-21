package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Ripple.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J'\u0010\u0015\u001a\u00020\u0011*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u001cR\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroidx/compose/material/ripple/StateLayer;", "", "bounded", "", "rippleAlpha", "Landroidx/compose/runtime/State;", "Landroidx/compose/material/ripple/RippleAlpha;", "(ZLandroidx/compose/runtime/State;)V", "animatedAlpha", "Landroidx/compose/animation/core/Animatable;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "currentInteraction", "Landroidx/compose/foundation/interaction/Interaction;", "interactions", "", "handleInteraction", "", "interaction", "scope", "Lkotlinx/coroutines/CoroutineScope;", "drawStateLayer", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "radius", "Landroidx/compose/ui/unit/Dp;", "color", "Landroidx/compose/ui/graphics/Color;", "drawStateLayer-H2RKhps", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJ)V", "material-ripple_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StateLayer {
    private final Animatable<Float, AnimationVector1D> animatedAlpha;
    private final boolean bounded;
    private Interaction currentInteraction;
    private final List<Interaction> interactions;
    private final State<RippleAlpha> rippleAlpha;

    public StateLayer(boolean z, State<RippleAlpha> rippleAlpha) {
        Intrinsics.checkNotNullParameter(rippleAlpha, "rippleAlpha");
        this.bounded = z;
        this.rippleAlpha = rippleAlpha;
        this.animatedAlpha = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        this.interactions = new ArrayList();
    }

    public final void handleInteraction(Interaction interaction, CoroutineScope scope) {
        float draggedAlpha;
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        boolean z = interaction instanceof HoverInteraction.Enter;
        if (z) {
            this.interactions.add(interaction);
        } else if (interaction instanceof HoverInteraction.Exit) {
            this.interactions.remove(((HoverInteraction.Exit) interaction).getEnter());
        } else if (interaction instanceof FocusInteraction.Focus) {
            this.interactions.add(interaction);
        } else if (interaction instanceof FocusInteraction.Unfocus) {
            this.interactions.remove(((FocusInteraction.Unfocus) interaction).getFocus());
        } else if (interaction instanceof DragInteraction.Start) {
            this.interactions.add(interaction);
        } else if (interaction instanceof DragInteraction.Stop) {
            this.interactions.remove(((DragInteraction.Stop) interaction).getStart());
        } else if (!(interaction instanceof DragInteraction.Cancel)) {
            return;
        } else {
            this.interactions.remove(((DragInteraction.Cancel) interaction).getStart());
        }
        Interaction interaction2 = (Interaction) CollectionsKt.lastOrNull((List) this.interactions);
        if (Intrinsics.areEqual(this.currentInteraction, interaction2)) {
            return;
        }
        if (interaction2 != null) {
            if (z) {
                draggedAlpha = this.rippleAlpha.getValue().getHoveredAlpha();
            } else if (interaction instanceof FocusInteraction.Focus) {
                draggedAlpha = this.rippleAlpha.getValue().getFocusedAlpha();
            } else {
                draggedAlpha = interaction instanceof DragInteraction.Start ? this.rippleAlpha.getValue().getDraggedAlpha() : 0.0f;
            }
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new StateLayer$handleInteraction$1(this, draggedAlpha, RippleKt.access$incomingStateLayerAnimationSpecFor(interaction2), null), 3, null);
        } else {
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new StateLayer$handleInteraction$2(this, RippleKt.access$outgoingStateLayerAnimationSpecFor(this.currentInteraction), null), 3, null);
        }
        this.currentInteraction = interaction2;
    }

    /* renamed from: drawStateLayer-H2RKhps, reason: not valid java name */
    public final void m979drawStateLayerH2RKhps(DrawScope drawStateLayer, float f, long j) {
        float f2;
        Intrinsics.checkNotNullParameter(drawStateLayer, "$this$drawStateLayer");
        if (Float.isNaN(f)) {
            f2 = RippleAnimationKt.m970getRippleEndRadiuscSwnlzA(drawStateLayer, this.bounded, drawStateLayer.mo3182getSizeNHjbRc());
        } else {
            f2 = drawStateLayer.mo335toPx0680j_4(f);
        }
        float f3 = f2;
        float floatValue = this.animatedAlpha.getValue().floatValue();
        if (floatValue > 0.0f) {
            long m2638copywmQWz5c$default = Color.m2638copywmQWz5c$default(j, floatValue, 0.0f, 0.0f, 0.0f, 14, null);
            if (!this.bounded) {
                DrawScope.m3164drawCircleVaOC9Bg$default(drawStateLayer, m2638copywmQWz5c$default, f3, 0L, 0.0f, null, null, 0, 124, null);
                return;
            }
            float m2469getWidthimpl = Size.m2469getWidthimpl(drawStateLayer.mo3182getSizeNHjbRc());
            float m2466getHeightimpl = Size.m2466getHeightimpl(drawStateLayer.mo3182getSizeNHjbRc());
            int m2628getIntersectrtfAjoo = ClipOp.INSTANCE.m2628getIntersectrtfAjoo();
            DrawContext drawContext = drawStateLayer.getDrawContext();
            long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
            drawContext.getCanvas().save();
            drawContext.getTransform().mo3110clipRectN_I0leg(0.0f, 0.0f, m2469getWidthimpl, m2466getHeightimpl, m2628getIntersectrtfAjoo);
            DrawScope.m3164drawCircleVaOC9Bg$default(drawStateLayer, m2638copywmQWz5c$default, f3, 0L, 0.0f, null, null, 0, 124, null);
            drawContext.getCanvas().restore();
            drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
        }
    }
}
