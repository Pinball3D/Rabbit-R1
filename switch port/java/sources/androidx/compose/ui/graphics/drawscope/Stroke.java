package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DrawScope.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB<\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u001c\u0010\u0005\u001a\u00020\u0006ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0007\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001e"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/Stroke;", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", ViewHierarchyNode.JsonKeys.WIDTH, "", "miter", "cap", "Landroidx/compose/ui/graphics/StrokeCap;", "join", "Landroidx/compose/ui/graphics/StrokeJoin;", "pathEffect", "Landroidx/compose/ui/graphics/PathEffect;", "(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getCap-KaPHkGw", "()I", "I", "getJoin-LxFBmk8", "getMiter", "()F", "getPathEffect", "()Landroidx/compose/ui/graphics/PathEffect;", "getWidth", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Stroke extends DrawStyle {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int DefaultCap = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
    private static final int DefaultJoin = StrokeJoin.INSTANCE.m2996getMiterLxFBmk8();
    public static final float DefaultMiter = 4.0f;
    public static final float HairlineWidth = 0.0f;
    private final int cap;
    private final int join;
    private final float miter;
    private final PathEffect pathEffect;
    private final float width;

    public /* synthetic */ Stroke(float f, float f2, int i, int i2, PathEffect pathEffect, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, i, i2, pathEffect);
    }

    /* renamed from: getCap-KaPHkGw, reason: not valid java name and from getter */
    public final int getCap() {
        return this.cap;
    }

    /* renamed from: getJoin-LxFBmk8, reason: not valid java name and from getter */
    public final int getJoin() {
        return this.join;
    }

    public final float getMiter() {
        return this.miter;
    }

    public final PathEffect getPathEffect() {
        return this.pathEffect;
    }

    public final float getWidth() {
        return this.width;
    }

    public /* synthetic */ Stroke(float f, float f2, int i, int i2, PathEffect pathEffect, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0.0f : f, (i3 & 2) != 0 ? 4.0f : f2, (i3 & 4) != 0 ? DefaultCap : i, (i3 & 8) != 0 ? DefaultJoin : i2, (i3 & 16) != 0 ? null : pathEffect, null);
    }

    /* compiled from: DrawScope.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\tø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\n\u0010\u0006R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;", "", "()V", "DefaultCap", "Landroidx/compose/ui/graphics/StrokeCap;", "getDefaultCap-KaPHkGw", "()I", "I", "DefaultJoin", "Landroidx/compose/ui/graphics/StrokeJoin;", "getDefaultJoin-LxFBmk8", "DefaultMiter", "", "HairlineWidth", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getDefaultCap-KaPHkGw, reason: not valid java name */
        public final int m3247getDefaultCapKaPHkGw() {
            return Stroke.DefaultCap;
        }

        /* renamed from: getDefaultJoin-LxFBmk8, reason: not valid java name */
        public final int m3248getDefaultJoinLxFBmk8() {
            return Stroke.DefaultJoin;
        }
    }

    private Stroke(float f, float f2, int i, int i2, PathEffect pathEffect) {
        super(null);
        this.width = f;
        this.miter = f2;
        this.cap = i;
        this.join = i2;
        this.pathEffect = pathEffect;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Stroke)) {
            return false;
        }
        Stroke stroke = (Stroke) other;
        return this.width == stroke.width && this.miter == stroke.miter && StrokeCap.m2981equalsimpl0(this.cap, stroke.cap) && StrokeJoin.m2991equalsimpl0(this.join, stroke.join) && Intrinsics.areEqual(this.pathEffect, stroke.pathEffect);
    }

    public int hashCode() {
        int hashCode = ((((((Float.hashCode(this.width) * 31) + Float.hashCode(this.miter)) * 31) + StrokeCap.m2982hashCodeimpl(this.cap)) * 31) + StrokeJoin.m2992hashCodeimpl(this.join)) * 31;
        PathEffect pathEffect = this.pathEffect;
        return hashCode + (pathEffect != null ? pathEffect.hashCode() : 0);
    }

    public String toString() {
        return "Stroke(width=" + this.width + ", miter=" + this.miter + ", cap=" + ((Object) StrokeCap.m2983toStringimpl(this.cap)) + ", join=" + ((Object) StrokeJoin.m2993toStringimpl(this.join)) + ", pathEffect=" + this.pathEffect + ')';
    }
}
