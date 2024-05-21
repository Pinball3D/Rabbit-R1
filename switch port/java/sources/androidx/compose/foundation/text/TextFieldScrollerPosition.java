package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextRange;
import io.sentry.protocol.Device;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: TextFieldScroll.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\b\u0001\u0018\u0000 22\u00020\u0001:\u00012B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J%\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)H\u0000¢\u0006\u0002\b*J\u001b\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\u001eø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b-\u0010.J&\u0010/\u001a\u00020%2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020)2\u0006\u00101\u001a\u00020)R+\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00068F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR+\u0010\u0010\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00068F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0013\u0010\u000f\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\rR+\u0010\u0014\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00048F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R%\u0010\u001d\u001a\u00020\u001eX\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00063"}, d2 = {"Landroidx/compose/foundation/text/TextFieldScrollerPosition;", "", "()V", "initialOrientation", "Landroidx/compose/foundation/gestures/Orientation;", "initial", "", "(Landroidx/compose/foundation/gestures/Orientation;F)V", "<set-?>", "maximum", "getMaximum", "()F", "setMaximum", "(F)V", "maximum$delegate", "Landroidx/compose/runtime/MutableFloatState;", "offset", "getOffset", "setOffset", "offset$delegate", Device.JsonKeys.ORIENTATION, "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", "setOrientation", "(Landroidx/compose/foundation/gestures/Orientation;)V", "orientation$delegate", "Landroidx/compose/runtime/MutableState;", "previousCursorRect", "Landroidx/compose/ui/geometry/Rect;", "previousSelection", "Landroidx/compose/ui/text/TextRange;", "getPreviousSelection-d9O1mEE", "()J", "setPreviousSelection-5zc-tL8", "(J)V", "J", "coerceOffset", "", "cursorStart", "cursorEnd", "containerSize", "", "coerceOffset$foundation_release", "getOffsetToFollow", "selection", "getOffsetToFollow-5zc-tL8", "(J)I", "update", "cursorRect", "textFieldSize", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldScrollerPosition {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Saver<TextFieldScrollerPosition, Object> Saver = ListSaverKt.listSaver(new Function2<SaverScope, TextFieldScrollerPosition, List<? extends Object>>() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final List<Object> invoke(SaverScope listSaver, TextFieldScrollerPosition it) {
            Intrinsics.checkNotNullParameter(listSaver, "$this$listSaver");
            Intrinsics.checkNotNullParameter(it, "it");
            Object[] objArr = new Object[2];
            objArr[0] = Float.valueOf(it.getOffset());
            objArr[1] = Boolean.valueOf(it.getOrientation() == Orientation.Vertical);
            return CollectionsKt.listOf(objArr);
        }
    }, new Function1<List<? extends Object>, TextFieldScrollerPosition>() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public final TextFieldScrollerPosition invoke(List<? extends Object> restored) {
            Intrinsics.checkNotNullParameter(restored, "restored");
            Object obj = restored.get(1);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            Orientation orientation = ((Boolean) obj).booleanValue() ? Orientation.Vertical : Orientation.Horizontal;
            Object obj2 = restored.get(0);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Float");
            return new TextFieldScrollerPosition(orientation, ((Float) obj2).floatValue());
        }
    });

    /* renamed from: maximum$delegate, reason: from kotlin metadata */
    private final MutableFloatState maximum;

    /* renamed from: offset$delegate, reason: from kotlin metadata */
    private final MutableFloatState offset;

    /* renamed from: orientation$delegate, reason: from kotlin metadata */
    private final MutableState orientation;
    private Rect previousCursorRect;
    private long previousSelection;

    /* renamed from: getPreviousSelection-d9O1mEE, reason: not valid java name and from getter */
    public final long getPreviousSelection() {
        return this.previousSelection;
    }

    /* renamed from: setPreviousSelection-5zc-tL8, reason: not valid java name */
    public final void m833setPreviousSelection5zctL8(long j) {
        this.previousSelection = j;
    }

    public TextFieldScrollerPosition(Orientation initialOrientation, float f) {
        Intrinsics.checkNotNullParameter(initialOrientation, "initialOrientation");
        this.offset = PrimitiveSnapshotStateKt.mutableFloatStateOf(f);
        this.maximum = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.previousCursorRect = Rect.INSTANCE.getZero();
        this.previousSelection = TextRange.INSTANCE.m4419getZerod9O1mEE();
        this.orientation = SnapshotStateKt.mutableStateOf(initialOrientation, SnapshotStateKt.structuralEqualityPolicy());
    }

    public /* synthetic */ TextFieldScrollerPosition(Orientation orientation, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(orientation, (i & 2) != 0 ? 0.0f : f);
    }

    public TextFieldScrollerPosition() {
        this(Orientation.Vertical, 0.0f, 2, null);
    }

    public final float getOffset() {
        return this.offset.getFloatValue();
    }

    public final float getMaximum() {
        return this.maximum.getFloatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Orientation getOrientation() {
        return (Orientation) this.orientation.getValue();
    }

    public final void update(Orientation orientation, Rect cursorRect, int containerSize, int textFieldSize) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(cursorRect, "cursorRect");
        float f = textFieldSize - containerSize;
        setMaximum(f);
        if (cursorRect.getLeft() != this.previousCursorRect.getLeft() || cursorRect.getTop() != this.previousCursorRect.getTop()) {
            boolean z = orientation == Orientation.Vertical;
            coerceOffset$foundation_release(z ? cursorRect.getTop() : cursorRect.getLeft(), z ? cursorRect.getBottom() : cursorRect.getRight(), containerSize);
            this.previousCursorRect = cursorRect;
        }
        setOffset(RangesKt.coerceIn(getOffset(), 0.0f, f));
    }

    public final void coerceOffset$foundation_release(float cursorStart, float cursorEnd, int containerSize) {
        float offset = getOffset();
        float f = containerSize;
        float f2 = offset + f;
        setOffset(getOffset() + ((cursorEnd <= f2 && (cursorStart >= offset || cursorEnd - cursorStart <= f)) ? (cursorStart >= offset || cursorEnd - cursorStart > f) ? 0.0f : cursorStart - offset : cursorEnd - f2));
    }

    /* renamed from: getOffsetToFollow-5zc-tL8, reason: not valid java name */
    public final int m831getOffsetToFollow5zctL8(long selection) {
        return TextRange.m4414getStartimpl(selection) != TextRange.m4414getStartimpl(this.previousSelection) ? TextRange.m4414getStartimpl(selection) : TextRange.m4409getEndimpl(selection) != TextRange.m4409getEndimpl(this.previousSelection) ? TextRange.m4409getEndimpl(selection) : TextRange.m4412getMinimpl(selection);
    }

    /* compiled from: TextFieldScroll.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/foundation/text/TextFieldScrollerPosition;", "getSaver", "()Landroidx/compose/runtime/saveable/Saver;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<TextFieldScrollerPosition, Object> getSaver() {
            return TextFieldScrollerPosition.Saver;
        }
    }

    public final void setOffset(float f) {
        this.offset.setFloatValue(f);
    }

    private final void setMaximum(float f) {
        this.maximum.setFloatValue(f);
    }

    public final void setOrientation(Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation.setValue(orientation);
    }
}
