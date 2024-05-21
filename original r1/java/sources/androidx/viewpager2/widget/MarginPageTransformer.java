package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes2.dex */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {
    private final int mMarginPx;

    public MarginPageTransformer(int i) {
        Preconditions.checkArgumentNonnegative(i, "Margin must be non-negative");
        this.mMarginPx = i;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f) {
        ViewPager2 requireViewPager = requireViewPager(view);
        float f2 = this.mMarginPx * f;
        if (requireViewPager.getOrientation() == 0) {
            if (requireViewPager.isRtl()) {
                f2 = -f2;
            }
            view.setTranslationX(f2);
            return;
        }
        view.setTranslationY(f2);
    }

    private ViewPager2 requireViewPager(View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }
}
