package androidx.compose.ui.focus;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusProperties.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR/\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n0\u0013X\u0096\u000eø\u0001\u0000¢\u0006\u0014\n\u0000\u0012\u0004\b\u0015\u0010\u0002\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R/\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n0\u0013X\u0096\u000eø\u0001\u0000¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u0002\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R\u001a\u0010\u001e\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001a\u0010!\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR\u001a\u0010$\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR\u001a\u0010'\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010\u000eR\u001a\u0010*\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\f\"\u0004\b,\u0010\u000eR\u001a\u0010-\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\f\"\u0004\b/\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Landroidx/compose/ui/focus/FocusPropertiesImpl;", "Landroidx/compose/ui/focus/FocusProperties;", "()V", "canFocus", "", "getCanFocus", "()Z", "setCanFocus", "(Z)V", "down", "Landroidx/compose/ui/focus/FocusRequester;", "getDown", "()Landroidx/compose/ui/focus/FocusRequester;", "setDown", "(Landroidx/compose/ui/focus/FocusRequester;)V", "end", "getEnd", "setEnd", "enter", "Lkotlin/Function1;", "Landroidx/compose/ui/focus/FocusDirection;", "getEnter$annotations", "getEnter", "()Lkotlin/jvm/functions/Function1;", "setEnter", "(Lkotlin/jvm/functions/Function1;)V", "exit", "getExit$annotations", "getExit", "setExit", "left", "getLeft", "setLeft", "next", "getNext", "setNext", "previous", "getPrevious", "setPrevious", "right", "getRight", "setRight", "start", "getStart", "setStart", "up", "getUp", "setUp", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusPropertiesImpl implements FocusProperties {
    private boolean canFocus = true;
    private FocusRequester next = FocusRequester.INSTANCE.getDefault();
    private FocusRequester previous = FocusRequester.INSTANCE.getDefault();
    private FocusRequester up = FocusRequester.INSTANCE.getDefault();
    private FocusRequester down = FocusRequester.INSTANCE.getDefault();
    private FocusRequester left = FocusRequester.INSTANCE.getDefault();
    private FocusRequester right = FocusRequester.INSTANCE.getDefault();
    private FocusRequester start = FocusRequester.INSTANCE.getDefault();
    private FocusRequester end = FocusRequester.INSTANCE.getDefault();
    private Function1<? super FocusDirection, FocusRequester> enter = new Function1<FocusDirection, FocusRequester>() { // from class: androidx.compose.ui.focus.FocusPropertiesImpl$enter$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ FocusRequester invoke(FocusDirection focusDirection) {
            return m2344invoke3ESFkO8(focusDirection.getValue());
        }

        /* renamed from: invoke-3ESFkO8, reason: not valid java name */
        public final FocusRequester m2344invoke3ESFkO8(int i) {
            return FocusRequester.INSTANCE.getDefault();
        }
    };
    private Function1<? super FocusDirection, FocusRequester> exit = new Function1<FocusDirection, FocusRequester>() { // from class: androidx.compose.ui.focus.FocusPropertiesImpl$exit$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ FocusRequester invoke(FocusDirection focusDirection) {
            return m2345invoke3ESFkO8(focusDirection.getValue());
        }

        /* renamed from: invoke-3ESFkO8, reason: not valid java name */
        public final FocusRequester m2345invoke3ESFkO8(int i) {
            return FocusRequester.INSTANCE.getDefault();
        }
    };

    public static /* synthetic */ void getEnter$annotations() {
    }

    public static /* synthetic */ void getExit$annotations() {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public boolean getCanFocus() {
        return this.canFocus;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getDown() {
        return this.down;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getEnd() {
        return this.end;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public Function1<FocusDirection, FocusRequester> getEnter() {
        return this.enter;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public Function1<FocusDirection, FocusRequester> getExit() {
        return this.exit;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getLeft() {
        return this.left;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getNext() {
        return this.next;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getPrevious() {
        return this.previous;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getRight() {
        return this.right;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getStart() {
        return this.start;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public FocusRequester getUp() {
        return this.up;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setCanFocus(boolean z) {
        this.canFocus = z;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setDown(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.down = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setEnd(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.end = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setEnter(Function1<? super FocusDirection, FocusRequester> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.enter = function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setExit(Function1<? super FocusDirection, FocusRequester> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.exit = function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setLeft(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.left = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setNext(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.next = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setPrevious(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.previous = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setRight(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.right = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setStart(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.start = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setUp(FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.up = focusRequester;
    }
}
