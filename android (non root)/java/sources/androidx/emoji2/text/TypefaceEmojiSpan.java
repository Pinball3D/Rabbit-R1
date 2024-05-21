package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.MetricAffectingSpan;

/* loaded from: classes.dex */
public final class TypefaceEmojiSpan extends EmojiSpan {
    private static Paint sDebugPaint;
    private TextPaint mWorkingPaint;

    public TypefaceEmojiSpan(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        super(typefaceEmojiRasterizer);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Paint paint2 = paint;
        TextPaint applyCharacterSpanStyles = applyCharacterSpanStyles(charSequence, i, i2, paint2);
        if (applyCharacterSpanStyles != null && applyCharacterSpanStyles.bgColor != 0) {
            drawBackground(canvas, applyCharacterSpanStyles, f, f + getWidth(), i3, i5);
        }
        if (EmojiCompat.get().isEmojiSpanIndicatorEnabled()) {
            canvas.drawRect(f, i3, f + getWidth(), i5, getDebugPaint());
        }
        TypefaceEmojiRasterizer typefaceRasterizer = getTypefaceRasterizer();
        float f2 = i4;
        if (applyCharacterSpanStyles != null) {
            paint2 = applyCharacterSpanStyles;
        }
        typefaceRasterizer.draw(canvas, f, f2, paint2);
    }

    void drawBackground(Canvas canvas, TextPaint textPaint, float f, float f2, float f3, float f4) {
        int color = textPaint.getColor();
        Paint.Style style = textPaint.getStyle();
        textPaint.setColor(textPaint.bgColor);
        textPaint.setStyle(Paint.Style.FILL);
        canvas.drawRect(f, f3, f2, f4, textPaint);
        textPaint.setStyle(style);
        textPaint.setColor(color);
    }

    private TextPaint applyCharacterSpanStyles(CharSequence charSequence, int i, int i2, Paint paint) {
        if (charSequence instanceof Spanned) {
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) ((Spanned) charSequence).getSpans(i, i2, CharacterStyle.class);
            if (characterStyleArr.length != 0) {
                if (characterStyleArr.length != 1 || characterStyleArr[0] != this) {
                    TextPaint textPaint = this.mWorkingPaint;
                    if (textPaint == null) {
                        textPaint = new TextPaint();
                        this.mWorkingPaint = textPaint;
                    }
                    textPaint.set(paint);
                    for (CharacterStyle characterStyle : characterStyleArr) {
                        if (!(characterStyle instanceof MetricAffectingSpan)) {
                            characterStyle.updateDrawState(textPaint);
                        }
                    }
                    return textPaint;
                }
            }
            if (paint instanceof TextPaint) {
                return (TextPaint) paint;
            }
            return null;
        }
        if (paint instanceof TextPaint) {
            return (TextPaint) paint;
        }
        return null;
    }

    private static Paint getDebugPaint() {
        if (sDebugPaint == null) {
            TextPaint textPaint = new TextPaint();
            sDebugPaint = textPaint;
            textPaint.setColor(EmojiCompat.get().getEmojiSpanIndicatorColor());
            sDebugPaint.setStyle(Paint.Style.FILL);
        }
        return sDebugPaint;
    }
}
