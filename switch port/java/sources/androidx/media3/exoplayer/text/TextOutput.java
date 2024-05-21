package androidx.media3.exoplayer.text;

import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import java.util.List;

/* loaded from: classes2.dex */
public interface TextOutput {
    void onCues(CueGroup cueGroup);

    @Deprecated
    default void onCues(List<Cue> list) {
    }
}
