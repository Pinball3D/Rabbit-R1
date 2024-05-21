package androidx.compose.foundation.lazy.grid;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: LazyGridDsl.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Landroidx/compose/foundation/lazy/grid/GridItemSpan;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;", "it", "", "invoke-_-orMbw", "(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J"}, k = 3, mv = {1, 8, 0}, xi = 176)
/* loaded from: classes.dex */
public final class LazyGridDslKt$itemsIndexed$8 extends Lambda implements Function2<LazyGridItemSpanScope, Integer, GridItemSpan> {
    final /* synthetic */ T[] $items;
    final /* synthetic */ Function3<LazyGridItemSpanScope, Integer, T, GridItemSpan> $span;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$itemsIndexed$8(Function3<? super LazyGridItemSpanScope, ? super Integer, ? super T, GridItemSpan> function3, T[] tArr) {
        super(2);
        this.$span = function3;
        this.$items = tArr;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
        return GridItemSpan.m605boximpl(m617invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
    }

    /* renamed from: invoke-_-orMbw, reason: not valid java name */
    public final long m617invoke_orMbw(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
        Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
        return this.$span.invoke(lazyGridItemSpanScope, Integer.valueOf(i), this.$items[i]).getPackedValue();
    }
}
