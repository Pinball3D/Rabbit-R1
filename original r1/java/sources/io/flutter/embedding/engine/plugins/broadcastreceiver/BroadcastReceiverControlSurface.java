package io.flutter.embedding.engine.plugins.broadcastreceiver;

import android.content.BroadcastReceiver;
import androidx.lifecycle.Lifecycle;

/* loaded from: classes3.dex */
public interface BroadcastReceiverControlSurface {
    void attachToBroadcastReceiver(BroadcastReceiver broadcastReceiver, Lifecycle lifecycle);

    void detachFromBroadcastReceiver();
}
