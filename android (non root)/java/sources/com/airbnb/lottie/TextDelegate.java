package com.airbnb.lottie;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class TextDelegate {
    private final LottieAnimationView animationView;
    private boolean cacheText;
    private final LottieDrawable drawable;
    private final Map<String, String> stringMap;

    public String getText(String str) {
        return str;
    }

    public void setCacheText(boolean z) {
        this.cacheText = z;
    }

    TextDelegate() {
        this.stringMap = new HashMap();
        this.cacheText = true;
        this.animationView = null;
        this.drawable = null;
    }

    public TextDelegate(LottieAnimationView lottieAnimationView) {
        this.stringMap = new HashMap();
        this.cacheText = true;
        this.animationView = lottieAnimationView;
        this.drawable = null;
    }

    public TextDelegate(LottieDrawable lottieDrawable) {
        this.stringMap = new HashMap();
        this.cacheText = true;
        this.drawable = lottieDrawable;
        this.animationView = null;
    }

    public String getText(String str, String str2) {
        return getText(str2);
    }

    public void setText(String str, String str2) {
        this.stringMap.put(str, str2);
        invalidate();
    }

    public void invalidateText(String str) {
        this.stringMap.remove(str);
        invalidate();
    }

    public void invalidateAllText() {
        this.stringMap.clear();
        invalidate();
    }

    public final String getTextInternal(String str, String str2) {
        if (this.cacheText && this.stringMap.containsKey(str2)) {
            return this.stringMap.get(str2);
        }
        String text = getText(str, str2);
        if (this.cacheText) {
            this.stringMap.put(str2, text);
        }
        return text;
    }

    private void invalidate() {
        LottieAnimationView lottieAnimationView = this.animationView;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        LottieDrawable lottieDrawable = this.drawable;
        if (lottieDrawable != null) {
            lottieDrawable.invalidateSelf();
        }
    }
}
