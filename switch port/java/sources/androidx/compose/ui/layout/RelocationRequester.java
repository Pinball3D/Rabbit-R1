package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: RelocationRequester.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "Please use BringIntoViewRequester instead.", replaceWith = @ReplaceWith(expression = "BringIntoViewRequester", imports = {"androidx.compose.foundation.relocation.BringIntoViewRequester"}))
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Landroidx/compose/ui/layout/RelocationRequester;", "", "()V", "bringIntoView", "", "rect", "Landroidx/compose/ui/geometry/Rect;", "(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RelocationRequester {
    public static final int $stable = 0;

    public static /* synthetic */ Object bringIntoView$default(RelocationRequester relocationRequester, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return relocationRequester.bringIntoView(rect, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Please use BringIntoViewRequester instead.", replaceWith = @ReplaceWith(expression = "bringIntoView", imports = {"androidx.compose.foundation.relocation.BringIntoViewRequester"}))
    public final Object bringIntoView(Rect rect, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
