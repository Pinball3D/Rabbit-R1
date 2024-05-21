package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class FocusKeepRecyclerView extends RecyclerView {
    private static final String TAG = "FocusKeepRecyclerView";
    private boolean mCanFocusOutHorizontal;
    private boolean mCanFocusOutVertical;
    private int mCurrentFocusPosition;
    private FocusGainListener mFocusGainListener;
    private FocusLostListener mFocusLostListener;

    /* loaded from: classes3.dex */
    public interface FocusGainListener {
        void onFocusGain(View view, View view2);
    }

    /* loaded from: classes3.dex */
    public interface FocusLostListener {
        void onFocusLost(View view, int i);
    }

    public boolean isCanFocusOutHorizontal() {
        return this.mCanFocusOutHorizontal;
    }

    public boolean isCanFocusOutVertical() {
        return this.mCanFocusOutVertical;
    }

    public void setCanFocusOutHorizontal(boolean z) {
        this.mCanFocusOutHorizontal = z;
    }

    public void setCanFocusOutVertical(boolean z) {
        this.mCanFocusOutVertical = z;
    }

    public void setFocusLostListener(FocusLostListener focusLostListener) {
        this.mFocusLostListener = focusLostListener;
    }

    public void setGainFocusListener(FocusGainListener focusGainListener) {
        this.mFocusGainListener = focusGainListener;
    }

    public FocusKeepRecyclerView(Context context) {
        this(context, null);
    }

    public FocusKeepRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FocusKeepRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCanFocusOutVertical = true;
        this.mCanFocusOutHorizontal = true;
        this.mCurrentFocusPosition = 0;
        setDescendantFocusability(262144);
        setChildrenDrawingOrderEnabled(true);
        setItemAnimator(null);
        setFocusable(true);
    }

    @Override // android.view.View
    public View focusSearch(int i) {
        return super.focusSearch(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        Log.i(TAG, "focusSearch " + view + ",direction= " + i);
        View focusSearch = super.focusSearch(view, i);
        if (view != null && focusSearch != null && findContainingItemView(focusSearch) == null) {
            if (!this.mCanFocusOutVertical && (i == 130 || i == 33)) {
                return view;
            }
            if (!this.mCanFocusOutHorizontal && (i == 17 || i == 66)) {
                return view;
            }
            FocusLostListener focusLostListener = this.mFocusLostListener;
            if (focusLostListener != null) {
                focusLostListener.onFocusLost(view, i);
            }
        }
        return focusSearch;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        FocusGainListener focusGainListener;
        String str = TAG;
        Log.i(str, "nextchild= " + view + ",focused = " + view2);
        if (!hasFocus() && (focusGainListener = this.mFocusGainListener) != null) {
            focusGainListener.onFocusGain(view, view2);
        }
        super.requestChildFocus(view, view2);
        this.mCurrentFocusPosition = getChildViewHolder(view).getAdapterPosition();
        Log.i(str, "focusPos = " + this.mCurrentFocusPosition);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        View findViewByPosition;
        if (hasFocus() || this.mCurrentFocusPosition < 0 || (findViewByPosition = getLayoutManager().findViewByPosition(this.mCurrentFocusPosition)) == null) {
            super.addFocusables(arrayList, i, i2);
        } else if (findViewByPosition.isFocusable()) {
            arrayList.add(findViewByPosition);
        } else {
            super.addFocusables(arrayList, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        View focusedChild = getFocusedChild();
        String str = TAG;
        Log.i(str, "focusedChild =" + focusedChild);
        if (focusedChild == null) {
            return super.getChildDrawingOrder(i, i2);
        }
        int indexOfChild = indexOfChild(focusedChild);
        Log.i(str, " index = " + indexOfChild + ",i=" + i2 + ",count=" + i);
        return i2 == i + (-1) ? indexOfChild : i2 < indexOfChild ? i2 : i2 + 1;
    }
}
