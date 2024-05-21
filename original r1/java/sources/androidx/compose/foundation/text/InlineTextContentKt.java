package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InlineTextContent.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"INLINE_CONTENT_TAG", "", "REPLACEMENT_CHAR", "appendInlineContent", "", "Landroidx/compose/ui/text/AnnotatedString$Builder;", "id", "alternateText", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InlineTextContentKt {
    public static final String INLINE_CONTENT_TAG = "androidx.compose.foundation.text.inlineContent";
    private static final String REPLACEMENT_CHAR = "�";

    public static /* synthetic */ void appendInlineContent$default(AnnotatedString.Builder builder, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = REPLACEMENT_CHAR;
        }
        appendInlineContent(builder, str, str2);
    }

    public static final void appendInlineContent(AnnotatedString.Builder builder, String id, String alternateText) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(alternateText, "alternateText");
        if (alternateText.length() <= 0) {
            throw new IllegalArgumentException("alternateText can't be an empty string.".toString());
        }
        builder.pushStringAnnotation(INLINE_CONTENT_TAG, id);
        builder.append(alternateText);
        builder.pop();
    }
}
