package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: CommonRipple.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B4\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\bø\u0001\u0000¢\u0006\u0002\u0010\fJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0013H\u0016J\b\u0010\u0018\u001a\u00020\u0013H\u0016J\b\u0010\u0019\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0010H\u0016J\f\u0010\u001b\u001a\u00020\u0013*\u00020\u001cH\u0016J!\u0010\u001d\u001a\u00020\u0013*\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\tH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000R\u0019\u0010\u0005\u001a\u00020\u0006X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006!"}, d2 = {"Landroidx/compose/material/ripple/CommonRippleIndicationInstance;", "Landroidx/compose/material/ripple/RippleIndicationInstance;", "Landroidx/compose/runtime/RememberObserver;", "bounded", "", "radius", "Landroidx/compose/ui/unit/Dp;", "color", "Landroidx/compose/runtime/State;", "Landroidx/compose/ui/graphics/Color;", "rippleAlpha", "Landroidx/compose/material/ripple/RippleAlpha;", "(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "F", "ripples", "Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "Landroidx/compose/foundation/interaction/PressInteraction$Press;", "Landroidx/compose/material/ripple/RippleAnimation;", "addRipple", "", "interaction", "scope", "Lkotlinx/coroutines/CoroutineScope;", "onAbandoned", "onForgotten", "onRemembered", "removeRipple", "drawIndication", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "drawRipples", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "drawRipples-4WTKRHQ", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V", "material-ripple_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CommonRippleIndicationInstance extends RippleIndicationInstance implements RememberObserver {
    private final boolean bounded;
    private final State<Color> color;
    private final float radius;
    private final State<RippleAlpha> rippleAlpha;
    private final SnapshotStateMap<PressInteraction.Press, RippleAnimation> ripples;

    public /* synthetic */ CommonRippleIndicationInstance(boolean z, float f, State state, State state2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, f, state, state2);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CommonRippleIndicationInstance(boolean z, float f, State<Color> color, State<RippleAlpha> rippleAlpha) {
        super(z, rippleAlpha);
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(rippleAlpha, "rippleAlpha");
        this.bounded = z;
        this.radius = f;
        this.color = color;
        this.rippleAlpha = rippleAlpha;
        this.ripples = SnapshotStateKt.mutableStateMapOf();
    }

    @Override // androidx.compose.foundation.IndicationInstance
    public void drawIndication(ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        long m2649unboximpl = this.color.getValue().m2649unboximpl();
        contentDrawScope.drawContent();
        ContentDrawScope contentDrawScope2 = contentDrawScope;
        m975drawStateLayerH2RKhps(contentDrawScope2, this.radius, m2649unboximpl);
        m967drawRipples4WTKRHQ(contentDrawScope2, m2649unboximpl);
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void addRipple(PressInteraction.Press interaction, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Iterator<Map.Entry<PressInteraction.Press, RippleAnimation>> it = this.ripples.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().finish();
        }
        RippleAnimation rippleAnimation = new RippleAnimation(this.bounded ? Offset.m2389boximpl(interaction.getPressPosition()) : null, this.radius, this.bounded, null);
        this.ripples.put(interaction, rippleAnimation);
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new CommonRippleIndicationInstance$addRipple$2(rippleAnimation, this, interaction, null), 3, null);
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void removeRipple(PressInteraction.Press interaction) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        RippleAnimation rippleAnimation = this.ripples.get(interaction);
        if (rippleAnimation != null) {
            rippleAnimation.finish();
        }
    }

    /* renamed from: drawRipples-4WTKRHQ, reason: not valid java name */
    private final void m967drawRipples4WTKRHQ(DrawScope drawScope, long j) {
        Iterator<Map.Entry<PressInteraction.Press, RippleAnimation>> it = this.ripples.entrySet().iterator();
        while (it.hasNext()) {
            RippleAnimation value = it.next().getValue();
            float pressedAlpha = this.rippleAlpha.getValue().getPressedAlpha();
            if (pressedAlpha != 0.0f) {
                value.m969draw4WTKRHQ(drawScope, Color.m2638copywmQWz5c$default(j, pressedAlpha, 0.0f, 0.0f, 0.0f, 14, null));
            }
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        this.ripples.clear();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        this.ripples.clear();
    }
}
