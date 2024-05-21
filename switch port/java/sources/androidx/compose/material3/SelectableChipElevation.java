package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Chip.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B:\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\tJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0011J(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0011R\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\nR\u0019\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\nR\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\nR\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\nR\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\nR\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\n\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001a"}, d2 = {"Landroidx/compose/material3/SelectableChipElevation;", "", "elevation", "Landroidx/compose/ui/unit/Dp;", "pressedElevation", "focusedElevation", "hoveredElevation", "draggedElevation", "disabledElevation", "(FFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "F", "animateElevation", "Landroidx/compose/runtime/State;", "enabled", "", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "equals", "other", "hashCode", "", "shadowElevation", "shadowElevation$material3_release", "tonalElevation", "tonalElevation$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectableChipElevation {
    public static final int $stable = 0;
    private final float disabledElevation;
    private final float draggedElevation;
    private final float elevation;
    private final float focusedElevation;
    private final float hoveredElevation;
    private final float pressedElevation;

    public /* synthetic */ SelectableChipElevation(float f, float f2, float f3, float f4, float f5, float f6, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, f5, f6);
    }

    private SelectableChipElevation(float f, float f2, float f3, float f4, float f5, float f6) {
        this.elevation = f;
        this.pressedElevation = f2;
        this.focusedElevation = f3;
        this.hoveredElevation = f4;
        this.draggedElevation = f5;
        this.disabledElevation = f6;
    }

    public final State<Dp> tonalElevation$material3_release(boolean z, InteractionSource interactionSource, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(-93383461);
        ComposerKt.sourceInformation(composer, "C(tonalElevation)1627@77905L74:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-93383461, i, -1, "androidx.compose.material3.SelectableChipElevation.tonalElevation (Chip.kt:1623)");
        }
        State<Dp> animateElevation = animateElevation(z, interactionSource, composer, (i & 896) | (i & 14) | (i & 112));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return animateElevation;
    }

    public final State<Dp> shadowElevation$material3_release(boolean z, InteractionSource interactionSource, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(-1888175651);
        ComposerKt.sourceInformation(composer, "C(shadowElevation)1646@78663L74:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1888175651, i, -1, "androidx.compose.material3.SelectableChipElevation.shadowElevation (Chip.kt:1642)");
        }
        State<Dp> animateElevation = animateElevation(z, interactionSource, composer, (i & 896) | (i & 14) | (i & 112));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return animateElevation;
    }

    private final State<Dp> animateElevation(boolean z, InteractionSource interactionSource, Composer composer, int i) {
        float f;
        composer.startReplaceableGroup(664514136);
        ComposerKt.sourceInformation(composer, "C(animateElevation)1654@78912L46,1655@79001L1473,1655@78967L1507,1706@80977L51:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(664514136, i, -1, "androidx.compose.material3.SelectableChipElevation.animateElevation (Chip.kt:1650)");
        }
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = SnapshotStateKt.mutableStateListOf();
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        SnapshotStateList snapshotStateList = (SnapshotStateList) rememberedValue;
        int i2 = (i >> 3) & 14;
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(interactionSource) | composer.changed(snapshotStateList);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = (Function2) new SelectableChipElevation$animateElevation$1$1(interactionSource, snapshotStateList, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        EffectsKt.LaunchedEffect(interactionSource, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) rememberedValue2, composer, i2 | 64);
        Interaction interaction = (Interaction) CollectionsKt.lastOrNull((List) snapshotStateList);
        if (!z) {
            f = this.disabledElevation;
        } else if (interaction instanceof PressInteraction.Press) {
            f = this.pressedElevation;
        } else if (interaction instanceof HoverInteraction.Enter) {
            f = this.hoveredElevation;
        } else if (interaction instanceof FocusInteraction.Focus) {
            f = this.focusedElevation;
        } else {
            f = interaction instanceof DragInteraction.Start ? this.draggedElevation : this.elevation;
        }
        float f2 = f;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == Composer.INSTANCE.getEmpty()) {
            rememberedValue3 = new Animatable(Dp.m4881boximpl(f2), VectorConvertersKt.getVectorConverter(Dp.INSTANCE), null, null, 12, null);
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        Animatable animatable = (Animatable) rememberedValue3;
        if (!z) {
            composer.startReplaceableGroup(-699481942);
            ComposerKt.sourceInformation(composer, "1710@81127L52");
            EffectsKt.LaunchedEffect(Dp.m4881boximpl(f2), new SelectableChipElevation$animateElevation$2(animatable, f2, null), composer, 64);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(-699481799);
            ComposerKt.sourceInformation(composer, "1712@81209L570");
            EffectsKt.LaunchedEffect(Dp.m4881boximpl(f2), new SelectableChipElevation$animateElevation$3(animatable, this, f2, interaction, null), composer, 64);
            composer.endReplaceableGroup();
        }
        State<Dp> asState = animatable.asState();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return asState;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !(other instanceof SelectableChipElevation)) {
            return false;
        }
        SelectableChipElevation selectableChipElevation = (SelectableChipElevation) other;
        return Dp.m4888equalsimpl0(this.elevation, selectableChipElevation.elevation) && Dp.m4888equalsimpl0(this.pressedElevation, selectableChipElevation.pressedElevation) && Dp.m4888equalsimpl0(this.focusedElevation, selectableChipElevation.focusedElevation) && Dp.m4888equalsimpl0(this.hoveredElevation, selectableChipElevation.hoveredElevation) && Dp.m4888equalsimpl0(this.disabledElevation, selectableChipElevation.disabledElevation);
    }

    public int hashCode() {
        return (((((((Dp.m4889hashCodeimpl(this.elevation) * 31) + Dp.m4889hashCodeimpl(this.pressedElevation)) * 31) + Dp.m4889hashCodeimpl(this.focusedElevation)) * 31) + Dp.m4889hashCodeimpl(this.hoveredElevation)) * 31) + Dp.m4889hashCodeimpl(this.disabledElevation);
    }
}
