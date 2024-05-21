package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectionMagnifier.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "Landroidx/compose/ui/Modifier;", "invoke", "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectionMagnifierKt$animatedSelectionMagnifier$1 extends Lambda implements Function3<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ Function0<Offset> $magnifierCenter;
    final /* synthetic */ Function1<Function0<Offset>, Modifier> $platformMagnifier;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SelectionMagnifierKt$animatedSelectionMagnifier$1(Function0<Offset> function0, Function1<? super Function0<Offset>, ? extends Modifier> function1) {
        super(3);
        this.$magnifierCenter = function0;
        this.$platformMagnifier = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return invoke(modifier, composer, num.intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Modifier invoke(Modifier composed, Composer composer, int i) {
        final State rememberAnimatedMagnifierPosition;
        Intrinsics.checkNotNullParameter(composed, "$this$composed");
        composer.startReplaceableGroup(759876635);
        ComposerKt.sourceInformation(composer, "C66@2538L70,67@2647L18:SelectionMagnifier.kt#eksfi3");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(759876635, i, -1, "androidx.compose.foundation.text.selection.animatedSelectionMagnifier.<anonymous> (SelectionMagnifier.kt:65)");
        }
        rememberAnimatedMagnifierPosition = SelectionMagnifierKt.rememberAnimatedMagnifierPosition(this.$magnifierCenter, composer, 0);
        Function1<Function0<Offset>, Modifier> function1 = this.$platformMagnifier;
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(rememberAnimatedMagnifierPosition);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function0) new Function0<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$animatedSelectionMagnifier$1$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Offset invoke() {
                    return Offset.m2389boximpl(m907invokeF1C5BW0());
                }

                /* renamed from: invoke-F1C5BW0, reason: not valid java name */
                public final long m907invokeF1C5BW0() {
                    long invoke$lambda$0;
                    invoke$lambda$0 = SelectionMagnifierKt$animatedSelectionMagnifier$1.invoke$lambda$0(rememberAnimatedMagnifierPosition);
                    return invoke$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Modifier modifier = (Modifier) function1.invoke(rememberedValue);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long invoke$lambda$0(State<Offset> state) {
        return state.getValue().getPackedValue();
    }
}
