package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Metadata;

/* compiled from: Paragraph.android.kt */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000fH&J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u000fH&J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u000fH&J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0003H&J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000fH&J\u001a\u0010&\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u0003H&J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH&J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u0007H&J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000fH&J\u0010\u0010,\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000fH&J\u0010\u0010-\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000fH&J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000fH&J\u0010\u0010/\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000fH&J\u0010\u00100\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000fH&J\u001d\u00101\u001a\u00020\u000f2\u0006\u00102\u001a\u000203H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b4\u00105J\u0010\u00106\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000fH&J\u0018\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u000f2\u0006\u0010:\u001a\u00020\u000fH&J \u0010;\u001a\u00020<2\u0006\u0010\u001f\u001a\u00020\u000fH&ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b=\u0010>J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u000fH&J]\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\b\b\u0002\u0010F\u001a\u00020\u00072\n\b\u0002\u0010G\u001a\u0004\u0018\u00010H2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010L2\b\b\u0002\u0010M\u001a\u00020NH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bO\u0010PJ?\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\b\b\u0002\u0010Q\u001a\u00020R2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010H2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010JH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bS\u0010TJU\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\b\b\u0002\u0010Q\u001a\u00020R2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010H2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010L2\b\b\u0002\u0010M\u001a\u00020NH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bU\u0010VR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0012\u0010\f\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\tR\u0012\u0010\u000e\u001a\u00020\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\tR\u0012\u0010\u0014\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\tR\u001a\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\t\u0082\u0001\u0001Wø\u0001\u0003\u0082\u0002\u0015\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0002\b!\n\u0004\b!0\u0001¨\u0006XÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/Paragraph;", "", "didExceedMaxLines", "", "getDidExceedMaxLines", "()Z", "firstBaseline", "", "getFirstBaseline", "()F", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "lastBaseline", "getLastBaseline", "lineCount", "", "getLineCount", "()I", "maxIntrinsicWidth", "getMaxIntrinsicWidth", "minIntrinsicWidth", "getMinIntrinsicWidth", "placeholderRects", "", "Landroidx/compose/ui/geometry/Rect;", "getPlaceholderRects", "()Ljava/util/List;", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth", "getBidiRunDirection", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", "offset", "getBoundingBox", "getCursorRect", "getHorizontalPosition", "usePrimaryDirection", "getLineBottom", "lineIndex", "getLineEnd", "visibleEnd", "getLineForOffset", "getLineForVerticalPosition", "vertical", "getLineHeight", "getLineLeft", "getLineRight", "getLineStart", "getLineTop", "getLineWidth", "getOffsetForPosition", "position", "Landroidx/compose/ui/geometry/Offset;", "getOffsetForPosition-k-4lQ0M", "(J)I", "getParagraphDirection", "getPathForRange", "Landroidx/compose/ui/graphics/Path;", "start", "end", "getWordBoundary", "Landroidx/compose/ui/text/TextRange;", "getWordBoundary--jx7JFs", "(I)J", "isLineEllipsized", "paint", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "brush", "Landroidx/compose/ui/graphics/Brush;", ViewHierarchyNode.JsonKeys.ALPHA, "shadow", "Landroidx/compose/ui/graphics/Shadow;", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "drawStyle", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "paint-hn5TExg", "(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "color", "Landroidx/compose/ui/graphics/Color;", "paint-RPmYEkk", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V", "paint-LG529CI", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "Landroidx/compose/ui/text/AndroidParagraph;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Paragraph {
    ResolvedTextDirection getBidiRunDirection(int offset);

    Rect getBoundingBox(int offset);

    Rect getCursorRect(int offset);

    boolean getDidExceedMaxLines();

    float getFirstBaseline();

    float getHeight();

    float getHorizontalPosition(int offset, boolean usePrimaryDirection);

    float getLastBaseline();

    float getLineBottom(int lineIndex);

    int getLineCount();

    int getLineEnd(int lineIndex, boolean visibleEnd);

    int getLineForOffset(int offset);

    int getLineForVerticalPosition(float vertical);

    float getLineHeight(int lineIndex);

    float getLineLeft(int lineIndex);

    float getLineRight(int lineIndex);

    int getLineStart(int lineIndex);

    float getLineTop(int lineIndex);

    float getLineWidth(int lineIndex);

    float getMaxIntrinsicWidth();

    float getMinIntrinsicWidth();

    /* renamed from: getOffsetForPosition-k-4lQ0M */
    int mo4274getOffsetForPositionk4lQ0M(long position);

    ResolvedTextDirection getParagraphDirection(int offset);

    Path getPathForRange(int start, int end);

    List<Rect> getPlaceholderRects();

    float getWidth();

    /* renamed from: getWordBoundary--jx7JFs */
    long mo4275getWordBoundaryjx7JFs(int offset);

    boolean isLineEllipsized(int lineIndex);

    /* renamed from: paint-LG529CI */
    void mo4276paintLG529CI(Canvas canvas, long color, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int blendMode);

    /* renamed from: paint-RPmYEkk */
    void mo4277paintRPmYEkk(Canvas canvas, long color, Shadow shadow, TextDecoration textDecoration);

    /* renamed from: paint-hn5TExg */
    void mo4278painthn5TExg(Canvas canvas, Brush brush, float alpha, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int blendMode);

    static /* synthetic */ int getLineEnd$default(Paragraph paragraph, int i, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLineEnd");
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        return paragraph.getLineEnd(i, z);
    }

    /* renamed from: paint-LG529CI$default, reason: not valid java name */
    static /* synthetic */ void m4307paintLG529CI$default(Paragraph paragraph, Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: paint-LG529CI");
        }
        paragraph.mo4276paintLG529CI(canvas, (i2 & 2) != 0 ? Color.INSTANCE.m2675getUnspecified0d7_KjU() : j, (i2 & 4) != 0 ? null : shadow, (i2 & 8) != 0 ? null : textDecoration, (i2 & 16) == 0 ? drawStyle : null, (i2 & 32) != 0 ? DrawScope.INSTANCE.m3183getDefaultBlendMode0nO6VwU() : i);
    }

    /* renamed from: paint-RPmYEkk$default, reason: not valid java name */
    static /* synthetic */ void m4308paintRPmYEkk$default(Paragraph paragraph, Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: paint-RPmYEkk");
        }
        if ((i & 2) != 0) {
            j = Color.INSTANCE.m2675getUnspecified0d7_KjU();
        }
        paragraph.mo4277paintRPmYEkk(canvas, j, (i & 4) != 0 ? null : shadow, (i & 8) != 0 ? null : textDecoration);
    }

    /* renamed from: paint-hn5TExg$default, reason: not valid java name */
    static /* synthetic */ void m4309painthn5TExg$default(Paragraph paragraph, Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: paint-hn5TExg");
        }
        paragraph.mo4278painthn5TExg(canvas, brush, (i2 & 4) != 0 ? Float.NaN : f, (i2 & 8) != 0 ? null : shadow, (i2 & 16) != 0 ? null : textDecoration, (i2 & 32) != 0 ? null : drawStyle, (i2 & 64) != 0 ? DrawScope.INSTANCE.m3183getDefaultBlendMode0nO6VwU() : i);
    }
}
