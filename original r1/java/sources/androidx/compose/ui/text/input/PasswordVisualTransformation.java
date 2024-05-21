package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.Typography;

/* compiled from: VisualTransformation.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/text/input/PasswordVisualTransformation;", "Landroidx/compose/ui/text/input/VisualTransformation;", "mask", "", "(C)V", "getMask", "()C", "equals", "", "other", "", "filter", "Landroidx/compose/ui/text/input/TransformedText;", "text", "Landroidx/compose/ui/text/AnnotatedString;", "hashCode", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PasswordVisualTransformation implements VisualTransformation {
    public static final int $stable = 0;
    private final char mask;

    public PasswordVisualTransformation() {
        this((char) 0, 1, null);
    }

    public final char getMask() {
        return this.mask;
    }

    public PasswordVisualTransformation(char c) {
        this.mask = c;
    }

    public /* synthetic */ PasswordVisualTransformation(char c, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Typography.bullet : c);
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public TransformedText filter(AnnotatedString text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new TransformedText(new AnnotatedString(StringsKt.repeat(String.valueOf(this.mask), text.getText().length()), null, null, 6, null), OffsetMapping.INSTANCE.getIdentity());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PasswordVisualTransformation) && this.mask == ((PasswordVisualTransformation) other).mask;
    }

    public int hashCode() {
        return Character.hashCode(this.mask);
    }
}
