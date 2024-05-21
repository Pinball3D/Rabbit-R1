package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.runtime.Composer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGridIntervalContent.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u0098\u0001\u0012#\u0010\u0002\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012#\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003\u0012#\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0003\u0012\"\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010\u0012R/\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u0011¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R1\u0010\u0002\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R.\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R1\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017¨\u0006\u001a"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridInterval;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;", "key", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "index", "", "type", "span", "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;", "item", "Lkotlin/Function2;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;", "", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "getItem", "()Lkotlin/jvm/functions/Function4;", "Lkotlin/jvm/functions/Function4;", "getKey", "()Lkotlin/jvm/functions/Function1;", "getSpan", "getType", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridInterval implements LazyLayoutIntervalContent.Interval {
    private final Function4<LazyStaggeredGridItemScope, Integer, Composer, Integer, Unit> item;
    private final Function1<Integer, Object> key;
    private final Function1<Integer, StaggeredGridItemSpan> span;
    private final Function1<Integer, Object> type;

    public final Function4<LazyStaggeredGridItemScope, Integer, Composer, Integer, Unit> getItem() {
        return this.item;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public Function1<Integer, Object> getKey() {
        return this.key;
    }

    public final Function1<Integer, StaggeredGridItemSpan> getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public Function1<Integer, Object> getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridInterval(Function1<? super Integer, ? extends Object> function1, Function1<? super Integer, ? extends Object> type, Function1<? super Integer, StaggeredGridItemSpan> function12, Function4<? super LazyStaggeredGridItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> item) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(item, "item");
        this.key = function1;
        this.type = type;
        this.span = function12;
        this.item = item;
    }
}
