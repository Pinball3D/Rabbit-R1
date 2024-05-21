package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class MaskKeyframeAnimation {
    private final List<BaseKeyframeAnimation<ShapeData, Path>> maskAnimations;
    private final List<Mask> masks;
    private final List<BaseKeyframeAnimation<Integer, Integer>> opacityAnimations;

    public List<BaseKeyframeAnimation<ShapeData, Path>> getMaskAnimations() {
        return this.maskAnimations;
    }

    public List<Mask> getMasks() {
        return this.masks;
    }

    public List<BaseKeyframeAnimation<Integer, Integer>> getOpacityAnimations() {
        return this.opacityAnimations;
    }

    public MaskKeyframeAnimation(List<Mask> list) {
        this.masks = list;
        this.maskAnimations = new ArrayList(list.size());
        this.opacityAnimations = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.maskAnimations.add(list.get(i).getMaskPath().createAnimation());
            this.opacityAnimations.add(list.get(i).getOpacity().createAnimation());
        }
    }
}
