package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class ShapeGroup implements ContentModel {
    private final boolean hidden;
    private final List<ContentModel> items;
    private final String name;

    public List<ContentModel> getItems() {
        return this.items;
    }

    public String getName() {
        return this.name;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public ShapeGroup(String str, List<ContentModel> list, boolean z) {
        this.name = str;
        this.items = list;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new ContentGroup(lottieDrawable, baseLayer, this, lottieComposition);
    }

    public String toString() {
        return "ShapeGroup{name='" + this.name + "' Shapes: " + Arrays.toString(this.items.toArray()) + '}';
    }
}
