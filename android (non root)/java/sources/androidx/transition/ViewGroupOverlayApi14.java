package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ViewGroupOverlayApi14 extends ViewOverlayApi14 implements ViewGroupOverlayImpl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroupOverlayApi14(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    static ViewGroupOverlayApi14 createFrom(ViewGroup viewGroup) {
        return (ViewGroupOverlayApi14) ViewOverlayApi14.createFrom(viewGroup);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    public void add(View view) {
        this.mOverlayViewGroup.add(view);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    public void remove(View view) {
        this.mOverlayViewGroup.remove(view);
    }
}
