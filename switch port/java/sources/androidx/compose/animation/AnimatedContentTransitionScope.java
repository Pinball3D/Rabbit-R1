package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AnimatedContent.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u001bJR\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2#\b\u0002\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\f0\u000bH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011JR\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2#\b\u0002\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\f0\u000bH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u0018*\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH¦\u0004\u0082\u0001\u0001\u001cø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u001dÀ\u0006\u0001"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScope;", ExifInterface.LATITUDE_SOUTH, "Landroidx/compose/animation/core/Transition$Segment;", "slideIntoContainer", "Landroidx/compose/animation/EnterTransition;", "towards", "Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;", "animationSpec", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Landroidx/compose/ui/unit/IntOffset;", "initialOffset", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "offsetForFullSlide", "slideIntoContainer-mOhB8PU", "(ILandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;", "slideOutOfContainer", "Landroidx/compose/animation/ExitTransition;", "targetOffset", "slideOutOfContainer-mOhB8PU", "(ILandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;", "using", "Landroidx/compose/animation/ContentTransform;", "sizeTransform", "Landroidx/compose/animation/SizeTransform;", "SlideDirection", "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface AnimatedContentTransitionScope<S> extends Transition.Segment<S> {
    /* renamed from: slideIntoContainer-mOhB8PU, reason: not valid java name */
    EnterTransition mo24slideIntoContainermOhB8PU(int towards, FiniteAnimationSpec<IntOffset> animationSpec, Function1<? super Integer, Integer> initialOffset);

    /* renamed from: slideOutOfContainer-mOhB8PU, reason: not valid java name */
    ExitTransition mo25slideOutOfContainermOhB8PU(int towards, FiniteAnimationSpec<IntOffset> animationSpec, Function1<? super Integer, Integer> targetOffset);

    ContentTransform using(ContentTransform contentTransform, SizeTransform sizeTransform);

    /* compiled from: AnimatedContent.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @JvmInline
    /* loaded from: classes.dex */
    public static final class SlideDirection {
        private final int value;

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int Left = m27constructorimpl(0);
        private static final int Right = m27constructorimpl(1);
        private static final int Up = m27constructorimpl(2);
        private static final int Down = m27constructorimpl(3);
        private static final int Start = m27constructorimpl(4);
        private static final int End = m27constructorimpl(5);

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ SlideDirection m26boximpl(int i) {
            return new SlideDirection(i);
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m27constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl, reason: not valid java name */
        public static boolean m28equalsimpl(int i, Object obj) {
            return (obj instanceof SlideDirection) && i == ((SlideDirection) obj).getValue();
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m29equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m30hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        public boolean equals(Object obj) {
            return m28equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m30hashCodeimpl(this.value);
        }

        /* renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ int getValue() {
            return this.value;
        }

        /* compiled from: AnimatedContent.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006R\u001c\u0010\u000e\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000f\u0010\u0006R\u001c\u0010\u0010\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0011\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0012"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;", "", "()V", "Down", "Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;", "getDown-DKzdypw", "()I", "I", "End", "getEnd-DKzdypw", "Left", "getLeft-DKzdypw", "Right", "getRight-DKzdypw", "Start", "getStart-DKzdypw", "Up", "getUp-DKzdypw", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getLeft-DKzdypw, reason: not valid java name */
            public final int m35getLeftDKzdypw() {
                return SlideDirection.Left;
            }

            /* renamed from: getRight-DKzdypw, reason: not valid java name */
            public final int m36getRightDKzdypw() {
                return SlideDirection.Right;
            }

            /* renamed from: getUp-DKzdypw, reason: not valid java name */
            public final int m38getUpDKzdypw() {
                return SlideDirection.Up;
            }

            /* renamed from: getDown-DKzdypw, reason: not valid java name */
            public final int m33getDownDKzdypw() {
                return SlideDirection.Down;
            }

            /* renamed from: getStart-DKzdypw, reason: not valid java name */
            public final int m37getStartDKzdypw() {
                return SlideDirection.Start;
            }

            /* renamed from: getEnd-DKzdypw, reason: not valid java name */
            public final int m34getEndDKzdypw() {
                return SlideDirection.End;
            }
        }

        private /* synthetic */ SlideDirection(int i) {
            this.value = i;
        }

        public String toString() {
            return m31toStringimpl(this.value);
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m31toStringimpl(int i) {
            return m29equalsimpl0(i, Left) ? "Left" : m29equalsimpl0(i, Right) ? "Right" : m29equalsimpl0(i, Up) ? "Up" : m29equalsimpl0(i, Down) ? "Down" : m29equalsimpl0(i, Start) ? "Start" : m29equalsimpl0(i, End) ? "End" : "Invalid";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: slideIntoContainer-mOhB8PU$default, reason: not valid java name */
    static /* synthetic */ EnterTransition m22slideIntoContainermOhB8PU$default(AnimatedContentTransitionScope animatedContentTransitionScope, int i, FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: slideIntoContainer-mOhB8PU");
        }
        if ((i2 & 2) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m4992boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.INSTANCE)), 3, null);
        }
        if ((i2 & 4) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentTransitionScope$slideIntoContainer$1
                public final Integer invoke(int i3) {
                    return Integer.valueOf(i3);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return animatedContentTransitionScope.mo24slideIntoContainermOhB8PU(i, finiteAnimationSpec, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: slideOutOfContainer-mOhB8PU$default, reason: not valid java name */
    static /* synthetic */ ExitTransition m23slideOutOfContainermOhB8PU$default(AnimatedContentTransitionScope animatedContentTransitionScope, int i, FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: slideOutOfContainer-mOhB8PU");
        }
        if ((i2 & 2) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m4992boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.INSTANCE)), 3, null);
        }
        if ((i2 & 4) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentTransitionScope$slideOutOfContainer$1
                public final Integer invoke(int i3) {
                    return Integer.valueOf(i3);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return animatedContentTransitionScope.mo25slideOutOfContainermOhB8PU(i, finiteAnimationSpec, function1);
    }
}
