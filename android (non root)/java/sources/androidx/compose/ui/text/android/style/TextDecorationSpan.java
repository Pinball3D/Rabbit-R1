package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextDecorationSpan.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/text/android/style/TextDecorationSpan;", "Landroid/text/style/CharacterStyle;", "isUnderlineText", "", "isStrikethroughText", "(ZZ)V", "()Z", "updateDrawState", "", "textPaint", "Landroid/text/TextPaint;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextDecorationSpan extends CharacterStyle {
    private final boolean isStrikethroughText;
    private final boolean isUnderlineText;

    /* renamed from: isStrikethroughText, reason: from getter */
    public final boolean getIsStrikethroughText() {
        return this.isStrikethroughText;
    }

    /* renamed from: isUnderlineText, reason: from getter */
    public final boolean getIsUnderlineText() {
        return this.isUnderlineText;
    }

    public TextDecorationSpan(boolean z, boolean z2) {
        this.isUnderlineText = z;
        this.isStrikethroughText = z2;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        textPaint.setUnderlineText(this.isUnderlineText);
        textPaint.setStrikeThruText(this.isStrikethroughText);
    }
}
