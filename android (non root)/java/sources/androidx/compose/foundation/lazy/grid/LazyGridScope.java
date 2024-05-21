package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composer;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* compiled from: LazyGridDsl.kt */
@LazyGridScopeMarker
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001Jc\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u001b\b\u0002\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006¢\u0006\u0002\b\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00012\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\b\r¢\u0006\u0002\b\tH&ø\u0001\u0000¢\u0006\u0002\u0010\u000eJË\u0001\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112%\b\u0002\u0010\u0004\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000620\b\u0002\u0010\u0005\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\b\u0018\u00010\u0015¢\u0006\u0002\b\t2%\b\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000621\u0010\u0016\u001a-\u0012\u0004\u0012\u00020\f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00030\u0015¢\u0006\u0002\b\r¢\u0006\u0002\b\tH&ø\u0001\u0000¢\u0006\u0002\u0010\u0017\u0082\u0001\u0001\u0018ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u0019À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridScope;", "", "item", "", "key", "span", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;", "Landroidx/compose/foundation/lazy/grid/GridItemSpan;", "Lkotlin/ExtensionFunctionType;", "contentType", "content", "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "items", MetricSummary.JsonKeys.COUNT, "", "Lkotlin/ParameterName;", "name", "index", "Lkotlin/Function2;", "itemContent", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LazyGridScope {
    void item(Object key, Function1<? super LazyGridItemSpanScope, GridItemSpan> span, Object contentType, Function3<? super LazyGridItemScope, ? super Composer, ? super Integer, Unit> content);

    void items(int count, Function1<? super Integer, ? extends Object> key, Function2<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> span, Function1<? super Integer, ? extends Object> contentType, Function4<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent);

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void item$default(LazyGridScope lazyGridScope, Object obj, Function1 function1, Object obj2, Function3 function3, int i, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            function1 = null;
        }
        if ((i & 4) != 0) {
            obj2 = null;
        }
        lazyGridScope.item(obj, function1, obj2, function3);
    }

    static /* synthetic */ void items$default(LazyGridScope lazyGridScope, int i, Function1 function1, Function2 function2, Function1 function12, Function4 function4, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: items");
        }
        Function1 function13 = (i2 & 2) != 0 ? null : function1;
        Function2 function22 = (i2 & 4) != 0 ? null : function2;
        if ((i2 & 8) != 0) {
            function12 = new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScope$items$1
                public final Void invoke(int i3) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    return invoke(((Number) obj2).intValue());
                }
            };
        }
        lazyGridScope.items(i, function13, function22, function12, function4);
    }
}
