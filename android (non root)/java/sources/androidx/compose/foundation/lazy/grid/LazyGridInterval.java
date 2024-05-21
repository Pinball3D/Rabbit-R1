package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.runtime.Composer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyGridIntervalContent.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u0095\u0001\u0012#\u0010\u0002\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\u001d\u0010\t\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\r\u0012#\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003\u0012\"\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\n¢\u0006\u0002\b\u0012¢\u0006\u0002\b\rø\u0001\u0000¢\u0006\u0002\u0010\u0013R/\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\n¢\u0006\u0002\b\u0012¢\u0006\u0002\b\r¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R1\u0010\u0002\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R+\u0010\t\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR1\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridInterval;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;", "key", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "index", "", "span", "Lkotlin/Function2;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;", "Landroidx/compose/foundation/lazy/grid/GridItemSpan;", "Lkotlin/ExtensionFunctionType;", "type", "item", "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;", "", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "getItem", "()Lkotlin/jvm/functions/Function4;", "Lkotlin/jvm/functions/Function4;", "getKey", "()Lkotlin/jvm/functions/Function1;", "getSpan", "()Lkotlin/jvm/functions/Function2;", "getType", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyGridInterval implements LazyLayoutIntervalContent.Interval {
    private final Function4<LazyGridItemScope, Integer, Composer, Integer, Unit> item;
    private final Function1<Integer, Object> key;
    private final Function2<LazyGridItemSpanScope, Integer, GridItemSpan> span;
    private final Function1<Integer, Object> type;

    public final Function4<LazyGridItemScope, Integer, Composer, Integer, Unit> getItem() {
        return this.item;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public Function1<Integer, Object> getKey() {
        return this.key;
    }

    public final Function2<LazyGridItemSpanScope, Integer, GridItemSpan> getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public Function1<Integer, Object> getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridInterval(Function1<? super Integer, ? extends Object> function1, Function2<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> span, Function1<? super Integer, ? extends Object> type, Function4<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> item) {
        Intrinsics.checkNotNullParameter(span, "span");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(item, "item");
        this.key = function1;
        this.span = span;
        this.type = type;
        this.item = item;
    }
}
