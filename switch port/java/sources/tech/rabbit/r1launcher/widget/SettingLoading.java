package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import io.sentry.Session;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;

/* compiled from: SettingLoading.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\bH\u0014J\u0012\u0010\n\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\bH\u0002J\b\u0010\u0011\u001a\u00020\bH\u0002¨\u0006\u0012"}, d2 = {"Ltech/rabbit/r1launcher/widget/SettingLoading;", "Landroidx/appcompat/widget/AppCompatImageView;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "onAttachedToWindow", "", "onDetachedFromWindow", "setImageTintList", "tint", "Landroid/content/res/ColorStateList;", "setVisibility", ViewHierarchyNode.JsonKeys.VISIBILITY, "", "startAnimation", "stopAnimation", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingLoading extends AppCompatImageView {
    public static final int $stable = 0;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SettingLoading(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SettingLoading(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        setImageDrawable(AppCompatResources.getDrawable(context, R.drawable.ic_loading));
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getVisibility() == 0) {
            startAnimation();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        stopAnimation();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 0) {
            startAnimation();
        } else {
            stopAnimation();
        }
    }

    @Override // android.widget.ImageView
    public void setImageTintList(ColorStateList tint) {
        boolean z = getAnimation() != null;
        stopAnimation();
        super.setImageTintList(tint);
        if (z) {
            startAnimation();
        }
    }

    private final void startAnimation() {
        stopAnimation();
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.rotate_loading);
        loadAnimation.setRepeatMode(1);
        loadAnimation.setRepeatCount(-1);
        startAnimation(loadAnimation);
    }

    private final void stopAnimation() {
        clearAnimation();
    }
}
