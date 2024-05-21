package com.google.android.exoplayer2.ui;

import android.view.ViewGroup;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* loaded from: classes2.dex */
public interface AdViewProvider {
    ViewGroup getAdViewGroup();

    default List<AdOverlayInfo> getAdOverlayInfos() {
        return ImmutableList.of();
    }
}
