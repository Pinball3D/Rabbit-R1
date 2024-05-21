package com.chad.library.adapter.base.listener;

import android.graphics.Canvas;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public interface OnItemSwipeListener {
    void clearView(RecyclerView.ViewHolder viewHolder, int i);

    void onItemSwipeMoving(Canvas canvas, RecyclerView.ViewHolder viewHolder, float f, float f2, boolean z);

    void onItemSwipeStart(RecyclerView.ViewHolder viewHolder, int i);

    void onItemSwiped(RecyclerView.ViewHolder viewHolder, int i);
}
