package androidx.compose.ui.node;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NodeCoordinator.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010\n\u001a\u00020\u000bX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0016"}, d2 = {"Landroidx/compose/ui/node/LayerPositionalProperties;", "", "()V", "cameraDistance", "", "rotationX", "rotationY", "rotationZ", "scaleX", "scaleY", "transformOrigin", "Landroidx/compose/ui/graphics/TransformOrigin;", "J", "translationX", "translationY", "copyFrom", "", "scope", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "other", "hasSameValuesAs", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayerPositionalProperties {
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float translationX;
    private float translationY;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float cameraDistance = 8.0f;
    private long transformOrigin = TransformOrigin.INSTANCE.m3023getCenterSzJe1aQ();

    public final void copyFrom(LayerPositionalProperties other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.scaleX = other.scaleX;
        this.scaleY = other.scaleY;
        this.translationX = other.translationX;
        this.translationY = other.translationY;
        this.rotationX = other.rotationX;
        this.rotationY = other.rotationY;
        this.rotationZ = other.rotationZ;
        this.cameraDistance = other.cameraDistance;
        this.transformOrigin = other.transformOrigin;
    }

    public final void copyFrom(GraphicsLayerScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scaleX = scope.getScaleX();
        this.scaleY = scope.getScaleY();
        this.translationX = scope.getTranslationX();
        this.translationY = scope.getTranslationY();
        this.rotationX = scope.getRotationX();
        this.rotationY = scope.getRotationY();
        this.rotationZ = scope.getRotationZ();
        this.cameraDistance = scope.getCameraDistance();
        this.transformOrigin = scope.mo2824getTransformOriginSzJe1aQ();
    }

    public final boolean hasSameValuesAs(LayerPositionalProperties other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.scaleX == other.scaleX && this.scaleY == other.scaleY && this.translationX == other.translationX && this.translationY == other.translationY && this.rotationX == other.rotationX && this.rotationY == other.rotationY && this.rotationZ == other.rotationZ && this.cameraDistance == other.cameraDistance && TransformOrigin.m3017equalsimpl0(this.transformOrigin, other.transformOrigin);
    }
}
