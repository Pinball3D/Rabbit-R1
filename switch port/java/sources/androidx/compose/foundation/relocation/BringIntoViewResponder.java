package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;

/* compiled from: BringIntoViewResponder.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0006H'ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/relocation/BringIntoViewResponder;", "", "bringChildIntoView", "", "localRect", "Lkotlin/Function0;", "Landroidx/compose/ui/geometry/Rect;", "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "calculateRectForParent", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface BringIntoViewResponder {
    Object bringChildIntoView(Function0<Rect> function0, Continuation<? super Unit> continuation);

    Rect calculateRectForParent(Rect localRect);
}
