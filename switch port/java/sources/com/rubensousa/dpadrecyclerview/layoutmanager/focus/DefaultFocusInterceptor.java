package com.rubensousa.dpadrecyclerview.layoutmanager.focus;

import android.view.FocusFinder;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DefaultFocusInterceptor.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ*\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "focusFinder", "Landroid/view/FocusFinder;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Landroid/view/FocusFinder;)V", "findFocus", "Landroid/view/View;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "focusedView", "position", "", "direction", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DefaultFocusInterceptor implements FocusInterceptor {
    private final LayoutConfiguration configuration;
    private final FocusFinder focusFinder;
    private final LayoutInfo layoutInfo;

    public DefaultFocusInterceptor(LayoutInfo layoutInfo, LayoutConfiguration configuration, FocusFinder focusFinder) {
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(focusFinder, "focusFinder");
        this.layoutInfo = layoutInfo;
        this.configuration = configuration;
        this.focusFinder = focusFinder;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ DefaultFocusInterceptor(com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo r1, com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration r2, android.view.FocusFinder r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
        /*
            r0 = this;
            r4 = r4 & 4
            if (r4 == 0) goto Ld
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            java.lang.String r4 = "getInstance(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
        Ld:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rubensousa.dpadrecyclerview.layoutmanager.focus.DefaultFocusInterceptor.<init>(com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo, com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration, android.view.FocusFinder, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.focus.FocusInterceptor
    public View findFocus(RecyclerView recyclerView, View focusedView, int position, int direction) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(focusedView, "focusedView");
        return this.focusFinder.findNextFocus(recyclerView, focusedView, FocusDirection.INSTANCE.getAbsoluteDirection(direction, this.configuration.isVertical(), this.layoutInfo.shouldReverseLayout()));
    }
}
