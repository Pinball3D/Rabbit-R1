package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyGridMeasuredItemProvider.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ@\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\b\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H&J-\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u001bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;", "", "itemProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;", "measureScope", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "defaultMainAxisSpacing", "", "(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;I)V", "keyIndexMap", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "getKeyIndexMap", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "createItem", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "index", "key", "contentType", "crossAxisSize", "mainAxisSpacing", "placeables", "", "Landroidx/compose/ui/layout/Placeable;", "getAndMeasure", "constraints", "Landroidx/compose/ui/unit/Constraints;", "getAndMeasure-3p2s80s", "(IIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class LazyGridMeasuredItemProvider {
    private final int defaultMainAxisSpacing;
    private final LazyGridItemProvider itemProvider;
    private final LazyLayoutMeasureScope measureScope;

    public abstract LazyGridMeasuredItem createItem(int index, Object key, Object contentType, int crossAxisSize, int mainAxisSpacing, List<? extends Placeable> placeables);

    public LazyGridMeasuredItemProvider(LazyGridItemProvider itemProvider, LazyLayoutMeasureScope measureScope, int i) {
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Intrinsics.checkNotNullParameter(measureScope, "measureScope");
        this.itemProvider = itemProvider;
        this.measureScope = measureScope;
        this.defaultMainAxisSpacing = i;
    }

    /* renamed from: getAndMeasure-3p2s80s$default, reason: not valid java name */
    public static /* synthetic */ LazyGridMeasuredItem m628getAndMeasure3p2s80s$default(LazyGridMeasuredItemProvider lazyGridMeasuredItemProvider, int i, int i2, long j, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAndMeasure-3p2s80s");
        }
        if ((i3 & 2) != 0) {
            i2 = lazyGridMeasuredItemProvider.defaultMainAxisSpacing;
        }
        return lazyGridMeasuredItemProvider.m629getAndMeasure3p2s80s(i, i2, j);
    }

    /* renamed from: getAndMeasure-3p2s80s, reason: not valid java name */
    public final LazyGridMeasuredItem m629getAndMeasure3p2s80s(int index, int mainAxisSpacing, long constraints) {
        int m4840getMinHeightimpl;
        Object key = this.itemProvider.getKey(index);
        Object contentType = this.itemProvider.getContentType(index);
        List<Placeable> mo648measure0kLqBqw = this.measureScope.mo648measure0kLqBqw(index, constraints);
        if (Constraints.m4837getHasFixedWidthimpl(constraints)) {
            m4840getMinHeightimpl = Constraints.m4841getMinWidthimpl(constraints);
        } else {
            if (!Constraints.m4836getHasFixedHeightimpl(constraints)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            m4840getMinHeightimpl = Constraints.m4840getMinHeightimpl(constraints);
        }
        return createItem(index, key, contentType, m4840getMinHeightimpl, mainAxisSpacing, mo648measure0kLqBqw);
    }

    public final LazyLayoutKeyIndexMap getKeyIndexMap() {
        return this.itemProvider.getKeyIndexMap();
    }
}
