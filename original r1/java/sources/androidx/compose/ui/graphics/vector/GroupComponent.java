package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Vector.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b&\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010A\u001a\u00020\u00132\u0006\u0010B\u001a\u00020#2\u0006\u0010C\u001a\u00020\u0001J\u001e\u0010D\u001a\u00020\u00132\u0006\u0010E\u001a\u00020#2\u0006\u0010F\u001a\u00020#2\u0006\u0010G\u001a\u00020#J\u0016\u0010H\u001a\u00020\u00132\u0006\u0010B\u001a\u00020#2\u0006\u0010G\u001a\u00020#J\b\u0010I\u001a\u00020\u001cH\u0016J\b\u0010J\u001a\u00020\u0013H\u0002J\b\u0010K\u001a\u00020\u0013H\u0002J\f\u0010L\u001a\u00020\u0013*\u00020MH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R0\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R4\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012@PX\u0090\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u001c@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0011\u0010\"\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%R$\u0010'\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R$\u0010,\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010)\"\u0004\b.\u0010+R$\u0010/\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010)\"\u0004\b1\u0010+R$\u00102\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010)\"\u0004\b4\u0010+R$\u00105\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010)\"\u0004\b7\u0010+R$\u00108\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010)\"\u0004\b:\u0010+R$\u0010;\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010)\"\u0004\b=\u0010+R\u0014\u0010>\u001a\u00020\u001a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006N"}, d2 = {"Landroidx/compose/ui/graphics/vector/GroupComponent;", "Landroidx/compose/ui/graphics/vector/VNode;", "()V", ViewHierarchyNode.JsonKeys.CHILDREN, "", "clipPath", "Landroidx/compose/ui/graphics/Path;", "value", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "clipPathData", "getClipPathData", "()Ljava/util/List;", "setClipPathData", "(Ljava/util/List;)V", "groupMatrix", "Landroidx/compose/ui/graphics/Matrix;", "[F", "Lkotlin/Function0;", "", "invalidateListener", "getInvalidateListener$ui_release", "()Lkotlin/jvm/functions/Function0;", "setInvalidateListener$ui_release", "(Lkotlin/jvm/functions/Function0;)V", "isClipPathDirty", "", "isMatrixDirty", "", "name", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "numChildren", "", "getNumChildren", "()I", "", "pivotX", "getPivotX", "()F", "setPivotX", "(F)V", "pivotY", "getPivotY", "setPivotY", "rotation", "getRotation", "setRotation", "scaleX", "getScaleX", "setScaleX", "scaleY", "getScaleY", "setScaleY", "translationX", "getTranslationX", "setTranslationX", "translationY", "getTranslationY", "setTranslationY", "willClipPath", "getWillClipPath", "()Z", "insertAt", "index", "instance", "move", "from", "to", MetricSummary.JsonKeys.COUNT, "remove", "toString", "updateClipPath", "updateMatrix", "draw", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GroupComponent extends VNode {
    private final List<VNode> children;
    private Path clipPath;
    private List<? extends PathNode> clipPathData;
    private float[] groupMatrix;
    private Function0<Unit> invalidateListener;
    private boolean isClipPathDirty;
    private boolean isMatrixDirty;
    private String name;
    private float pivotX;
    private float pivotY;
    private float rotation;
    private float scaleX;
    private float scaleY;
    private float translationX;
    private float translationY;

    public final List<PathNode> getClipPathData() {
        return this.clipPathData;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public Function0<Unit> getInvalidateListener$ui_release() {
        return this.invalidateListener;
    }

    public final String getName() {
        return this.name;
    }

    public final float getPivotX() {
        return this.pivotX;
    }

    public final float getPivotY() {
        return this.pivotY;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    public final float getTranslationX() {
        return this.translationX;
    }

    public final float getTranslationY() {
        return this.translationY;
    }

    public GroupComponent() {
        super(null);
        this.children = new ArrayList();
        this.clipPathData = VectorKt.getEmptyPath();
        this.isClipPathDirty = true;
        this.name = "";
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.isMatrixDirty = true;
    }

    public final void setClipPathData(List<? extends PathNode> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.clipPathData = value;
        this.isClipPathDirty = true;
        invalidate();
    }

    private final boolean getWillClipPath() {
        return !this.clipPathData.isEmpty();
    }

    private final void updateClipPath() {
        if (getWillClipPath()) {
            Path path = this.clipPath;
            if (path == null) {
                path = AndroidPath_androidKt.Path();
                this.clipPath = path;
            }
            PathParserKt.toPath(this.clipPathData, path);
        }
    }

    public final void setName(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.name = value;
        invalidate();
    }

    public final void setRotation(float f) {
        this.rotation = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setPivotX(float f) {
        this.pivotX = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setPivotY(float f) {
        this.pivotY = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setScaleX(float f) {
        this.scaleX = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setScaleY(float f) {
        this.scaleY = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setTranslationX(float f) {
        this.translationX = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setTranslationY(float f) {
        this.translationY = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final int getNumChildren() {
        return this.children.size();
    }

    private final void updateMatrix() {
        float[] fArr = this.groupMatrix;
        if (fArr == null) {
            fArr = Matrix.m2864constructorimpl$default(null, 1, null);
            this.groupMatrix = fArr;
        } else {
            Matrix.m2873resetimpl(fArr);
        }
        Matrix.m2884translateimpl$default(fArr, this.pivotX + this.translationX, this.pivotY + this.translationY, 0.0f, 4, null);
        Matrix.m2876rotateZimpl(fArr, this.rotation);
        Matrix.m2877scaleimpl(fArr, this.scaleX, this.scaleY, 1.0f);
        Matrix.m2884translateimpl$default(fArr, -this.pivotX, -this.pivotY, 0.0f, 4, null);
    }

    public final void insertAt(int index, VNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (index < getNumChildren()) {
            this.children.set(index, instance);
        } else {
            this.children.add(instance);
        }
        instance.setInvalidateListener$ui_release(getInvalidateListener$ui_release());
        invalidate();
    }

    public final void move(int from, int to, int count) {
        int i = 0;
        if (from > to) {
            while (i < count) {
                VNode vNode = this.children.get(from);
                this.children.remove(from);
                this.children.add(to, vNode);
                to++;
                i++;
            }
        } else {
            while (i < count) {
                VNode vNode2 = this.children.get(from);
                this.children.remove(from);
                this.children.add(to - 1, vNode2);
                i++;
            }
        }
        invalidate();
    }

    public final void remove(int index, int count) {
        for (int i = 0; i < count; i++) {
            if (index < this.children.size()) {
                this.children.get(index).setInvalidateListener$ui_release(null);
                this.children.remove(index);
            }
        }
        invalidate();
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void draw(DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        if (this.isMatrixDirty) {
            updateMatrix();
            this.isMatrixDirty = false;
        }
        if (this.isClipPathDirty) {
            updateClipPath();
            this.isClipPathDirty = false;
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        DrawTransform transform = drawContext.getTransform();
        float[] fArr = this.groupMatrix;
        if (fArr != null) {
            transform.mo3115transform58bKbWc((fArr != null ? Matrix.m2862boximpl(fArr) : null).m2885unboximpl());
        }
        Path path = this.clipPath;
        if (getWillClipPath() && path != null) {
            DrawTransform.m3232clipPathmtrdDE$default(transform, path, 0, 2, null);
        }
        List<VNode> list = this.children;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).draw(drawScope);
        }
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    public String toString() {
        StringBuilder append = new StringBuilder("VGroup: ").append(this.name);
        List<VNode> list = this.children;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            append.append("\t").append(list.get(i).toString()).append("\n");
        }
        String sb = append.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "sb.toString()");
        return sb;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void setInvalidateListener$ui_release(Function0<Unit> function0) {
        this.invalidateListener = function0;
        List<VNode> list = this.children;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).setInvalidateListener$ui_release(function0);
        }
    }
}
