package androidx.compose.ui.text;

import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.selection.WordBoundary;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: AndroidParagraph.android.kt */
@Metadata(d1 = {"\u0000ú\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001Bj\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\b0\u0007\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015ø\u0001\u0000¢\u0006\u0002\u0010\u0016B(\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011ø\u0001\u0000¢\u0006\u0002\u0010\u0019JJ\u0010Q\u001a\u0002002\u0006\u0010R\u001a\u00020\r2\u0006\u0010S\u001a\u00020\r2\b\u0010T\u001a\u0004\u0018\u00010U2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010V\u001a\u00020\r2\u0006\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\rH\u0002J+\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020\rø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\ba\u0010bJ\u0010\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020\rH\u0016J\u0010\u0010f\u001a\u00020<2\u0006\u0010e\u001a\u00020\rH\u0016J\u0010\u0010g\u001a\u00020<2\u0006\u0010e\u001a\u00020\rH\u0016J\u0018\u0010h\u001a\u00020(2\u0006\u0010e\u001a\u00020\r2\u0006\u0010i\u001a\u00020\u000fH\u0016J\u0015\u0010j\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0000¢\u0006\u0002\blJ\u0015\u0010m\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0000¢\u0006\u0002\bnJ\u0010\u0010o\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0016J\u0015\u0010p\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0000¢\u0006\u0002\bqJ\u0018\u0010r\u001a\u00020\r2\u0006\u0010k\u001a\u00020\r2\u0006\u0010s\u001a\u00020\u000fH\u0016J\u0010\u0010t\u001a\u00020\r2\u0006\u0010e\u001a\u00020\rH\u0016J\u0010\u0010u\u001a\u00020\r2\u0006\u0010v\u001a\u00020(H\u0016J\u0010\u0010w\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0016J\u0010\u0010x\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0016J\u0010\u0010y\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0016J\u0010\u0010z\u001a\u00020\r2\u0006\u0010k\u001a\u00020\rH\u0016J\u0010\u0010{\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0016J\u0010\u0010|\u001a\u00020(2\u0006\u0010k\u001a\u00020\rH\u0016J\u001f\u0010}\u001a\u00020\r2\u0006\u0010~\u001a\u00020\u007fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u0011\u0010\u0082\u0001\u001a\u00020d2\u0006\u0010e\u001a\u00020\rH\u0016J\u001c\u0010\u0083\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u0085\u0001\u001a\u00020\r2\u0007\u0010\u0086\u0001\u001a\u00020\rH\u0016J\"\u0010M\u001a\u00020]2\u0006\u0010e\u001a\u00020\rH\u0016ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u00020\u000f2\u0006\u0010k\u001a\u00020\rH\u0016J\u0013\u0010\u008a\u0001\u001a\u00020[2\b\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002Jc\u0010\u008a\u0001\u001a\u00020[2\b\u0010\u008b\u0001\u001a\u00030\u008c\u00012\b\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0007\u0010\u008f\u0001\u001a\u00020(2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012\b\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001JD\u0010\u008a\u0001\u001a\u00020[2\b\u0010\u008b\u0001\u001a\u00030\u008c\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001JZ\u0010\u008a\u0001\u001a\u00020[2\b\u0010\u008b\u0001\u001a\u00030\u008c\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012\b\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001J\u001b\u0010 \u0001\u001a\n\u0012\u0005\u0012\u00030¢\u00010¡\u0001*\u000200H\u0002¢\u0006\u0003\u0010£\u0001R\u001c\u0010\u001a\u001a\u00020\u001b8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010\u0010\u001a\u00020\u0011ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0014\u0010'\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R\u0014\u0010-\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010*R\u000e\u0010/\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00101\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u0014\u00104\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010*R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b6\u00103R\u0014\u00107\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u0010*R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u001c\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u001a\u0010?\u001a\u00020@8@X\u0081\u0004¢\u0006\f\u0012\u0004\bA\u0010\u001d\u001a\u0004\bB\u0010CR\u001a\u0010D\u001a\u00020E8@X\u0081\u0004¢\u0006\f\u0012\u0004\bF\u0010\u001d\u001a\u0004\bG\u0010HR\u0014\u0010I\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010*R\u001b\u0010K\u001a\u00020L8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bM\u0010N\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006¤\u0001"}, d2 = {"Landroidx/compose/ui/text/AndroidParagraph;", "Landroidx/compose/ui/text/Paragraph;", "text", "", "style", "Landroidx/compose/ui/text/TextStyle;", "spanStyles", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/SpanStyle;", "placeholders", "Landroidx/compose/ui/text/Placeholder;", "maxLines", "", "ellipsis", "", "constraints", "Landroidx/compose/ui/unit/Constraints;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "density", "Landroidx/compose/ui/unit/Density;", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "paragraphIntrinsics", "Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;", "(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "charSequence", "", "getCharSequence$ui_text_release$annotations", "()V", "getCharSequence$ui_text_release", "()Ljava/lang/CharSequence;", "getConstraints-msEJaDk", "()J", "J", "didExceedMaxLines", "getDidExceedMaxLines", "()Z", "getEllipsis", "firstBaseline", "", "getFirstBaseline", "()F", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "lastBaseline", "getLastBaseline", "layout", "Landroidx/compose/ui/text/android/TextLayout;", "lineCount", "getLineCount", "()I", "maxIntrinsicWidth", "getMaxIntrinsicWidth", "getMaxLines", "minIntrinsicWidth", "getMinIntrinsicWidth", "getParagraphIntrinsics", "()Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;", "placeholderRects", "Landroidx/compose/ui/geometry/Rect;", "getPlaceholderRects", "()Ljava/util/List;", "textLocale", "Ljava/util/Locale;", "getTextLocale$ui_text_release$annotations", "getTextLocale$ui_text_release", "()Ljava/util/Locale;", "textPaint", "Landroidx/compose/ui/text/platform/AndroidTextPaint;", "getTextPaint$ui_text_release$annotations", "getTextPaint$ui_text_release", "()Landroidx/compose/ui/text/platform/AndroidTextPaint;", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth", "wordBoundary", "Landroidx/compose/ui/text/android/selection/WordBoundary;", "getWordBoundary", "()Landroidx/compose/ui/text/android/selection/WordBoundary;", "wordBoundary$delegate", "Lkotlin/Lazy;", "constructTextLayout", "alignment", "justificationMode", "ellipsize", "Landroid/text/TextUtils$TruncateAt;", "hyphens", "breakStrategy", "lineBreakStyle", "lineBreakWordStyle", "fillBoundingBoxes", "", "range", "Landroidx/compose/ui/text/TextRange;", "array", "", "arrayStart", "fillBoundingBoxes-8ffj60Q", "(J[FI)V", "getBidiRunDirection", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", "offset", "getBoundingBox", "getCursorRect", "getHorizontalPosition", "usePrimaryDirection", "getLineAscent", "lineIndex", "getLineAscent$ui_text_release", "getLineBaseline", "getLineBaseline$ui_text_release", "getLineBottom", "getLineDescent", "getLineDescent$ui_text_release", "getLineEnd", "visibleEnd", "getLineForOffset", "getLineForVerticalPosition", "vertical", "getLineHeight", "getLineLeft", "getLineRight", "getLineStart", "getLineTop", "getLineWidth", "getOffsetForPosition", "position", "Landroidx/compose/ui/geometry/Offset;", "getOffsetForPosition-k-4lQ0M", "(J)I", "getParagraphDirection", "getPathForRange", "Landroidx/compose/ui/graphics/Path;", "start", "end", "getWordBoundary--jx7JFs", "(I)J", "isLineEllipsized", "paint", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "brush", "Landroidx/compose/ui/graphics/Brush;", ViewHierarchyNode.JsonKeys.ALPHA, "shadow", "Landroidx/compose/ui/graphics/Shadow;", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "drawStyle", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "paint-hn5TExg", "(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "color", "Landroidx/compose/ui/graphics/Color;", "paint-RPmYEkk", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V", "paint-LG529CI", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "getShaderBrushSpans", "", "Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;", "(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidParagraph implements Paragraph {
    private final CharSequence charSequence;
    private final long constraints;
    private final boolean ellipsis;
    private final TextLayout layout;
    private final int maxLines;
    private final AndroidParagraphIntrinsics paragraphIntrinsics;
    private final List<Rect> placeholderRects;

    /* renamed from: wordBoundary$delegate, reason: from kotlin metadata */
    private final Lazy wordBoundary;

    /* compiled from: AndroidParagraph.android.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ResolvedTextDirection.values().length];
            try {
                iArr[ResolvedTextDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ResolvedTextDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ AndroidParagraph(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i, boolean z, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(androidParagraphIntrinsics, i, z, j);
    }

    public /* synthetic */ AndroidParagraph(String str, TextStyle textStyle, List list, List list2, int i, boolean z, long j, FontFamily.Resolver resolver, Density density, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, textStyle, list, list2, i, z, j, resolver, density);
    }

    public static /* synthetic */ void getCharSequence$ui_text_release$annotations() {
    }

    public static /* synthetic */ void getTextLocale$ui_text_release$annotations() {
    }

    public static /* synthetic */ void getTextPaint$ui_text_release$annotations() {
    }

    /* renamed from: getCharSequence$ui_text_release, reason: from getter */
    public final CharSequence getCharSequence() {
        return this.charSequence;
    }

    /* renamed from: getConstraints-msEJaDk, reason: not valid java name and from getter */
    public final long getConstraints() {
        return this.constraints;
    }

    public final boolean getEllipsis() {
        return this.ellipsis;
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    public final AndroidParagraphIntrinsics getParagraphIntrinsics() {
        return this.paragraphIntrinsics;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public List<Rect> getPlaceholderRects() {
        return this.placeholderRects;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:66:0x01e8. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    private AndroidParagraph(AndroidParagraphIntrinsics paragraphIntrinsics, int i, boolean z, long j) {
        CharSequence charSequence;
        ArrayList arrayList;
        Rect rect;
        float horizontalPosition;
        float lineBaseline;
        int heightPx;
        float lineTop;
        float f;
        float lineBaseline2;
        Intrinsics.checkNotNullParameter(paragraphIntrinsics, "paragraphIntrinsics");
        this.paragraphIntrinsics = paragraphIntrinsics;
        this.maxLines = i;
        this.ellipsis = z;
        this.constraints = j;
        if (Constraints.m4840getMinHeightimpl(j) != 0 || Constraints.m4841getMinWidthimpl(j) != 0) {
            throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.".toString());
        }
        if (i < 1) {
            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
        }
        TextStyle style = paragraphIntrinsics.getStyle();
        if (AndroidParagraph_androidKt.access$shouldAttachIndentationFixSpan(style, z)) {
            charSequence = AndroidParagraph_androidKt.access$attachIndentationFixSpan(paragraphIntrinsics.getCharSequence());
        } else {
            charSequence = paragraphIntrinsics.getCharSequence();
        }
        this.charSequence = charSequence;
        int m4279access$toLayoutAlignAMY3VfE = AndroidParagraph_androidKt.m4279access$toLayoutAlignAMY3VfE(style.m4443getTextAlignbuA522U());
        TextAlign m4443getTextAlignbuA522U = style.m4443getTextAlignbuA522U();
        int i2 = m4443getTextAlignbuA522U == null ? 0 : TextAlign.m4773equalsimpl0(m4443getTextAlignbuA522U.getValue(), TextAlign.INSTANCE.m4779getJustifye0LSkKk()) ? 1 : 0;
        int m4281access$toLayoutHyphenationFrequency0_XeFpE = AndroidParagraph_androidKt.m4281access$toLayoutHyphenationFrequency0_XeFpE(style.getParagraphStyle().getHyphens());
        LineBreak m4441getLineBreakLgCVezo = style.m4441getLineBreakLgCVezo();
        int m4280access$toLayoutBreakStrategyu6PBz3U = AndroidParagraph_androidKt.m4280access$toLayoutBreakStrategyu6PBz3U(m4441getLineBreakLgCVezo != null ? LineBreak.Strategy.m4714boximpl(LineBreak.m4705getStrategyfcGXIks(m4441getLineBreakLgCVezo.getMask())) : null);
        LineBreak m4441getLineBreakLgCVezo2 = style.m4441getLineBreakLgCVezo();
        int m4282access$toLayoutLineBreakStyle4a2g8L8 = AndroidParagraph_androidKt.m4282access$toLayoutLineBreakStyle4a2g8L8(m4441getLineBreakLgCVezo2 != null ? LineBreak.Strictness.m4724boximpl(LineBreak.m4706getStrictnessusljTpc(m4441getLineBreakLgCVezo2.getMask())) : null);
        LineBreak m4441getLineBreakLgCVezo3 = style.m4441getLineBreakLgCVezo();
        int m4283access$toLayoutLineBreakWordStylegvcdTPQ = AndroidParagraph_androidKt.m4283access$toLayoutLineBreakWordStylegvcdTPQ(m4441getLineBreakLgCVezo3 != null ? LineBreak.WordBreak.m4735boximpl(LineBreak.m4707getWordBreakjp8hJ3c(m4441getLineBreakLgCVezo3.getMask())) : null);
        TextUtils.TruncateAt truncateAt = z ? TextUtils.TruncateAt.END : null;
        TextLayout constructTextLayout = constructTextLayout(m4279access$toLayoutAlignAMY3VfE, i2, truncateAt, i, m4281access$toLayoutHyphenationFrequency0_XeFpE, m4280access$toLayoutBreakStrategyu6PBz3U, m4282access$toLayoutLineBreakStyle4a2g8L8, m4283access$toLayoutLineBreakWordStylegvcdTPQ);
        if (!z || constructTextLayout.getHeight() <= Constraints.m4838getMaxHeightimpl(j) || i <= 1) {
            this.layout = constructTextLayout;
        } else {
            int access$numberOfLinesThatFitMaxHeight = AndroidParagraph_androidKt.access$numberOfLinesThatFitMaxHeight(constructTextLayout, Constraints.m4838getMaxHeightimpl(j));
            if (access$numberOfLinesThatFitMaxHeight >= 0 && access$numberOfLinesThatFitMaxHeight != i) {
                constructTextLayout = constructTextLayout(m4279access$toLayoutAlignAMY3VfE, i2, truncateAt, RangesKt.coerceAtLeast(access$numberOfLinesThatFitMaxHeight, 1), m4281access$toLayoutHyphenationFrequency0_XeFpE, m4280access$toLayoutBreakStrategyu6PBz3U, m4282access$toLayoutLineBreakStyle4a2g8L8, m4283access$toLayoutLineBreakWordStylegvcdTPQ);
            }
            this.layout = constructTextLayout;
        }
        getTextPaint$ui_text_release().m4650setBrush12SF9DM(style.getBrush(), SizeKt.Size(getWidth(), getHeight()), style.getAlpha());
        for (ShaderBrushSpan shaderBrushSpan : getShaderBrushSpans(this.layout)) {
            shaderBrushSpan.m4669setSizeuvyYCjk(SizeKt.Size(getWidth(), getHeight()));
        }
        CharSequence charSequence2 = this.charSequence;
        if (charSequence2 instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence2;
            Object[] spans = spanned.getSpans(0, charSequence2.length(), PlaceholderSpan.class);
            Intrinsics.checkNotNullExpressionValue(spans, "getSpans(0, length, PlaceholderSpan::class.java)");
            ArrayList arrayList2 = new ArrayList(spans.length);
            for (Object obj : spans) {
                PlaceholderSpan placeholderSpan = (PlaceholderSpan) obj;
                int spanStart = spanned.getSpanStart(placeholderSpan);
                int spanEnd = spanned.getSpanEnd(placeholderSpan);
                int lineForOffset = this.layout.getLineForOffset(spanStart);
                Object[] objArr = lineForOffset >= this.maxLines;
                Object[] objArr2 = this.layout.getLineEllipsisCount(lineForOffset) > 0 && spanEnd > this.layout.getLineEllipsisOffset(lineForOffset);
                Object[] objArr3 = spanEnd > this.layout.getLineEnd(lineForOffset);
                if (objArr2 == true || objArr3 == true || objArr == true) {
                    rect = null;
                } else {
                    int i3 = WhenMappings.$EnumSwitchMapping$0[getBidiRunDirection(spanStart).ordinal()];
                    if (i3 == 1) {
                        horizontalPosition = getHorizontalPosition(spanStart, true);
                    } else {
                        if (i3 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        horizontalPosition = getHorizontalPosition(spanStart, true) - placeholderSpan.getWidthPx();
                    }
                    float widthPx = placeholderSpan.getWidthPx() + horizontalPosition;
                    TextLayout textLayout = this.layout;
                    switch (placeholderSpan.getVerticalAlign()) {
                        case 0:
                            lineBaseline = textLayout.getLineBaseline(lineForOffset);
                            heightPx = placeholderSpan.getHeightPx();
                            lineTop = lineBaseline - heightPx;
                            rect = new Rect(horizontalPosition, lineTop, widthPx, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 1:
                            lineTop = textLayout.getLineTop(lineForOffset);
                            rect = new Rect(horizontalPosition, lineTop, widthPx, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 2:
                            lineBaseline = textLayout.getLineBottom(lineForOffset);
                            heightPx = placeholderSpan.getHeightPx();
                            lineTop = lineBaseline - heightPx;
                            rect = new Rect(horizontalPosition, lineTop, widthPx, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 3:
                            lineTop = ((textLayout.getLineTop(lineForOffset) + textLayout.getLineBottom(lineForOffset)) - placeholderSpan.getHeightPx()) / 2;
                            rect = new Rect(horizontalPosition, lineTop, widthPx, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 4:
                            f = placeholderSpan.getFontMetrics().ascent;
                            lineBaseline2 = textLayout.getLineBaseline(lineForOffset);
                            lineTop = f + lineBaseline2;
                            rect = new Rect(horizontalPosition, lineTop, widthPx, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 5:
                            lineTop = (placeholderSpan.getFontMetrics().descent + textLayout.getLineBaseline(lineForOffset)) - placeholderSpan.getHeightPx();
                            rect = new Rect(horizontalPosition, lineTop, widthPx, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 6:
                            Paint.FontMetricsInt fontMetrics = placeholderSpan.getFontMetrics();
                            f = ((fontMetrics.ascent + fontMetrics.descent) - placeholderSpan.getHeightPx()) / 2;
                            lineBaseline2 = textLayout.getLineBaseline(lineForOffset);
                            lineTop = f + lineBaseline2;
                            rect = new Rect(horizontalPosition, lineTop, widthPx, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        default:
                            throw new IllegalStateException("unexpected verticalAlignment");
                    }
                }
                arrayList2.add(rect);
            }
            arrayList = arrayList2;
        } else {
            arrayList = CollectionsKt.emptyList();
        }
        this.placeholderRects = arrayList;
        this.wordBoundary = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<WordBoundary>() { // from class: androidx.compose.ui.text.AndroidParagraph$wordBoundary$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WordBoundary invoke() {
                TextLayout textLayout2;
                Locale textLocale$ui_text_release = AndroidParagraph.this.getTextLocale$ui_text_release();
                textLayout2 = AndroidParagraph.this.layout;
                return new WordBoundary(textLocale$ui_text_release, textLayout2.getText());
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    private AndroidParagraph(String text, TextStyle style, List<AnnotatedString.Range<SpanStyle>> spanStyles, List<AnnotatedString.Range<Placeholder>> placeholders, int i, boolean z, long j, FontFamily.Resolver fontFamilyResolver, Density density) {
        this(new AndroidParagraphIntrinsics(text, style, spanStyles, placeholders, fontFamilyResolver, density), i, z, j, null);
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(density, "density");
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getWidth() {
        return Constraints.m4839getMaxWidthimpl(this.constraints);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getHeight() {
        return this.layout.getHeight();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getMaxIntrinsicWidth() {
        return this.paragraphIntrinsics.getMaxIntrinsicWidth();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getMinIntrinsicWidth() {
        return this.paragraphIntrinsics.getMinIntrinsicWidth();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getFirstBaseline() {
        return getLineBaseline$ui_text_release(0);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLastBaseline() {
        return getLineBaseline$ui_text_release(getLineCount() - 1);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public boolean getDidExceedMaxLines() {
        return this.layout.getDidExceedMaxLines();
    }

    public final Locale getTextLocale$ui_text_release() {
        Locale textLocale = this.paragraphIntrinsics.getTextPaint().getTextLocale();
        Intrinsics.checkNotNullExpressionValue(textLocale, "paragraphIntrinsics.textPaint.textLocale");
        return textLocale;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineCount() {
        return this.layout.getLineCount();
    }

    public final AndroidTextPaint getTextPaint$ui_text_release() {
        return this.paragraphIntrinsics.getTextPaint();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineForVerticalPosition(float vertical) {
        return this.layout.getLineForVertical((int) vertical);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* renamed from: getOffsetForPosition-k-4lQ0M, reason: not valid java name */
    public int mo4274getOffsetForPositionk4lQ0M(long position) {
        return this.layout.getOffsetForHorizontal(this.layout.getLineForVertical((int) Offset.m2401getYimpl(position)), Offset.m2400getXimpl(position));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public Rect getBoundingBox(int offset) {
        RectF boundingBox = this.layout.getBoundingBox(offset);
        return new Rect(boundingBox.left, boundingBox.top, boundingBox.right, boundingBox.bottom);
    }

    /* renamed from: fillBoundingBoxes-8ffj60Q, reason: not valid java name */
    public final void m4272fillBoundingBoxes8ffj60Q(long range, float[] array, int arrayStart) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.layout.fillBoundingBoxes(TextRange.m4412getMinimpl(range), TextRange.m4411getMaximpl(range), array, arrayStart);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public Path getPathForRange(int start, int end) {
        if (start < 0 || start > end || end > this.charSequence.length()) {
            throw new AssertionError("Start(" + start + ") or End(" + end + ") is out of Range(0.." + this.charSequence.length() + "), or start > end!");
        }
        android.graphics.Path path = new android.graphics.Path();
        this.layout.getSelectionPath(start, end, path);
        return AndroidPath_androidKt.asComposePath(path);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public Rect getCursorRect(int offset) {
        if (offset < 0 || offset > this.charSequence.length()) {
            throw new AssertionError("offset(" + offset + ") is out of bounds (0," + this.charSequence.length());
        }
        float primaryHorizontal$default = TextLayout.getPrimaryHorizontal$default(this.layout, offset, false, 2, null);
        int lineForOffset = this.layout.getLineForOffset(offset);
        return new Rect(primaryHorizontal$default, this.layout.getLineTop(lineForOffset), primaryHorizontal$default, this.layout.getLineBottom(lineForOffset));
    }

    private final WordBoundary getWordBoundary() {
        return (WordBoundary) this.wordBoundary.getValue();
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* renamed from: getWordBoundary--jx7JFs, reason: not valid java name */
    public long mo4275getWordBoundaryjx7JFs(int offset) {
        return TextRangeKt.TextRange(getWordBoundary().getWordStart(offset), getWordBoundary().getWordEnd(offset));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineLeft(int lineIndex) {
        return this.layout.getLineLeft(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineRight(int lineIndex) {
        return this.layout.getLineRight(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineTop(int lineIndex) {
        return this.layout.getLineTop(lineIndex);
    }

    public final float getLineAscent$ui_text_release(int lineIndex) {
        return this.layout.getLineAscent(lineIndex);
    }

    public final float getLineBaseline$ui_text_release(int lineIndex) {
        return this.layout.getLineBaseline(lineIndex);
    }

    public final float getLineDescent$ui_text_release(int lineIndex) {
        return this.layout.getLineDescent(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineBottom(int lineIndex) {
        return this.layout.getLineBottom(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineHeight(int lineIndex) {
        return this.layout.getLineHeight(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineWidth(int lineIndex) {
        return this.layout.getLineWidth(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineStart(int lineIndex) {
        return this.layout.getLineStart(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineEnd(int lineIndex, boolean visibleEnd) {
        if (visibleEnd) {
            return this.layout.getLineVisibleEnd(lineIndex);
        }
        return this.layout.getLineEnd(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public boolean isLineEllipsized(int lineIndex) {
        return this.layout.isLineEllipsized(lineIndex);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineForOffset(int offset) {
        return this.layout.getLineForOffset(offset);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getHorizontalPosition(int offset, boolean usePrimaryDirection) {
        if (usePrimaryDirection) {
            return TextLayout.getPrimaryHorizontal$default(this.layout, offset, false, 2, null);
        }
        return TextLayout.getSecondaryHorizontal$default(this.layout, offset, false, 2, null);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public ResolvedTextDirection getParagraphDirection(int offset) {
        return this.layout.getParagraphDirection(this.layout.getLineForOffset(offset)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public ResolvedTextDirection getBidiRunDirection(int offset) {
        if (this.layout.isRtlCharAt(offset)) {
            return ResolvedTextDirection.Rtl;
        }
        return ResolvedTextDirection.Ltr;
    }

    private final ShaderBrushSpan[] getShaderBrushSpans(TextLayout textLayout) {
        if (!(textLayout.getText() instanceof Spanned)) {
            return new ShaderBrushSpan[0];
        }
        CharSequence text = textLayout.getText();
        Intrinsics.checkNotNull(text, "null cannot be cast to non-null type android.text.Spanned");
        ShaderBrushSpan[] brushSpans = (ShaderBrushSpan[]) ((Spanned) text).getSpans(0, textLayout.getText().length(), ShaderBrushSpan.class);
        Intrinsics.checkNotNullExpressionValue(brushSpans, "brushSpans");
        return brushSpans.length == 0 ? new ShaderBrushSpan[0] : brushSpans;
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* renamed from: paint-RPmYEkk, reason: not valid java name */
    public void mo4277paintRPmYEkk(Canvas canvas, long color, Shadow shadow, TextDecoration textDecoration) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        AndroidTextPaint textPaint$ui_text_release = getTextPaint$ui_text_release();
        textPaint$ui_text_release.m4651setColor8_81llA(color);
        textPaint$ui_text_release.setShadow(shadow);
        textPaint$ui_text_release.setTextDecoration(textDecoration);
        paint(canvas);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* renamed from: paint-LG529CI, reason: not valid java name */
    public void mo4276paintLG529CI(Canvas canvas, long color, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int blendMode) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int m4648getBlendMode0nO6VwU = getTextPaint$ui_text_release().m4648getBlendMode0nO6VwU();
        AndroidTextPaint textPaint$ui_text_release = getTextPaint$ui_text_release();
        textPaint$ui_text_release.m4651setColor8_81llA(color);
        textPaint$ui_text_release.setShadow(shadow);
        textPaint$ui_text_release.setTextDecoration(textDecoration);
        textPaint$ui_text_release.setDrawStyle(drawStyle);
        textPaint$ui_text_release.m4649setBlendModes9anfk8(blendMode);
        paint(canvas);
        getTextPaint$ui_text_release().m4649setBlendModes9anfk8(m4648getBlendMode0nO6VwU);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* renamed from: paint-hn5TExg, reason: not valid java name */
    public void mo4278painthn5TExg(Canvas canvas, Brush brush, float alpha, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int blendMode) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(brush, "brush");
        int m4648getBlendMode0nO6VwU = getTextPaint$ui_text_release().m4648getBlendMode0nO6VwU();
        AndroidTextPaint textPaint$ui_text_release = getTextPaint$ui_text_release();
        textPaint$ui_text_release.m4650setBrush12SF9DM(brush, SizeKt.Size(getWidth(), getHeight()), alpha);
        textPaint$ui_text_release.setShadow(shadow);
        textPaint$ui_text_release.setTextDecoration(textDecoration);
        textPaint$ui_text_release.setDrawStyle(drawStyle);
        textPaint$ui_text_release.m4649setBlendModes9anfk8(blendMode);
        paint(canvas);
        getTextPaint$ui_text_release().m4649setBlendModes9anfk8(m4648getBlendMode0nO6VwU);
    }

    private final void paint(Canvas canvas) {
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        if (getDidExceedMaxLines()) {
            nativeCanvas.save();
            nativeCanvas.clipRect(0.0f, 0.0f, getWidth(), getHeight());
        }
        this.layout.paint(nativeCanvas);
        if (getDidExceedMaxLines()) {
            nativeCanvas.restore();
        }
    }

    private final TextLayout constructTextLayout(int alignment, int justificationMode, TextUtils.TruncateAt ellipsize, int maxLines, int hyphens, int breakStrategy, int lineBreakStyle, int lineBreakWordStyle) {
        CharSequence charSequence = this.charSequence;
        float width = getWidth();
        AndroidTextPaint textPaint$ui_text_release = getTextPaint$ui_text_release();
        return new TextLayout(charSequence, width, textPaint$ui_text_release, alignment, ellipsize, this.paragraphIntrinsics.getTextDirectionHeuristic(), 1.0f, 0.0f, AndroidParagraphHelper_androidKt.isIncludeFontPaddingEnabled(this.paragraphIntrinsics.getStyle()), true, maxLines, breakStrategy, lineBreakStyle, lineBreakWordStyle, hyphens, justificationMode, null, null, this.paragraphIntrinsics.getLayoutIntrinsics(), 196736, null);
    }
}
