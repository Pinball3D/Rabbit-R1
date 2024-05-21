package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: HoverInteraction.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"collectIsHoveredAsState", "Landroidx/compose/runtime/State;", "", "Landroidx/compose/foundation/interaction/InteractionSource;", "(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HoverInteractionKt {
    public static final State<Boolean> collectIsHoveredAsState(InteractionSource interactionSource, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(interactionSource, "<this>");
        composer.startReplaceableGroup(1206586544);
        ComposerKt.sourceInformation(composer, "C(collectIsHoveredAsState)65@2151L34,66@2211L411,66@2190L432:HoverInteraction.kt#ywyzhk");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1206586544, i, -1, "androidx.compose.foundation.interaction.collectIsHoveredAsState (HoverInteraction.kt:64)");
        }
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MutableState mutableState = (MutableState) rememberedValue;
        int i2 = i & 14;
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(interactionSource) | composer.changed(mutableState);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = (Function2) new HoverInteractionKt$collectIsHoveredAsState$1$1(interactionSource, mutableState, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        EffectsKt.LaunchedEffect(interactionSource, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) rememberedValue2, composer, i2 | 64);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return mutableState;
    }
}
