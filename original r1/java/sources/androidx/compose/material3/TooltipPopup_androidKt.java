package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TooltipPopup.android.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\u0011\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0007H\u0001¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"TooltipPopup", "", "popupPositionProvider", "Landroidx/compose/ui/window/PopupPositionProvider;", "onDismissRequest", "Lkotlin/Function0;", "content", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TooltipPopup_androidKt {
    public static final void TooltipPopup(final PopupPositionProvider popupPositionProvider, final Function0<Unit> onDismissRequest, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(popupPositionProvider, "popupPositionProvider");
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-1507102480);
        ComposerKt.sourceInformation(startRestartGroup, "C(TooltipPopup)P(2,1)29@1039L174:TooltipPopup.android.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(onDismissRequest) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(content) ? 256 : 128;
        }
        if ((i2 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1507102480, i2, -1, "androidx.compose.material3.TooltipPopup (TooltipPopup.android.kt:25)");
            }
            AndroidPopup_androidKt.Popup(popupPositionProvider, onDismissRequest, new PopupProperties(true, false, false, null, false, false, 62, null), content, startRestartGroup, (i2 & 14) | 384 | (i2 & 112) | ((i2 << 3) & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipPopup_androidKt$TooltipPopup$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                TooltipPopup_androidKt.TooltipPopup(PopupPositionProvider.this, onDismissRequest, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }
}
