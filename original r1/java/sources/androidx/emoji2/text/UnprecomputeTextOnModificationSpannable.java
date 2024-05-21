package androidx.emoji2.text;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import androidx.core.text.PrecomputedTextCompat;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
class UnprecomputeTextOnModificationSpannable implements Spannable {
    private Spannable mDelegate;
    private boolean mSafeToWrite = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Spannable getUnwrappedSpannable() {
        return this.mDelegate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnprecomputeTextOnModificationSpannable(Spannable spannable) {
        this.mDelegate = spannable;
    }

    UnprecomputeTextOnModificationSpannable(Spanned spanned) {
        this.mDelegate = new SpannableString(spanned);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnprecomputeTextOnModificationSpannable(CharSequence charSequence) {
        this.mDelegate = new SpannableString(charSequence);
    }

    private void ensureSafeWrites() {
        Spannable spannable = this.mDelegate;
        if (!this.mSafeToWrite && precomputedTextDetector().isPrecomputedText(spannable)) {
            this.mDelegate = new SpannableString(spannable);
        }
        this.mSafeToWrite = true;
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        ensureSafeWrites();
        this.mDelegate.setSpan(obj, i, i2, i3);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        ensureSafeWrites();
        this.mDelegate.removeSpan(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.mDelegate.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.mDelegate.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.mDelegate.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.mDelegate.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.mDelegate.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.mDelegate.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.mDelegate.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.mDelegate.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.mDelegate.toString();
    }

    @Override // java.lang.CharSequence
    public IntStream chars() {
        return CharSequenceHelper_API24.chars(this.mDelegate);
    }

    @Override // java.lang.CharSequence
    public IntStream codePoints() {
        return CharSequenceHelper_API24.codePoints(this.mDelegate);
    }

    /* loaded from: classes.dex */
    private static class CharSequenceHelper_API24 {
        private CharSequenceHelper_API24() {
        }

        static IntStream codePoints(CharSequence charSequence) {
            return charSequence.codePoints();
        }

        static IntStream chars(CharSequence charSequence) {
            return charSequence.chars();
        }
    }

    static PrecomputedTextDetector precomputedTextDetector() {
        return new PrecomputedTextDetector_28();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class PrecomputedTextDetector {
        PrecomputedTextDetector() {
        }

        boolean isPrecomputedText(CharSequence charSequence) {
            return charSequence instanceof PrecomputedTextCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class PrecomputedTextDetector_28 extends PrecomputedTextDetector {
        PrecomputedTextDetector_28() {
        }

        @Override // androidx.emoji2.text.UnprecomputeTextOnModificationSpannable.PrecomputedTextDetector
        boolean isPrecomputedText(CharSequence charSequence) {
            return (charSequence instanceof PrecomputedText) || (charSequence instanceof PrecomputedTextCompat);
        }
    }
}
