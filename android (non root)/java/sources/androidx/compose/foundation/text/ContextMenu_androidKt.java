package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContextMenu.android.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a,\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0081\bø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a,\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0081\bø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\n"}, d2 = {"ContextMenuArea", "", "manager", "Landroidx/compose/foundation/text/selection/SelectionManager;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ContextMenu_androidKt {
    public static final void ContextMenuArea(TextFieldSelectionManager manager, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-1985516685);
        ComposerKt.sourceInformation(composer, "CC(ContextMenuArea)P(1)29@1062L9:ContextMenu.android.kt#423gt5");
        content.invoke(composer, Integer.valueOf((i >> 3) & 14));
        composer.endReplaceableGroup();
    }

    public static final void ContextMenuArea(SelectionManager manager, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(605522716);
        ComposerKt.sourceInformation(composer, "CC(ContextMenuArea)P(1)37@1206L9:ContextMenu.android.kt#423gt5");
        content.invoke(composer, Integer.valueOf((i >> 3) & 14));
        composer.endReplaceableGroup();
    }
}
