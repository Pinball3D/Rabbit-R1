package androidx.compose.ui.node;

import android.view.KeyEvent;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;

/* compiled from: RootForTest.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u000e\u001a\u00020\u000fH\u0017J\u001d\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u0016À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/RootForTest;", "", "density", "Landroidx/compose/ui/unit/Density;", "getDensity", "()Landroidx/compose/ui/unit/Density;", "semanticsOwner", "Landroidx/compose/ui/semantics/SemanticsOwner;", "getSemanticsOwner", "()Landroidx/compose/ui/semantics/SemanticsOwner;", "textInputService", "Landroidx/compose/ui/text/input/TextInputService;", "getTextInputService", "()Landroidx/compose/ui/text/input/TextInputService;", "measureAndLayoutForTest", "", "sendKeyEvent", "", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "sendKeyEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface RootForTest {
    Density getDensity();

    SemanticsOwner getSemanticsOwner();

    TextInputService getTextInputService();

    default void measureAndLayoutForTest() {
    }

    /* renamed from: sendKeyEvent-ZmokQxo, reason: not valid java name */
    boolean mo4147sendKeyEventZmokQxo(KeyEvent keyEvent);
}
