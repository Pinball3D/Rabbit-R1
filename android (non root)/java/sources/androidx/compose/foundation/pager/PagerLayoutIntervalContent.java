package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutPager.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001Be\u00121\u0010\u0003\u001a-\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\u0002\b\u000b¢\u0006\u0002\b\f\u0012#\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0006¢\u0006\u0002\u0010\u0012R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0014X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R.\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R>\u0010\u0003\u001a-\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\u0002\b\u000b¢\u0006\u0002\b\f¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0011\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "Landroidx/compose/foundation/pager/PagerIntervalContent;", "pageContent", "Lkotlin/Function2;", "Landroidx/compose/foundation/pager/PagerScope;", "", "Lkotlin/ParameterName;", "name", "page", "", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "key", "Lkotlin/Function1;", "index", "", "pageCount", "(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;I)V", "intervals", "Landroidx/compose/foundation/lazy/layout/IntervalList;", "getIntervals", "()Landroidx/compose/foundation/lazy/layout/IntervalList;", "getKey", "()Lkotlin/jvm/functions/Function1;", "getPageContent", "()Lkotlin/jvm/functions/Function4;", "Lkotlin/jvm/functions/Function4;", "getPageCount", "()I", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class PagerLayoutIntervalContent extends LazyLayoutIntervalContent<PagerIntervalContent> {
    private final IntervalList<PagerIntervalContent> intervals;
    private final Function1<Integer, Object> key;
    private final Function4<PagerScope, Integer, Composer, Integer, Unit> pageContent;
    private final int pageCount;

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public IntervalList<PagerIntervalContent> getIntervals() {
        return this.intervals;
    }

    public final Function1<Integer, Object> getKey() {
        return this.key;
    }

    public final Function4<PagerScope, Integer, Composer, Integer, Unit> getPageContent() {
        return this.pageContent;
    }

    public final int getPageCount() {
        return this.pageCount;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PagerLayoutIntervalContent(Function4<? super PagerScope, ? super Integer, ? super Composer, ? super Integer, Unit> pageContent, Function1<? super Integer, ? extends Object> function1, int i) {
        Intrinsics.checkNotNullParameter(pageContent, "pageContent");
        this.pageContent = pageContent;
        this.key = function1;
        this.pageCount = i;
        MutableIntervalList mutableIntervalList = new MutableIntervalList();
        mutableIntervalList.addInterval(i, new PagerIntervalContent(function1, pageContent));
        this.intervals = mutableIntervalList;
    }
}
