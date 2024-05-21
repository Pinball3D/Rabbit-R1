package androidx.compose.ui.platform;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidUriHandler.android.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AndroidUriHandler;", "Landroidx/compose/ui/platform/UriHandler;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "openUri", "", "uri", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidUriHandler implements UriHandler {
    public static final int $stable = 8;
    private final Context context;

    public AndroidUriHandler(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // androidx.compose.ui.platform.UriHandler
    public void openUri(String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(uri)));
    }
}
