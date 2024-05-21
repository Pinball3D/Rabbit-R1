package com.chad.library.adapter.base.listener;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public interface OnItemDragListener {
    void onItemDragEnd(RecyclerView.ViewHolder viewHolder, int i);

    void onItemDragMoving(RecyclerView.ViewHolder viewHolder, int i, RecyclerView.ViewHolder viewHolder2, int i2);

    void onItemDragStart(RecyclerView.ViewHolder viewHolder, int i);
}
