package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;

/* loaded from: classes2.dex */
public class PathKeyframe extends Keyframe<PointF> {
    private Path path;
    private final Keyframe<PointF> pointKeyFrame;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Path getPath() {
        return this.path;
    }

    public PathKeyframe(LottieComposition lottieComposition, Keyframe<PointF> keyframe) {
        super(lottieComposition, keyframe.startValue, keyframe.endValue, keyframe.interpolator, keyframe.xInterpolator, keyframe.yInterpolator, keyframe.startFrame, keyframe.endFrame);
        this.pointKeyFrame = keyframe;
        createPath();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void createPath() {
        boolean z = (this.endValue == 0 || this.startValue == 0 || !((PointF) this.startValue).equals(((PointF) this.endValue).x, ((PointF) this.endValue).y)) ? false : true;
        if (this.startValue == 0 || this.endValue == 0 || z) {
            return;
        }
        this.path = Utils.createPath((PointF) this.startValue, (PointF) this.endValue, this.pointKeyFrame.pathCp1, this.pointKeyFrame.pathCp2);
    }
}
