package androidx.viewpager2.adapter;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public final class FragmentViewHolder extends RecyclerView.ViewHolder {
    private FragmentViewHolder(FrameLayout frameLayout) {
        super(frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FragmentViewHolder create(ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setId(ViewCompat.generateViewId());
        frameLayout.setSaveEnabled(false);
        return new FragmentViewHolder(frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameLayout getContainer() {
        return (FrameLayout) this.itemView;
    }
}
