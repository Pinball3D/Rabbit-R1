package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.compose.ui.text.platform.extensions.TextPaintExtensions_androidKt;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidParagraphIntrinsics.android.kt */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\b0\u0007\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0014\u0010&\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010%R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b,\u0010)R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u000202X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0014\u00105\u001a\u000206X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108¨\u00069"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;", "Landroidx/compose/ui/text/ParagraphIntrinsics;", "text", "", "style", "Landroidx/compose/ui/text/TextStyle;", "spanStyles", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/SpanStyle;", "placeholders", "Landroidx/compose/ui/text/Placeholder;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "density", "Landroidx/compose/ui/unit/Density;", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V", "charSequence", "", "getCharSequence$ui_text_release", "()Ljava/lang/CharSequence;", "getDensity", "()Landroidx/compose/ui/unit/Density;", "emojiCompatProcessed", "", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/FontFamily$Resolver;", "hasStaleResolvedFonts", "getHasStaleResolvedFonts", "()Z", "layoutIntrinsics", "Landroidx/compose/ui/text/android/LayoutIntrinsics;", "getLayoutIntrinsics$ui_text_release", "()Landroidx/compose/ui/text/android/LayoutIntrinsics;", "maxIntrinsicWidth", "", "getMaxIntrinsicWidth", "()F", "minIntrinsicWidth", "getMinIntrinsicWidth", "getPlaceholders", "()Ljava/util/List;", "resolvedTypefaces", "Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;", "getSpanStyles", "getStyle", "()Landroidx/compose/ui/text/TextStyle;", "getText", "()Ljava/lang/String;", "textDirectionHeuristic", "", "getTextDirectionHeuristic$ui_text_release", "()I", "textPaint", "Landroidx/compose/ui/text/platform/AndroidTextPaint;", "getTextPaint$ui_text_release", "()Landroidx/compose/ui/text/platform/AndroidTextPaint;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {
    private final CharSequence charSequence;
    private final Density density;
    private final boolean emojiCompatProcessed;
    private final FontFamily.Resolver fontFamilyResolver;
    private final LayoutIntrinsics layoutIntrinsics;
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    private TypefaceDirtyTrackerLinkedList resolvedTypefaces;
    private final List<AnnotatedString.Range<SpanStyle>> spanStyles;
    private final TextStyle style;
    private final String text;
    private final int textDirectionHeuristic;
    private final AndroidTextPaint textPaint;

    /* renamed from: getCharSequence$ui_text_release, reason: from getter */
    public final CharSequence getCharSequence() {
        return this.charSequence;
    }

    public final Density getDensity() {
        return this.density;
    }

    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    /* renamed from: getLayoutIntrinsics$ui_text_release, reason: from getter */
    public final LayoutIntrinsics getLayoutIntrinsics() {
        return this.layoutIntrinsics;
    }

    public final List<AnnotatedString.Range<Placeholder>> getPlaceholders() {
        return this.placeholders;
    }

    public final List<AnnotatedString.Range<SpanStyle>> getSpanStyles() {
        return this.spanStyles;
    }

    public final TextStyle getStyle() {
        return this.style;
    }

    public final String getText() {
        return this.text;
    }

    /* renamed from: getTextDirectionHeuristic$ui_text_release, reason: from getter */
    public final int getTextDirectionHeuristic() {
        return this.textDirectionHeuristic;
    }

    /* renamed from: getTextPaint$ui_text_release, reason: from getter */
    public final AndroidTextPaint getTextPaint() {
        return this.textPaint;
    }

    public AndroidParagraphIntrinsics(String text, TextStyle style, List<AnnotatedString.Range<SpanStyle>> spanStyles, List<AnnotatedString.Range<Placeholder>> placeholders, FontFamily.Resolver fontFamilyResolver, Density density) {
        boolean hasEmojiCompat;
        AnnotatedString.Range<SpanStyle> range;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(density, "density");
        this.text = text;
        this.style = style;
        this.spanStyles = spanStyles;
        this.placeholders = placeholders;
        this.fontFamilyResolver = fontFamilyResolver;
        this.density = density;
        AndroidTextPaint androidTextPaint = new AndroidTextPaint(1, density.getDensity());
        this.textPaint = androidTextPaint;
        hasEmojiCompat = AndroidParagraphIntrinsics_androidKt.getHasEmojiCompat(style);
        this.emojiCompatProcessed = !hasEmojiCompat ? false : EmojiCompatStatus.INSTANCE.getFontLoaded().getValue().booleanValue();
        this.textDirectionHeuristic = AndroidParagraphIntrinsics_androidKt.m4642resolveTextDirectionHeuristics9GRLPo0(style.m4444getTextDirectionmmuk1to(), style.getLocaleList());
        Function4<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface> function4 = new Function4<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface>() { // from class: androidx.compose.ui.text.platform.AndroidParagraphIntrinsics$resolveTypeface$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Typeface invoke(FontFamily fontFamily, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis) {
                return m4641invokeDPcqOEQ(fontFamily, fontWeight, fontStyle.m4513unboximpl(), fontSynthesis.getValue());
            }

            /* renamed from: invoke-DPcqOEQ, reason: not valid java name */
            public final Typeface m4641invokeDPcqOEQ(FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
                TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList;
                Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
                State<Object> mo4485resolveDPcqOEQ = AndroidParagraphIntrinsics.this.getFontFamilyResolver().mo4485resolveDPcqOEQ(fontFamily, fontWeight, i, i2);
                if (!(mo4485resolveDPcqOEQ instanceof TypefaceResult.Immutable)) {
                    typefaceDirtyTrackerLinkedList = AndroidParagraphIntrinsics.this.resolvedTypefaces;
                    TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList2 = new TypefaceDirtyTrackerLinkedList(mo4485resolveDPcqOEQ, typefaceDirtyTrackerLinkedList);
                    AndroidParagraphIntrinsics.this.resolvedTypefaces = typefaceDirtyTrackerLinkedList2;
                    return typefaceDirtyTrackerLinkedList2.getTypeface();
                }
                Object value = mo4485resolveDPcqOEQ.getValue();
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type android.graphics.Typeface");
                return (Typeface) value;
            }
        };
        TextPaintExtensions_androidKt.setTextMotion(androidTextPaint, style.getTextMotion());
        SpanStyle applySpanStyle = TextPaintExtensions_androidKt.applySpanStyle(androidTextPaint, style.toSpanStyle(), function4, density, !spanStyles.isEmpty());
        if (applySpanStyle != null) {
            int size = spanStyles.size() + 1;
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                if (i == 0) {
                    range = new AnnotatedString.Range<>(applySpanStyle, 0, this.text.length());
                } else {
                    range = this.spanStyles.get(i - 1);
                }
                arrayList.add(range);
            }
            spanStyles = arrayList;
        }
        CharSequence createCharSequence = AndroidParagraphHelper_androidKt.createCharSequence(this.text, this.textPaint.getTextSize(), this.style, spanStyles, this.placeholders, this.density, function4, this.emojiCompatProcessed);
        this.charSequence = createCharSequence;
        this.layoutIntrinsics = new LayoutIntrinsics(createCharSequence, this.textPaint, this.textDirectionHeuristic);
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMaxIntrinsicWidth() {
        return this.layoutIntrinsics.getMaxIntrinsicWidth();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMinIntrinsicWidth() {
        return this.layoutIntrinsics.getMinIntrinsicWidth();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public boolean getHasStaleResolvedFonts() {
        boolean hasEmojiCompat;
        TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList = this.resolvedTypefaces;
        if (typefaceDirtyTrackerLinkedList == null || !typefaceDirtyTrackerLinkedList.isStaleResolvedFont()) {
            if (!this.emojiCompatProcessed) {
                hasEmojiCompat = AndroidParagraphIntrinsics_androidKt.getHasEmojiCompat(this.style);
                if (!hasEmojiCompat || !EmojiCompatStatus.INSTANCE.getFontLoaded().getValue().booleanValue()) {
                }
            }
            return false;
        }
        return true;
    }
}
