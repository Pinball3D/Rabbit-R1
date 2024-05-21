package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewBounds.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0006"}, d2 = {"offsetHorizontallyBy", "", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;", "offset", "", "offsetVerticallyBy", "dpadrecyclerview_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewBoundsKt {
    public static final List<ViewBounds> offsetVerticallyBy(List<ViewBounds> list, int i) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            ViewBounds copy$default = ViewBounds.copy$default(list.get(i2), 0, 0, 0, 0, 15, null);
            copy$default.offsetVertical(i);
            arrayList.add(copy$default);
        }
        return arrayList;
    }

    public static final List<ViewBounds> offsetHorizontallyBy(List<ViewBounds> list, int i) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            ViewBounds copy$default = ViewBounds.copy$default(list.get(i2), 0, 0, 0, 0, 15, null);
            copy$default.offsetHorizontal(i);
            arrayList.add(copy$default);
        }
        return arrayList;
    }
}
