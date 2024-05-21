package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontMatcher;
import androidx.compose.ui.text.font.FontSynthesis_androidKt;
import androidx.compose.ui.text.font.FontWeight;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidFontListTypeface.android.kt */
@Deprecated(message = "This is not supported after downloadable fonts.")
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB@\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\fø\u0001\u0000¢\u0006\u0002\u0010\rJ-\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0002\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u000b\u001a\u00020\f¢\u0006\n\n\u0002\b\u0013\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006 "}, d2 = {"Landroidx/compose/ui/text/platform/AndroidFontListTypeface;", "Landroidx/compose/ui/text/platform/AndroidTypeface;", "fontFamily", "Landroidx/compose/ui/text/font/FontListFontFamily;", "context", "Landroid/content/Context;", "necessaryStyles", "", "Lkotlin/Pair;", "Landroidx/compose/ui/text/font/FontWeight;", "Landroidx/compose/ui/text/font/FontStyle;", "fontMatcher", "Landroidx/compose/ui/text/font/FontMatcher;", "(Landroidx/compose/ui/text/font/FontListFontFamily;Landroid/content/Context;Ljava/util/List;Landroidx/compose/ui/text/font/FontMatcher;)V", "Landroidx/compose/ui/text/font/FontFamily;", "getFontFamily", "()Landroidx/compose/ui/text/font/FontFamily;", "getFontMatcher", "()Landroidx/compose/ui/text/font/FontMatcher;", "fontMatcher$1", "loadedTypefaces", "", "Landroidx/compose/ui/text/font/Font;", "Landroid/graphics/Typeface;", "getNativeTypeface", "fontWeight", "fontStyle", "synthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "getNativeTypeface-PYhJU0U", "(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidFontListTypeface implements AndroidTypeface {
    private static final Companion Companion = new Companion(null);
    private static final FontMatcher fontMatcher = new FontMatcher();
    private final FontFamily fontFamily;

    /* renamed from: fontMatcher$1, reason: from kotlin metadata */
    private final FontMatcher fontMatcher;
    private final Map<Font, Typeface> loadedTypefaces;

    @Override // androidx.compose.ui.text.font.Typeface
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    public final FontMatcher getFontMatcher() {
        return this.fontMatcher;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidFontListTypeface(androidx.compose.ui.text.font.FontListFontFamily r9, android.content.Context r10, java.util.List<kotlin.Pair<androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontStyle>> r11, androidx.compose.ui.text.font.FontMatcher r12) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.AndroidFontListTypeface.<init>(androidx.compose.ui.text.font.FontListFontFamily, android.content.Context, java.util.List, androidx.compose.ui.text.font.FontMatcher):void");
    }

    public /* synthetic */ AndroidFontListTypeface(FontListFontFamily fontListFontFamily, Context context, List list, FontMatcher fontMatcher2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fontListFontFamily, context, (i & 4) != 0 ? null : list, (i & 8) != 0 ? fontMatcher : fontMatcher2);
    }

    /* compiled from: AndroidFontListTypeface.android.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidFontListTypeface$Companion;", "", "()V", "fontMatcher", "Landroidx/compose/ui/text/font/FontMatcher;", "getFontMatcher", "()Landroidx/compose/ui/text/font/FontMatcher;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FontMatcher getFontMatcher() {
            return AndroidFontListTypeface.fontMatcher;
        }
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    /* renamed from: getNativeTypeface-PYhJU0U */
    public Typeface mo4636getNativeTypefacePYhJU0U(FontWeight fontWeight, int fontStyle, int synthesis) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        Font font = (Font) CollectionsKt.firstOrNull((List) this.fontMatcher.m4506matchFontRetOiIg(new ArrayList(this.loadedTypefaces.keySet()), fontWeight, fontStyle));
        if (font == null) {
            throw new IllegalStateException("Could not load font");
        }
        Typeface typeface = this.loadedTypefaces.get(font);
        if (typeface == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        Object m4529synthesizeTypefaceFxwP2eA = FontSynthesis_androidKt.m4529synthesizeTypefaceFxwP2eA(synthesis, typeface, font, fontWeight, fontStyle);
        Intrinsics.checkNotNull(m4529synthesizeTypefaceFxwP2eA, "null cannot be cast to non-null type android.graphics.Typeface");
        return (Typeface) m4529synthesizeTypefaceFxwP2eA;
    }
}
