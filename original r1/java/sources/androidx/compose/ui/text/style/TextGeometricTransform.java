package androidx.compose.ui.text.style;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextGeometricTransform.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u001a\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/style/TextGeometricTransform;", "", "scaleX", "", "skewX", "(FF)V", "getScaleX", "()F", "getSkewX", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextGeometricTransform {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final TextGeometricTransform None = new TextGeometricTransform(1.0f, 0.0f);
    private final float scaleX;
    private final float skewX;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextGeometricTransform() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.style.TextGeometricTransform.<init>():void");
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getSkewX() {
        return this.skewX;
    }

    public TextGeometricTransform(float f, float f2) {
        this.scaleX = f;
        this.skewX = f2;
    }

    public /* synthetic */ TextGeometricTransform(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f, (i & 2) != 0 ? 0.0f : f2);
    }

    /* compiled from: TextGeometricTransform.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;", "", "()V", "None", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "getNone$ui_text_release$annotations", "getNone$ui_text_release", "()Landroidx/compose/ui/text/style/TextGeometricTransform;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getNone$ui_text_release$annotations() {
        }

        private Companion() {
        }

        public final TextGeometricTransform getNone$ui_text_release() {
            return TextGeometricTransform.None;
        }
    }

    public static /* synthetic */ TextGeometricTransform copy$default(TextGeometricTransform textGeometricTransform, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = textGeometricTransform.scaleX;
        }
        if ((i & 2) != 0) {
            f2 = textGeometricTransform.skewX;
        }
        return textGeometricTransform.copy(f, f2);
    }

    public final TextGeometricTransform copy(float scaleX, float skewX) {
        return new TextGeometricTransform(scaleX, skewX);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextGeometricTransform)) {
            return false;
        }
        TextGeometricTransform textGeometricTransform = (TextGeometricTransform) other;
        return this.scaleX == textGeometricTransform.scaleX && this.skewX == textGeometricTransform.skewX;
    }

    public int hashCode() {
        return (Float.hashCode(this.scaleX) * 31) + Float.hashCode(this.skewX);
    }

    public String toString() {
        return "TextGeometricTransform(scaleX=" + this.scaleX + ", skewX=" + this.skewX + ')';
    }
}
