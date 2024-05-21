package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;

/* compiled from: FocusOwner.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH&J\u001d\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0015J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\b\u0010\u001d\u001a\u00020\rH&J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020!H&J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\"H&J\b\u0010#\u001a\u00020\rH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006$À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/focus/FocusOwner;", "Landroidx/compose/ui/focus/FocusManager;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "modifier", "Landroidx/compose/ui/Modifier;", "getModifier", "()Landroidx/compose/ui/Modifier;", "clearFocus", "", "force", "", "refreshFocusEvents", "dispatchInterceptedSoftKeyboardEvent", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "dispatchInterceptedSoftKeyboardEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "dispatchKeyEvent", "dispatchKeyEvent-ZmokQxo", "dispatchRotaryEvent", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;", "getFocusRect", "Landroidx/compose/ui/geometry/Rect;", "releaseFocus", "scheduleInvalidation", "node", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "Landroidx/compose/ui/focus/FocusTargetNode;", "takeFocus", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface FocusOwner extends FocusManager {
    void clearFocus(boolean force, boolean refreshFocusEvents);

    /* renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo, reason: not valid java name */
    boolean mo2338dispatchInterceptedSoftKeyboardEventZmokQxo(KeyEvent keyEvent);

    /* renamed from: dispatchKeyEvent-ZmokQxo, reason: not valid java name */
    boolean mo2339dispatchKeyEventZmokQxo(KeyEvent keyEvent);

    boolean dispatchRotaryEvent(RotaryScrollEvent event);

    Rect getFocusRect();

    LayoutDirection getLayoutDirection();

    Modifier getModifier();

    void releaseFocus();

    void scheduleInvalidation(FocusEventModifierNode node);

    void scheduleInvalidation(FocusPropertiesModifierNode node);

    void scheduleInvalidation(FocusTargetNode node);

    void setLayoutDirection(LayoutDirection layoutDirection);

    void takeFocus();
}
