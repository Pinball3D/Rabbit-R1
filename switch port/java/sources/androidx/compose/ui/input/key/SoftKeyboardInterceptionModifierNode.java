package androidx.compose.ui.input.key;

import androidx.compose.ui.node.DelegatableNode;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;

/* compiled from: SoftKeyboardInterceptionModifierNode.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\u0007ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;", "Landroidx/compose/ui/node/DelegatableNode;", "onInterceptKeyBeforeSoftKeyboard", "", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/ui/input/key/KeyEvent;", "onInterceptKeyBeforeSoftKeyboard-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "onPreInterceptKeyBeforeSoftKeyboard", "onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SoftKeyboardInterceptionModifierNode extends DelegatableNode {
    /* renamed from: onInterceptKeyBeforeSoftKeyboard-ZmokQxo */
    boolean mo3312onInterceptKeyBeforeSoftKeyboardZmokQxo(android.view.KeyEvent event);

    /* renamed from: onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo */
    boolean mo3313onPreInterceptKeyBeforeSoftKeyboardZmokQxo(android.view.KeyEvent event);
}
