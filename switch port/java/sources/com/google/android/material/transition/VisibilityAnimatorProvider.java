package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public interface VisibilityAnimatorProvider {
    Animator createAppear(ViewGroup viewGroup, View view);

    Animator createDisappear(ViewGroup viewGroup, View view);
}
