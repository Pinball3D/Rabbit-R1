package androidx.media3.common;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class SimpleBasePlayer$$ExternalSyntheticLambda21 implements ListenerSet.Event {
    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        ((Player.Listener) obj).onRenderedFirstFrame();
    }
}
