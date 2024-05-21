package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public abstract class EmojiSpan extends ReplacementSpan {
    private final TypefaceEmojiRasterizer mRasterizer;
    private final Paint.FontMetricsInt mTmpFontMetrics = new Paint.FontMetricsInt();
    private short mWidth = -1;
    private short mHeight = -1;
    private float mRatio = 1.0f;

    public final int getHeight() {
        return this.mHeight;
    }

    final float getRatio() {
        return this.mRatio;
    }

    public final TypefaceEmojiRasterizer getTypefaceRasterizer() {
        return this.mRasterizer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getWidth() {
        return this.mWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiSpan(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        Preconditions.checkNotNull(typefaceEmojiRasterizer, "rasterizer cannot be null");
        this.mRasterizer = typefaceEmojiRasterizer;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.mTmpFontMetrics);
        this.mRatio = (Math.abs(this.mTmpFontMetrics.descent - this.mTmpFontMetrics.ascent) * 1.0f) / this.mRasterizer.getHeight();
        this.mHeight = (short) (this.mRasterizer.getHeight() * this.mRatio);
        this.mWidth = (short) (this.mRasterizer.getWidth() * this.mRatio);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = this.mTmpFontMetrics.ascent;
            fontMetricsInt.descent = this.mTmpFontMetrics.descent;
            fontMetricsInt.top = this.mTmpFontMetrics.top;
            fontMetricsInt.bottom = this.mTmpFontMetrics.bottom;
        }
        return this.mWidth;
    }

    public final int getId() {
        return getTypefaceRasterizer().getId();
    }
}
