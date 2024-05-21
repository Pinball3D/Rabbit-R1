package androidx.compose.material3;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: TextFieldDefaults.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aK\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"animateBorderStrokeAsState", "Landroidx/compose/runtime/State;", "Landroidx/compose/foundation/BorderStroke;", "enabled", "", "isError", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "colors", "Landroidx/compose/material3/TextFieldColors;", "focusedBorderThickness", "Landroidx/compose/ui/unit/Dp;", "unfocusedBorderThickness", "animateBorderStrokeAsState-NuRrP5Q", "(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldDefaultsKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animateBorderStrokeAsState-NuRrP5Q, reason: not valid java name */
    public static final State<BorderStroke> m1551animateBorderStrokeAsStateNuRrP5Q(boolean z, boolean z2, InteractionSource interactionSource, TextFieldColors textFieldColors, float f, float f2, Composer composer, int i) {
        State<Dp> rememberUpdatedState;
        composer.startReplaceableGroup(-1633063017);
        ComposerKt.sourceInformation(composer, "C(animateBorderStrokeAsState)P(1,4,3!1,2:c#ui.unit.Dp,5:c#ui.unit.Dp)2112@112642L25,2113@112700L51,2120@113057L107:TextFieldDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1633063017, i, -1, "androidx.compose.material3.animateBorderStrokeAsState (TextFieldDefaults.kt:2104)");
        }
        State<Boolean> collectIsFocusedAsState = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composer, (i >> 6) & 14);
        State<Color> indicatorColor$material3_release = textFieldColors.indicatorColor$material3_release(z, z2, interactionSource, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168));
        float f3 = animateBorderStrokeAsState_NuRrP5Q$lambda$0(collectIsFocusedAsState) ? f : f2;
        if (z) {
            composer.startReplaceableGroup(-1927737384);
            ComposerKt.sourceInformation(composer, "2116@112895L76");
            rememberUpdatedState = AnimateAsStateKt.m90animateDpAsStateAjpBEmI(f3, AnimationSpecKt.tween$default(150, 0, null, 6, null), null, null, composer, 48, 12);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(-1927737286);
            ComposerKt.sourceInformation(composer, "2118@112993L46");
            rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Dp.m4881boximpl(f2), composer, (i >> 15) & 14);
            composer.endReplaceableGroup();
        }
        State<BorderStroke> rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(new BorderStroke(rememberUpdatedState.getValue().m4897unboximpl(), new SolidColor(indicatorColor$material3_release.getValue().m2649unboximpl(), null), null), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState2;
    }

    private static final boolean animateBorderStrokeAsState_NuRrP5Q$lambda$0(State<Boolean> state) {
        return state.getValue().booleanValue();
    }
}
