package androidx.compose.ui.platform;

import android.content.ClipData;
import android.content.ClipDescription;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidClipboardManager.android.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/platform/AndroidClipboardManager;", "Landroidx/compose/ui/platform/ClipboardManager;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "clipboardManager", "Landroid/content/ClipboardManager;", "(Landroid/content/ClipboardManager;)V", "getText", "Landroidx/compose/ui/text/AnnotatedString;", "hasText", "", "setText", "", "annotatedString", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidClipboardManager implements ClipboardManager {
    private final android.content.ClipboardManager clipboardManager;

    public AndroidClipboardManager(android.content.ClipboardManager clipboardManager) {
        Intrinsics.checkNotNullParameter(clipboardManager, "clipboardManager");
        this.clipboardManager = clipboardManager;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidClipboardManager(android.content.Context r2) {
        /*
            r1 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "clipboard"
            java.lang.Object r2 = r2.getSystemService(r0)
            java.lang.String r0 = "null cannot be cast to non-null type android.content.ClipboardManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r0)
            android.content.ClipboardManager r2 = (android.content.ClipboardManager) r2
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidClipboardManager.<init>(android.content.Context):void");
    }

    @Override // androidx.compose.ui.platform.ClipboardManager
    public void setText(AnnotatedString annotatedString) {
        Intrinsics.checkNotNullParameter(annotatedString, "annotatedString");
        this.clipboardManager.setPrimaryClip(ClipData.newPlainText("plain text", AndroidClipboardManager_androidKt.convertToCharSequence(annotatedString)));
    }

    @Override // androidx.compose.ui.platform.ClipboardManager
    public AnnotatedString getText() {
        ClipData primaryClip = this.clipboardManager.getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        ClipData.Item itemAt = primaryClip.getItemAt(0);
        return AndroidClipboardManager_androidKt.convertToAnnotatedString(itemAt != null ? itemAt.getText() : null);
    }

    @Override // androidx.compose.ui.platform.ClipboardManager
    public boolean hasText() {
        ClipDescription primaryClipDescription = this.clipboardManager.getPrimaryClipDescription();
        if (primaryClipDescription != null) {
            return primaryClipDescription.hasMimeType("text/*");
        }
        return false;
    }
}
