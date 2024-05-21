package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\nH&¢\u0006\u0002\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "Landroidx/compose/ui/layout/MeasureScope;", "subcompose", "", "Landroidx/compose/ui/layout/Measurable;", "slotId", "", "content", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SubcomposeMeasureScope extends MeasureScope {
    List<Measurable> subcompose(Object slotId, Function2<? super Composer, ? super Integer, Unit> content);
}
