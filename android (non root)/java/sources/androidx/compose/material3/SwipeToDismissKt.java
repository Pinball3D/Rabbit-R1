package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SwipeToDismiss.kt */
@Metadata(d1 = {"\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u001ak\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\n¢\u0006\u0002\b\u000b2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\n¢\u0006\u0002\b\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0007¢\u0006\u0002\u0010\u0012\u001a]\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u0014\b\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00170\b2.\b\u0002\u0010\u0018\u001a(\u0012\u0004\u0012\u00020\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u001b0\u0019¢\u0006\u0002\b\u000bH\u0007¢\u0006\u0002\u0010\u001f\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"DismissThreshold", "Landroidx/compose/ui/unit/Dp;", "F", "SwipeToDismiss", "", SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/DismissState;", "background", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "dismissContent", "modifier", "Landroidx/compose/ui/Modifier;", "directions", "", "Landroidx/compose/material3/DismissDirection;", "(Landroidx/compose/material3/DismissState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Ljava/util/Set;Landroidx/compose/runtime/Composer;II)V", "rememberDismissState", "initialValue", "Landroidx/compose/material3/DismissValue;", "confirmValueChange", "", "positionalThreshold", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "", "Lkotlin/ParameterName;", "name", "totalDistance", "(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DismissState;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwipeToDismissKt {
    private static final float DismissThreshold = Dp.m4883constructorimpl(125);

    public static final DismissState rememberDismissState(final DismissValue dismissValue, final Function1<? super DismissValue, Boolean> function1, final Function2<? super Density, ? super Float, Float> function2, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-263967123);
        ComposerKt.sourceInformation(composer, "C(rememberDismissState)P(1)212@7855L83,211@7760L178:SwipeToDismiss.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            dismissValue = DismissValue.Default;
        }
        if ((i2 & 2) != 0) {
            function1 = new Function1<DismissValue, Boolean>() { // from class: androidx.compose.material3.SwipeToDismissKt$rememberDismissState$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(DismissValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return true;
                }
            };
        }
        if ((i2 & 4) != 0) {
            function2 = SwipeToDismissDefaults.INSTANCE.getFixedPositionalThreshold();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-263967123, i, -1, "androidx.compose.material3.rememberDismissState (SwipeToDismiss.kt:205)");
        }
        Object[] objArr = new Object[0];
        Saver<DismissState, DismissValue> Saver = DismissState.Companion.Saver(function1, function2);
        composer.startReplaceableGroup(1618982084);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean changed = composer.changed(dismissValue) | composer.changed(function1) | composer.changed(function2);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function0) new Function0<DismissState>() { // from class: androidx.compose.material3.SwipeToDismissKt$rememberDismissState$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final DismissState invoke() {
                    return new DismissState(DismissValue.this, function1, function2);
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DismissState dismissState = (DismissState) RememberSaveableKt.m2286rememberSaveable(objArr, (Saver) Saver, (String) null, (Function0) rememberedValue, composer, 72, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return dismissState;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SwipeToDismiss(final androidx.compose.material3.DismissState r27, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r28, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r29, androidx.compose.ui.Modifier r30, java.util.Set<? extends androidx.compose.material3.DismissDirection> r31, androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 1177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SwipeToDismissKt.SwipeToDismiss(androidx.compose.material3.DismissState, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function3, androidx.compose.ui.Modifier, java.util.Set, androidx.compose.runtime.Composer, int, int):void");
    }
}
