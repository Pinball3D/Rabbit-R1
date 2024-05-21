package androidx.compose.ui.focus;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusOrderModifier.kt */
@Deprecated(message = "Use FocusProperties instead")
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR$\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR$\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000b¨\u0006!"}, d2 = {"Landroidx/compose/ui/focus/FocusOrder;", "", "()V", "focusProperties", "Landroidx/compose/ui/focus/FocusProperties;", "(Landroidx/compose/ui/focus/FocusProperties;)V", "down", "Landroidx/compose/ui/focus/FocusRequester;", "getDown", "()Landroidx/compose/ui/focus/FocusRequester;", "setDown", "(Landroidx/compose/ui/focus/FocusRequester;)V", "end", "getEnd", "setEnd", "left", "getLeft", "setLeft", "next", "getNext", "setNext", "previous", "getPrevious", "setPrevious", "right", "getRight", "setRight", "start", "getStart", "setStart", "up", "getUp", "setUp", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusOrder {
    public static final int $stable = 8;
    private final FocusProperties focusProperties;

    public FocusOrder(FocusProperties focusProperties) {
        Intrinsics.checkNotNullParameter(focusProperties, "focusProperties");
        this.focusProperties = focusProperties;
    }

    public FocusOrder() {
        this(new FocusPropertiesImpl());
    }

    public final FocusRequester getNext() {
        return this.focusProperties.getNext();
    }

    public final void setNext(FocusRequester next) {
        Intrinsics.checkNotNullParameter(next, "next");
        this.focusProperties.setNext(next);
    }

    public final FocusRequester getPrevious() {
        return this.focusProperties.getPrevious();
    }

    public final void setPrevious(FocusRequester previous) {
        Intrinsics.checkNotNullParameter(previous, "previous");
        this.focusProperties.setPrevious(previous);
    }

    public final FocusRequester getUp() {
        return this.focusProperties.getUp();
    }

    public final void setUp(FocusRequester up) {
        Intrinsics.checkNotNullParameter(up, "up");
        this.focusProperties.setUp(up);
    }

    public final FocusRequester getDown() {
        return this.focusProperties.getDown();
    }

    public final void setDown(FocusRequester down) {
        Intrinsics.checkNotNullParameter(down, "down");
        this.focusProperties.setDown(down);
    }

    public final FocusRequester getLeft() {
        return this.focusProperties.getLeft();
    }

    public final void setLeft(FocusRequester left) {
        Intrinsics.checkNotNullParameter(left, "left");
        this.focusProperties.setLeft(left);
    }

    public final FocusRequester getRight() {
        return this.focusProperties.getRight();
    }

    public final void setRight(FocusRequester right) {
        Intrinsics.checkNotNullParameter(right, "right");
        this.focusProperties.setRight(right);
    }

    public final FocusRequester getStart() {
        return this.focusProperties.getStart();
    }

    public final void setStart(FocusRequester start) {
        Intrinsics.checkNotNullParameter(start, "start");
        this.focusProperties.setStart(start);
    }

    public final FocusRequester getEnd() {
        return this.focusProperties.getEnd();
    }

    public final void setEnd(FocusRequester end) {
        Intrinsics.checkNotNullParameter(end, "end");
        this.focusProperties.setEnd(end);
    }
}
