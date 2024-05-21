package com.chad.library.adapter.base.module;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.dragswipe.DragAndSwipeCallback;
import com.chad.library.adapter.base.listener.DraggableListenerImp;
import com.chad.library.adapter.base.listener.OnItemDragListener;
import com.chad.library.adapter.base.listener.OnItemSwipeListener;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import io.sentry.protocol.TransactionInfo;
import java.util.Collections;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DraggableModule.kt */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\b\u0016\u0018\u0000 [2\u00020\u0001:\u0001[B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u000e\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<J\u0010\u0010=\u001a\u0002042\u0006\u0010>\u001a\u00020?H\u0004J\b\u0010@\u001a\u00020\u0006H\u0016J\u0010\u0010A\u001a\u00020\u00062\u0006\u0010B\u001a\u000204H\u0002J\b\u0010C\u001a\u00020:H\u0002J\u0015\u0010D\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0000¢\u0006\u0002\bGJ\u0010\u0010H\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0018\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u00020?2\u0006\u0010K\u001a\u00020?H\u0016J\u0010\u0010L\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010M\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010N\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010O\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J4\u0010P\u001a\u00020:2\b\u0010Q\u001a\u0004\u0018\u00010R2\b\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020T2\u0006\u0010V\u001a\u00020\u0006H\u0016J\u0012\u0010W\u001a\u00020:2\b\u0010X\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010Y\u001a\u00020:2\b\u0010Z\u001a\u0004\u0018\u00010\"H\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0007\"\u0004\b\u000e\u0010\tR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010(X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006\\"}, d2 = {"Lcom/chad/library/adapter/base/module/BaseDraggableModule;", "Lcom/chad/library/adapter/base/listener/DraggableListenerImp;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "isDragEnabled", "", "()Z", "setDragEnabled", "(Z)V", "value", "isDragOnLongPressEnabled", "setDragOnLongPressEnabled", "isSwipeEnabled", "setSwipeEnabled", "itemTouchHelper", "Landroidx/recyclerview/widget/ItemTouchHelper;", "getItemTouchHelper", "()Landroidx/recyclerview/widget/ItemTouchHelper;", "setItemTouchHelper", "(Landroidx/recyclerview/widget/ItemTouchHelper;)V", "itemTouchHelperCallback", "Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;", "getItemTouchHelperCallback", "()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;", "setItemTouchHelperCallback", "(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V", "mOnItemDragListener", "Lcom/chad/library/adapter/base/listener/OnItemDragListener;", "getMOnItemDragListener", "()Lcom/chad/library/adapter/base/listener/OnItemDragListener;", "setMOnItemDragListener", "(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V", "mOnItemSwipeListener", "Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;", "getMOnItemSwipeListener", "()Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;", "setMOnItemSwipeListener", "(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V", "mOnToggleViewLongClickListener", "Landroid/view/View$OnLongClickListener;", "getMOnToggleViewLongClickListener", "()Landroid/view/View$OnLongClickListener;", "setMOnToggleViewLongClickListener", "(Landroid/view/View$OnLongClickListener;)V", "mOnToggleViewTouchListener", "Landroid/view/View$OnTouchListener;", "getMOnToggleViewTouchListener", "()Landroid/view/View$OnTouchListener;", "setMOnToggleViewTouchListener", "(Landroid/view/View$OnTouchListener;)V", "toggleViewId", "", "getToggleViewId", "()I", "setToggleViewId", "(I)V", "attachToRecyclerView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getViewHolderPosition", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "hasToggleView", "inRange", "position", "initItemTouch", "initView", "holder", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "initView$com_github_CymChad_brvah", "onItemDragEnd", "onItemDragMoving", TransactionInfo.JsonKeys.SOURCE, "target", "onItemDragStart", "onItemSwipeClear", "onItemSwipeStart", "onItemSwiped", "onItemSwiping", "canvas", "Landroid/graphics/Canvas;", "dX", "", "dY", "isCurrentlyActive", "setOnItemDragListener", "onItemDragListener", "setOnItemSwipeListener", "onItemSwipeListener", "Companion", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class BaseDraggableModule implements DraggableListenerImp {
    private static final int NO_TOGGLE_VIEW = 0;
    private final BaseQuickAdapter<?, ?> baseQuickAdapter;
    private boolean isDragEnabled;
    private boolean isDragOnLongPressEnabled;
    private boolean isSwipeEnabled;
    public ItemTouchHelper itemTouchHelper;
    public DragAndSwipeCallback itemTouchHelperCallback;
    private OnItemDragListener mOnItemDragListener;
    private OnItemSwipeListener mOnItemSwipeListener;
    private View.OnLongClickListener mOnToggleViewLongClickListener;
    private View.OnTouchListener mOnToggleViewTouchListener;
    private int toggleViewId;

    protected final OnItemDragListener getMOnItemDragListener() {
        return this.mOnItemDragListener;
    }

    protected final OnItemSwipeListener getMOnItemSwipeListener() {
        return this.mOnItemSwipeListener;
    }

    protected final View.OnLongClickListener getMOnToggleViewLongClickListener() {
        return this.mOnToggleViewLongClickListener;
    }

    protected final View.OnTouchListener getMOnToggleViewTouchListener() {
        return this.mOnToggleViewTouchListener;
    }

    public final int getToggleViewId() {
        return this.toggleViewId;
    }

    public boolean hasToggleView() {
        return this.toggleViewId != 0;
    }

    /* renamed from: isDragEnabled, reason: from getter */
    public final boolean getIsDragEnabled() {
        return this.isDragEnabled;
    }

    /* renamed from: isDragOnLongPressEnabled, reason: from getter */
    public boolean getIsDragOnLongPressEnabled() {
        return this.isDragOnLongPressEnabled;
    }

    /* renamed from: isSwipeEnabled, reason: from getter */
    public final boolean getIsSwipeEnabled() {
        return this.isSwipeEnabled;
    }

    public final void setDragEnabled(boolean z) {
        this.isDragEnabled = z;
    }

    public final void setItemTouchHelper(ItemTouchHelper itemTouchHelper) {
        Intrinsics.checkNotNullParameter(itemTouchHelper, "<set-?>");
        this.itemTouchHelper = itemTouchHelper;
    }

    public final void setItemTouchHelperCallback(DragAndSwipeCallback dragAndSwipeCallback) {
        Intrinsics.checkNotNullParameter(dragAndSwipeCallback, "<set-?>");
        this.itemTouchHelperCallback = dragAndSwipeCallback;
    }

    protected final void setMOnItemDragListener(OnItemDragListener onItemDragListener) {
        this.mOnItemDragListener = onItemDragListener;
    }

    protected final void setMOnItemSwipeListener(OnItemSwipeListener onItemSwipeListener) {
        this.mOnItemSwipeListener = onItemSwipeListener;
    }

    protected final void setMOnToggleViewLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mOnToggleViewLongClickListener = onLongClickListener;
    }

    protected final void setMOnToggleViewTouchListener(View.OnTouchListener onTouchListener) {
        this.mOnToggleViewTouchListener = onTouchListener;
    }

    @Override // com.chad.library.adapter.base.listener.DraggableListenerImp
    public void setOnItemDragListener(OnItemDragListener onItemDragListener) {
        this.mOnItemDragListener = onItemDragListener;
    }

    @Override // com.chad.library.adapter.base.listener.DraggableListenerImp
    public void setOnItemSwipeListener(OnItemSwipeListener onItemSwipeListener) {
        this.mOnItemSwipeListener = onItemSwipeListener;
    }

    public final void setSwipeEnabled(boolean z) {
        this.isSwipeEnabled = z;
    }

    public final void setToggleViewId(int i) {
        this.toggleViewId = i;
    }

    public BaseDraggableModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        this.baseQuickAdapter = baseQuickAdapter;
        initItemTouch();
        this.isDragOnLongPressEnabled = true;
    }

    public final ItemTouchHelper getItemTouchHelper() {
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            return itemTouchHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelper");
        return null;
    }

    public final DragAndSwipeCallback getItemTouchHelperCallback() {
        DragAndSwipeCallback dragAndSwipeCallback = this.itemTouchHelperCallback;
        if (dragAndSwipeCallback != null) {
            return dragAndSwipeCallback;
        }
        Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelperCallback");
        return null;
    }

    private final void initItemTouch() {
        setItemTouchHelperCallback(new DragAndSwipeCallback(this));
        setItemTouchHelper(new ItemTouchHelper(getItemTouchHelperCallback()));
    }

    public final void initView$com_github_CymChad_brvah(BaseViewHolder holder) {
        View findViewById;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (this.isDragEnabled && hasToggleView() && (findViewById = holder.itemView.findViewById(this.toggleViewId)) != null) {
            findViewById.setTag(R.id.BaseQuickAdapter_viewholder_support, holder);
            if (getIsDragOnLongPressEnabled()) {
                findViewById.setOnLongClickListener(this.mOnToggleViewLongClickListener);
            } else {
                findViewById.setOnTouchListener(this.mOnToggleViewTouchListener);
            }
        }
    }

    public final void attachToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        getItemTouchHelper().attachToRecyclerView(recyclerView);
    }

    public void setDragOnLongPressEnabled(boolean z) {
        this.isDragOnLongPressEnabled = z;
        if (z) {
            this.mOnToggleViewTouchListener = null;
            this.mOnToggleViewLongClickListener = new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.module.BaseDraggableModule$$ExternalSyntheticLambda0
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean _set_isDragOnLongPressEnabled_$lambda$0;
                    _set_isDragOnLongPressEnabled_$lambda$0 = BaseDraggableModule._set_isDragOnLongPressEnabled_$lambda$0(BaseDraggableModule.this, view);
                    return _set_isDragOnLongPressEnabled_$lambda$0;
                }
            };
        } else {
            this.mOnToggleViewTouchListener = new View.OnTouchListener() { // from class: com.chad.library.adapter.base.module.BaseDraggableModule$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean _set_isDragOnLongPressEnabled_$lambda$1;
                    _set_isDragOnLongPressEnabled_$lambda$1 = BaseDraggableModule._set_isDragOnLongPressEnabled_$lambda$1(BaseDraggableModule.this, view, motionEvent);
                    return _set_isDragOnLongPressEnabled_$lambda$1;
                }
            };
            this.mOnToggleViewLongClickListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _set_isDragOnLongPressEnabled_$lambda$0(BaseDraggableModule this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isDragEnabled) {
            return true;
        }
        ItemTouchHelper itemTouchHelper = this$0.getItemTouchHelper();
        Object tag = view.getTag(R.id.BaseQuickAdapter_viewholder_support);
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder");
        itemTouchHelper.startDrag((RecyclerView.ViewHolder) tag);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _set_isDragOnLongPressEnabled_$lambda$1(BaseDraggableModule this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() != 0 || this$0.getIsDragOnLongPressEnabled()) {
            return false;
        }
        if (this$0.isDragEnabled) {
            ItemTouchHelper itemTouchHelper = this$0.getItemTouchHelper();
            Object tag = view.getTag(R.id.BaseQuickAdapter_viewholder_support);
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder");
            itemTouchHelper.startDrag((RecyclerView.ViewHolder) tag);
        }
        return true;
    }

    protected final int getViewHolderPosition(RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return viewHolder.getAdapterPosition() - this.baseQuickAdapter.getHeaderLayoutCount();
    }

    public void onItemDragStart(RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        OnItemDragListener onItemDragListener = this.mOnItemDragListener;
        if (onItemDragListener != null) {
            onItemDragListener.onItemDragStart(viewHolder, getViewHolderPosition(viewHolder));
        }
    }

    public void onItemDragMoving(RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        int viewHolderPosition = getViewHolderPosition(source);
        int viewHolderPosition2 = getViewHolderPosition(target);
        if (inRange(viewHolderPosition) && inRange(viewHolderPosition2)) {
            if (viewHolderPosition < viewHolderPosition2) {
                int i = viewHolderPosition;
                while (i < viewHolderPosition2) {
                    int i2 = i + 1;
                    Collections.swap(this.baseQuickAdapter.getData(), i, i2);
                    i = i2;
                }
            } else {
                int i3 = viewHolderPosition2 + 1;
                if (i3 <= viewHolderPosition) {
                    int i4 = viewHolderPosition;
                    while (true) {
                        Collections.swap(this.baseQuickAdapter.getData(), i4, i4 - 1);
                        if (i4 == i3) {
                            break;
                        } else {
                            i4--;
                        }
                    }
                }
            }
            this.baseQuickAdapter.notifyItemMoved(source.getAdapterPosition(), target.getAdapterPosition());
        }
        OnItemDragListener onItemDragListener = this.mOnItemDragListener;
        if (onItemDragListener != null) {
            onItemDragListener.onItemDragMoving(source, viewHolderPosition, target, viewHolderPosition2);
        }
    }

    public void onItemDragEnd(RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        OnItemDragListener onItemDragListener = this.mOnItemDragListener;
        if (onItemDragListener != null) {
            onItemDragListener.onItemDragEnd(viewHolder, getViewHolderPosition(viewHolder));
        }
    }

    public void onItemSwipeStart(RecyclerView.ViewHolder viewHolder) {
        OnItemSwipeListener onItemSwipeListener;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (!this.isSwipeEnabled || (onItemSwipeListener = this.mOnItemSwipeListener) == null) {
            return;
        }
        onItemSwipeListener.onItemSwipeStart(viewHolder, getViewHolderPosition(viewHolder));
    }

    public void onItemSwipeClear(RecyclerView.ViewHolder viewHolder) {
        OnItemSwipeListener onItemSwipeListener;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (!this.isSwipeEnabled || (onItemSwipeListener = this.mOnItemSwipeListener) == null) {
            return;
        }
        onItemSwipeListener.clearView(viewHolder, getViewHolderPosition(viewHolder));
    }

    public void onItemSwiped(RecyclerView.ViewHolder viewHolder) {
        OnItemSwipeListener onItemSwipeListener;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int viewHolderPosition = getViewHolderPosition(viewHolder);
        if (inRange(viewHolderPosition)) {
            this.baseQuickAdapter.getData().remove(viewHolderPosition);
            this.baseQuickAdapter.notifyItemRemoved(viewHolder.getAdapterPosition());
            if (!this.isSwipeEnabled || (onItemSwipeListener = this.mOnItemSwipeListener) == null) {
                return;
            }
            onItemSwipeListener.onItemSwiped(viewHolder, viewHolderPosition);
        }
    }

    public void onItemSwiping(Canvas canvas, RecyclerView.ViewHolder viewHolder, float dX, float dY, boolean isCurrentlyActive) {
        OnItemSwipeListener onItemSwipeListener;
        if (!this.isSwipeEnabled || (onItemSwipeListener = this.mOnItemSwipeListener) == null) {
            return;
        }
        onItemSwipeListener.onItemSwipeMoving(canvas, viewHolder, dX, dY, isCurrentlyActive);
    }

    private final boolean inRange(int position) {
        return position >= 0 && position < this.baseQuickAdapter.getData().size();
    }
}
