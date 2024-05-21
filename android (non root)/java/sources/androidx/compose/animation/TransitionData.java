package androidx.compose.animation;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnterExitTransition.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Landroidx/compose/animation/TransitionData;", "", "fade", "Landroidx/compose/animation/Fade;", "slide", "Landroidx/compose/animation/Slide;", "changeSize", "Landroidx/compose/animation/ChangeSize;", "scale", "Landroidx/compose/animation/Scale;", "(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;)V", "getChangeSize", "()Landroidx/compose/animation/ChangeSize;", "getFade", "()Landroidx/compose/animation/Fade;", "getScale", "()Landroidx/compose/animation/Scale;", "getSlide", "()Landroidx/compose/animation/Slide;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class TransitionData {
    private final ChangeSize changeSize;
    private final Fade fade;
    private final Scale scale;
    private final Slide slide;

    public TransitionData() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ TransitionData copy$default(TransitionData transitionData, Fade fade, Slide slide, ChangeSize changeSize, Scale scale, int i, Object obj) {
        if ((i & 1) != 0) {
            fade = transitionData.fade;
        }
        if ((i & 2) != 0) {
            slide = transitionData.slide;
        }
        if ((i & 4) != 0) {
            changeSize = transitionData.changeSize;
        }
        if ((i & 8) != 0) {
            scale = transitionData.scale;
        }
        return transitionData.copy(fade, slide, changeSize, scale);
    }

    /* renamed from: component1, reason: from getter */
    public final Fade getFade() {
        return this.fade;
    }

    /* renamed from: component2, reason: from getter */
    public final Slide getSlide() {
        return this.slide;
    }

    /* renamed from: component3, reason: from getter */
    public final ChangeSize getChangeSize() {
        return this.changeSize;
    }

    /* renamed from: component4, reason: from getter */
    public final Scale getScale() {
        return this.scale;
    }

    public final TransitionData copy(Fade fade, Slide slide, ChangeSize changeSize, Scale scale) {
        return new TransitionData(fade, slide, changeSize, scale);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransitionData)) {
            return false;
        }
        TransitionData transitionData = (TransitionData) other;
        return Intrinsics.areEqual(this.fade, transitionData.fade) && Intrinsics.areEqual(this.slide, transitionData.slide) && Intrinsics.areEqual(this.changeSize, transitionData.changeSize) && Intrinsics.areEqual(this.scale, transitionData.scale);
    }

    public final ChangeSize getChangeSize() {
        return this.changeSize;
    }

    public final Fade getFade() {
        return this.fade;
    }

    public final Scale getScale() {
        return this.scale;
    }

    public final Slide getSlide() {
        return this.slide;
    }

    public int hashCode() {
        Fade fade = this.fade;
        int hashCode = (fade == null ? 0 : fade.hashCode()) * 31;
        Slide slide = this.slide;
        int hashCode2 = (hashCode + (slide == null ? 0 : slide.hashCode())) * 31;
        ChangeSize changeSize = this.changeSize;
        int hashCode3 = (hashCode2 + (changeSize == null ? 0 : changeSize.hashCode())) * 31;
        Scale scale = this.scale;
        return hashCode3 + (scale != null ? scale.hashCode() : 0);
    }

    public String toString() {
        return "TransitionData(fade=" + this.fade + ", slide=" + this.slide + ", changeSize=" + this.changeSize + ", scale=" + this.scale + ')';
    }

    public TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale) {
        this.fade = fade;
        this.slide = slide;
        this.changeSize = changeSize;
        this.scale = scale;
    }

    public /* synthetic */ TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : fade, (i & 2) != 0 ? null : slide, (i & 4) != 0 ? null : changeSize, (i & 8) != 0 ? null : scale);
    }
}
