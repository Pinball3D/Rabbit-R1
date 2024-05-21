package com.chad.library.adapter.base.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AlphaInAnimation.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/chad/library/adapter/base/animation/AlphaInAnimation;", "Lcom/chad/library/adapter/base/animation/BaseAnimation;", "mFrom", "", "(F)V", "animators", "", "Landroid/animation/Animator;", "view", "Landroid/view/View;", "(Landroid/view/View;)[Landroid/animation/Animator;", "Companion", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AlphaInAnimation implements BaseAnimation {
    private static final float DEFAULT_ALPHA_FROM = 0.0f;
    private final float mFrom;

    public AlphaInAnimation() {
        this(0.0f, 1, null);
    }

    public AlphaInAnimation(float f) {
        this.mFrom = f;
    }

    public /* synthetic */ AlphaInAnimation(float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f);
    }

    @Override // com.chad.library.adapter.base.animation.BaseAnimation
    public Animator[] animators(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, ViewHierarchyNode.JsonKeys.ALPHA, this.mFrom, 1.0f);
        animator.setDuration(300L);
        animator.setInterpolator(new LinearInterpolator());
        Intrinsics.checkNotNullExpressionValue(animator, "animator");
        return new Animator[]{animator};
    }
}
