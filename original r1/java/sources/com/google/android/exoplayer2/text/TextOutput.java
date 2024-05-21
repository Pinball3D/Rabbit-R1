package com.google.android.exoplayer2.text;

import java.util.List;

/* loaded from: classes2.dex */
public interface TextOutput {
    void onCues(CueGroup cueGroup);

    @Deprecated
    default void onCues(List<Cue> list) {
    }
}
