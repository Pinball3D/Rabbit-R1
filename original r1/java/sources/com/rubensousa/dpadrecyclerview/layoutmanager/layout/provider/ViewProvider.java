package com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutRequest;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;

/* compiled from: ViewProvider.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\n"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;", "", "hasNext", "", "layoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "next", "Landroid/view/View;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ViewProvider {
    boolean hasNext(LayoutRequest layoutRequest, RecyclerView.State state);

    View next(LayoutRequest layoutRequest, RecyclerView.State state);
}
