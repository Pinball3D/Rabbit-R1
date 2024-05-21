package tech.rabbit.r1launcher.platform_views;

import android.content.Context;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CameraPreviewView.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000b"}, d2 = {"Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;", "Lio/flutter/plugin/platform/PlatformViewFactory;", "()V", "create", "Lio/flutter/plugin/platform/PlatformView;", "context", "Landroid/content/Context;", "viewId", "", "args", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CameraPreviewViewFactory extends PlatformViewFactory {
    public static final int $stable = 0;
    public static final CameraPreviewViewFactory INSTANCE = new CameraPreviewViewFactory();

    private CameraPreviewViewFactory() {
        super(StandardMessageCodec.INSTANCE);
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    public PlatformView create(Context context, int viewId, Object args) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new CameraPreviewView(context, viewId, (Map) args);
    }
}
