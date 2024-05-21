package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SolidColor;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextForegroundStyle.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0016J\u0016\u0010\u0010\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000bX¦\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\f\u0010\rø\u0001\u0003\u0082\u0002\u0015\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/style/TextForegroundStyle;", "", ViewHierarchyNode.JsonKeys.ALPHA, "", "getAlpha", "()F", "brush", "Landroidx/compose/ui/graphics/Brush;", "getBrush", "()Landroidx/compose/ui/graphics/Brush;", "color", "Landroidx/compose/ui/graphics/Color;", "getColor-0d7_KjU", "()J", "merge", "other", "takeOrElse", "Lkotlin/Function0;", "Companion", "Unspecified", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface TextForegroundStyle {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    float getAlpha();

    Brush getBrush();

    /* renamed from: getColor-0d7_KjU */
    long mo4684getColor0d7_KjU();

    default TextForegroundStyle merge(TextForegroundStyle other) {
        float takeOrElse;
        Intrinsics.checkNotNullParameter(other, "other");
        boolean z = other instanceof BrushStyle;
        if (!z || !(this instanceof BrushStyle)) {
            return (!z || (this instanceof BrushStyle)) ? (z || !(this instanceof BrushStyle)) ? other.takeOrElse(new Function0<TextForegroundStyle>() { // from class: androidx.compose.ui.text.style.TextForegroundStyle$merge$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final TextForegroundStyle invoke() {
                    return TextForegroundStyle.this;
                }
            }) : this : other;
        }
        ShaderBrush value = ((BrushStyle) other).getValue();
        takeOrElse = TextDrawStyleKt.takeOrElse(other.getAlpha(), new Function0<Float>() { // from class: androidx.compose.ui.text.style.TextForegroundStyle$merge$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(TextForegroundStyle.this.getAlpha());
            }
        });
        return new BrushStyle(value, takeOrElse);
    }

    default TextForegroundStyle takeOrElse(Function0<? extends TextForegroundStyle> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return !Intrinsics.areEqual(this, Unspecified.INSTANCE) ? this : other.invoke();
    }

    /* compiled from: TextForegroundStyle.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u00020\f8VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;", "Landroidx/compose/ui/text/style/TextForegroundStyle;", "()V", ViewHierarchyNode.JsonKeys.ALPHA, "", "getAlpha", "()F", "brush", "Landroidx/compose/ui/graphics/Brush;", "getBrush", "()Landroidx/compose/ui/graphics/Brush;", "color", "Landroidx/compose/ui/graphics/Color;", "getColor-0d7_KjU", "()J", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Unspecified implements TextForegroundStyle {
        public static final int $stable = 0;
        public static final Unspecified INSTANCE = new Unspecified();

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public float getAlpha() {
            return Float.NaN;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public Brush getBrush() {
            return null;
        }

        private Unspecified() {
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        /* renamed from: getColor-0d7_KjU */
        public long mo4684getColor0d7_KjU() {
            return Color.INSTANCE.m2675getUnspecified0d7_KjU();
        }
    }

    /* compiled from: TextForegroundStyle.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001b\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;", "", "()V", "from", "Landroidx/compose/ui/text/style/TextForegroundStyle;", "brush", "Landroidx/compose/ui/graphics/Brush;", ViewHierarchyNode.JsonKeys.ALPHA, "", "color", "Landroidx/compose/ui/graphics/Color;", "from-8_81llA", "(J)Landroidx/compose/ui/text/style/TextForegroundStyle;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final TextForegroundStyle from(Brush brush, float alpha) {
            if (brush == null) {
                return Unspecified.INSTANCE;
            }
            if (brush instanceof SolidColor) {
                return m4796from8_81llA(TextDrawStyleKt.m4795modulateDxMtmZc(((SolidColor) brush).getValue(), alpha));
            }
            if (brush instanceof ShaderBrush) {
                return new BrushStyle((ShaderBrush) brush, alpha);
            }
            throw new NoWhenBranchMatchedException();
        }

        /* renamed from: from-8_81llA, reason: not valid java name */
        public final TextForegroundStyle m4796from8_81llA(long color) {
            return color != Color.INSTANCE.m2675getUnspecified0d7_KjU() ? new ColorStyle(color, null) : Unspecified.INSTANCE;
        }
    }
}
