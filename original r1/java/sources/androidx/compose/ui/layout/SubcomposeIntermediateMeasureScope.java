package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001J\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J0\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0011\u0010\u0015\u001a\r\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\u0002\b\u0018H\u0016¢\u0006\u0002\u0010\u0019R\u001b\u0010\u0002\u001a\u00020\u0003X¦\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R,\u0010\u0006\u001a\u0019\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tX¦\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\rX¦\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0005\u0082\u0001\u0001\u001aø\u0001\u0003\u0082\u0002\u0015\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006\u001bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "lookaheadConstraints", "Landroidx/compose/ui/unit/Constraints;", "getLookaheadConstraints-msEJaDk", "()J", "lookaheadMeasurePolicy", "Lkotlin/Function2;", "Landroidx/compose/ui/layout/MeasureResult;", "Lkotlin/ExtensionFunctionType;", "getLookaheadMeasurePolicy", "()Lkotlin/jvm/functions/Function2;", "lookaheadSize", "Landroidx/compose/ui/unit/IntSize;", "getLookaheadSize-YbymL2g", "measurablesForSlot", "", "Landroidx/compose/ui/layout/Measurable;", "slotId", "", "subcompose", "content", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SubcomposeIntermediateMeasureScope extends SubcomposeMeasureScope {
    /* renamed from: getLookaheadConstraints-msEJaDk */
    long mo3892getLookaheadConstraintsmsEJaDk();

    Function2<SubcomposeMeasureScope, Constraints, MeasureResult> getLookaheadMeasurePolicy();

    /* renamed from: getLookaheadSize-YbymL2g */
    long mo3893getLookaheadSizeYbymL2g();

    List<Measurable> measurablesForSlot(Object slotId);

    @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
    default List<Measurable> subcompose(Object slotId, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        return measurablesForSlot(slotId);
    }
}
