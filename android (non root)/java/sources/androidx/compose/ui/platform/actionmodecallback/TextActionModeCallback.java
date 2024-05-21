package androidx.compose.ui.platform.actionmodecallback;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextActionModeCallback.android.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001Bi\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\u001d\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0000¢\u0006\u0002\b J(\u0010!\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0002J\u001a\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010\u001e\u001a\u0004\u0018\u00010'J\u001a\u0010(\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0006\u0010)\u001a\u00020\u0004J\u001a\u0010*\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0015\u0010+\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0001¢\u0006\u0002\b,R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\r\"\u0004\b\u000f\u0010\u0010R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u0010R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\r\"\u0004\b\u0014\u0010\u0010R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\r\"\u0004\b\u0016\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006-"}, d2 = {"Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;", "", "onActionModeDestroy", "Lkotlin/Function0;", "", "rect", "Landroidx/compose/ui/geometry/Rect;", "onCopyRequested", "onPasteRequested", "onCutRequested", "onSelectAllRequested", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getOnActionModeDestroy", "()Lkotlin/jvm/functions/Function0;", "getOnCopyRequested", "setOnCopyRequested", "(Lkotlin/jvm/functions/Function0;)V", "getOnCutRequested", "setOnCutRequested", "getOnPasteRequested", "setOnPasteRequested", "getOnSelectAllRequested", "setOnSelectAllRequested", "getRect", "()Landroidx/compose/ui/geometry/Rect;", "setRect", "(Landroidx/compose/ui/geometry/Rect;)V", "addMenuItem", "menu", "Landroid/view/Menu;", "item", "Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;", "addMenuItem$ui_release", "addOrRemoveMenuItem", "callback", "onActionItemClicked", "", "mode", "Landroid/view/ActionMode;", "Landroid/view/MenuItem;", "onCreateActionMode", "onDestroyActionMode", "onPrepareActionMode", "updateMenuItems", "updateMenuItems$ui_release", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextActionModeCallback {
    private final Function0<Unit> onActionModeDestroy;
    private Function0<Unit> onCopyRequested;
    private Function0<Unit> onCutRequested;
    private Function0<Unit> onPasteRequested;
    private Function0<Unit> onSelectAllRequested;
    private Rect rect;

    public TextActionModeCallback() {
        this(null, null, null, null, null, null, 63, null);
    }

    public final Function0<Unit> getOnActionModeDestroy() {
        return this.onActionModeDestroy;
    }

    public final Function0<Unit> getOnCopyRequested() {
        return this.onCopyRequested;
    }

    public final Function0<Unit> getOnCutRequested() {
        return this.onCutRequested;
    }

    public final Function0<Unit> getOnPasteRequested() {
        return this.onPasteRequested;
    }

    public final Function0<Unit> getOnSelectAllRequested() {
        return this.onSelectAllRequested;
    }

    public final Rect getRect() {
        return this.rect;
    }

    public final void setOnCopyRequested(Function0<Unit> function0) {
        this.onCopyRequested = function0;
    }

    public final void setOnCutRequested(Function0<Unit> function0) {
        this.onCutRequested = function0;
    }

    public final void setOnPasteRequested(Function0<Unit> function0) {
        this.onPasteRequested = function0;
    }

    public final void setOnSelectAllRequested(Function0<Unit> function0) {
        this.onSelectAllRequested = function0;
    }

    public final void setRect(Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<set-?>");
        this.rect = rect;
    }

    public TextActionModeCallback(Function0<Unit> function0, Rect rect, Function0<Unit> function02, Function0<Unit> function03, Function0<Unit> function04, Function0<Unit> function05) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.onActionModeDestroy = function0;
        this.rect = rect;
        this.onCopyRequested = function02;
        this.onPasteRequested = function03;
        this.onCutRequested = function04;
        this.onSelectAllRequested = function05;
    }

    public /* synthetic */ TextActionModeCallback(Function0 function0, Rect rect, Function0 function02, Function0 function03, Function0 function04, Function0 function05, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : function0, (i & 2) != 0 ? Rect.INSTANCE.getZero() : rect, (i & 4) != 0 ? null : function02, (i & 8) != 0 ? null : function03, (i & 16) != 0 ? null : function04, (i & 32) != 0 ? null : function05);
    }

    public final boolean onCreateActionMode(ActionMode mode, Menu menu) {
        if (menu == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        if (mode == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        if (this.onCopyRequested != null) {
            addMenuItem$ui_release(menu, MenuItemOption.Copy);
        }
        if (this.onPasteRequested != null) {
            addMenuItem$ui_release(menu, MenuItemOption.Paste);
        }
        if (this.onCutRequested != null) {
            addMenuItem$ui_release(menu, MenuItemOption.Cut);
        }
        if (this.onSelectAllRequested == null) {
            return true;
        }
        addMenuItem$ui_release(menu, MenuItemOption.SelectAll);
        return true;
    }

    public final boolean onPrepareActionMode(ActionMode mode, Menu menu) {
        if (mode == null || menu == null) {
            return false;
        }
        updateMenuItems$ui_release(menu);
        return true;
    }

    public final boolean onActionItemClicked(ActionMode mode, MenuItem item) {
        Intrinsics.checkNotNull(item);
        int itemId = item.getItemId();
        if (itemId == MenuItemOption.Copy.getId()) {
            Function0<Unit> function0 = this.onCopyRequested;
            if (function0 != null) {
                function0.invoke();
            }
        } else if (itemId == MenuItemOption.Paste.getId()) {
            Function0<Unit> function02 = this.onPasteRequested;
            if (function02 != null) {
                function02.invoke();
            }
        } else if (itemId == MenuItemOption.Cut.getId()) {
            Function0<Unit> function03 = this.onCutRequested;
            if (function03 != null) {
                function03.invoke();
            }
        } else {
            if (itemId != MenuItemOption.SelectAll.getId()) {
                return false;
            }
            Function0<Unit> function04 = this.onSelectAllRequested;
            if (function04 != null) {
                function04.invoke();
            }
        }
        if (mode == null) {
            return true;
        }
        mode.finish();
        return true;
    }

    public final void onDestroyActionMode() {
        Function0<Unit> function0 = this.onActionModeDestroy;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void updateMenuItems$ui_release(Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        addOrRemoveMenuItem(menu, MenuItemOption.Copy, this.onCopyRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.Paste, this.onPasteRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.Cut, this.onCutRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.SelectAll, this.onSelectAllRequested);
    }

    public final void addMenuItem$ui_release(Menu menu, MenuItemOption item) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(item, "item");
        menu.add(0, item.getId(), item.getOrder(), item.getTitleResource()).setShowAsAction(1);
    }

    private final void addOrRemoveMenuItem(Menu menu, MenuItemOption item, Function0<Unit> callback) {
        if (callback != null && menu.findItem(item.getId()) == null) {
            addMenuItem$ui_release(menu, item);
        } else {
            if (callback != null || menu.findItem(item.getId()) == null) {
                return;
            }
            menu.removeItem(item.getId());
        }
    }
}
