package com.chad.library.adapter.base.util;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdapterUtils.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"getItemView", "Landroid/view/View;", "Landroid/view/ViewGroup;", "layoutResId", "", "com.github.CymChad.brvah"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AdapterUtilsKt {
    public static final View getItemView(ViewGroup viewGroup, int i) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(this.context).infla…layoutResId, this, false)");
        return inflate;
    }
}
