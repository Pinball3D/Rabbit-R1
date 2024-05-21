package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bq\u0018\u00002\u00020\u0001J\u0011\u0010\u0005\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0011\u0010\b\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0007R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004\u0082\u0001\u0002\t\nø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/material3/TooltipState;", "", "isVisible", "", "()Z", "dismiss", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "show", "Landroidx/compose/material3/PlainTooltipState;", "Landroidx/compose/material3/RichTooltipState;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface TooltipState {
    Object dismiss(Continuation<? super Unit> continuation);

    boolean isVisible();

    Object show(Continuation<? super Unit> continuation);
}
