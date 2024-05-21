package io.flutter.plugin.platform;

import android.content.Context;
import io.flutter.plugin.common.MessageCodec;

/* loaded from: classes3.dex */
public abstract class PlatformViewFactory {
    private final MessageCodec<Object> createArgsCodec;

    public abstract PlatformView create(Context context, int i, Object obj);

    public final MessageCodec<Object> getCreateArgsCodec() {
        return this.createArgsCodec;
    }

    public PlatformViewFactory(MessageCodec<Object> messageCodec) {
        this.createArgsCodec = messageCodec;
    }
}
