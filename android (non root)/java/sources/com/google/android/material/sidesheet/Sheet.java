package com.google.android.material.sidesheet;

import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.sidesheet.SheetCallback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
interface Sheet<C extends SheetCallback> extends MaterialBackHandler {
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 0;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface SheetEdge {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface SheetState {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface StableSheetState {
    }

    void addCallback(C c);

    int getState();

    void removeCallback(C c);

    void setState(int i);
}
