package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.MergePathsContent;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.Logger;

/* loaded from: classes2.dex */
public class MergePaths implements ContentModel {
    private final boolean hidden;
    private final MergePathsMode mode;
    private final String name;

    /* loaded from: classes2.dex */
    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i) {
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? MERGE : EXCLUDE_INTERSECTIONS : INTERSECT : SUBTRACT : ADD : MERGE;
        }
    }

    public MergePathsMode getMode() {
        return this.mode;
    }

    public String getName() {
        return this.name;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z) {
        this.name = str;
        this.mode = mergePathsMode;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        if (!lottieDrawable.enableMergePathsForKitKatAndAbove()) {
            Logger.warning("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new MergePathsContent(this);
    }

    public String toString() {
        return "MergePaths{mode=" + this.mode + '}';
    }
}
