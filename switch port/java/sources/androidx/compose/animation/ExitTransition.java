package androidx.compose.animation;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnterExitTransition.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0011\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0000H\u0087\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0012\u0010\u0003\u001a\u00020\u0004X \u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0001\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/animation/ExitTransition;", "", "()V", "data", "Landroidx/compose/animation/TransitionData;", "getData$animation_release", "()Landroidx/compose/animation/TransitionData;", "equals", "", "other", "hashCode", "", "plus", "exit", "toString", "", "Companion", "Landroidx/compose/animation/ExitTransitionImpl;", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class ExitTransition {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ExitTransition None = new ExitTransitionImpl(new TransitionData(null, null, null, null, 15, null));

    public /* synthetic */ ExitTransition(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract TransitionData getData$animation_release();

    private ExitTransition() {
    }

    public final ExitTransition plus(ExitTransition exit) {
        Intrinsics.checkNotNullParameter(exit, "exit");
        Fade fade = getData$animation_release().getFade();
        if (fade == null) {
            fade = exit.getData$animation_release().getFade();
        }
        Slide slide = getData$animation_release().getSlide();
        if (slide == null) {
            slide = exit.getData$animation_release().getSlide();
        }
        ChangeSize changeSize = getData$animation_release().getChangeSize();
        if (changeSize == null) {
            changeSize = exit.getData$animation_release().getChangeSize();
        }
        Scale scale = getData$animation_release().getScale();
        if (scale == null) {
            scale = exit.getData$animation_release().getScale();
        }
        return new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale));
    }

    public boolean equals(Object other) {
        return (other instanceof ExitTransition) && Intrinsics.areEqual(((ExitTransition) other).getData$animation_release(), getData$animation_release());
    }

    public String toString() {
        if (Intrinsics.areEqual(this, None)) {
            return "ExitTransition.None";
        }
        TransitionData data$animation_release = getData$animation_release();
        StringBuilder sb = new StringBuilder("ExitTransition: \nFade - ");
        Fade fade = data$animation_release.getFade();
        StringBuilder append = sb.append(fade != null ? fade.toString() : null).append(",\nSlide - ");
        Slide slide = data$animation_release.getSlide();
        StringBuilder append2 = append.append(slide != null ? slide.toString() : null).append(",\nShrink - ");
        ChangeSize changeSize = data$animation_release.getChangeSize();
        StringBuilder append3 = append2.append(changeSize != null ? changeSize.toString() : null).append(",\nScale - ");
        Scale scale = data$animation_release.getScale();
        return append3.append(scale != null ? scale.toString() : null).toString();
    }

    public int hashCode() {
        return getData$animation_release().hashCode();
    }

    /* compiled from: EnterExitTransition.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/ExitTransition$Companion;", "", "()V", "None", "Landroidx/compose/animation/ExitTransition;", "getNone", "()Landroidx/compose/animation/ExitTransition;", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ExitTransition getNone() {
            return ExitTransition.None;
        }
    }
}
