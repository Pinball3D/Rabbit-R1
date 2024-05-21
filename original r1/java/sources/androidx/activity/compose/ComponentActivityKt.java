package androidx.activity.compose;

import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.platform.ComposeView;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: ComponentActivity.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a.\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\b\t¢\u0006\u0002\u0010\n\u001a\f\u0010\u000b\u001a\u00020\u0003*\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"DefaultActivityContentLayoutParams", "Landroid/view/ViewGroup$LayoutParams;", "setContent", "", "Landroidx/activity/ComponentActivity;", "parent", "Landroidx/compose/runtime/CompositionContext;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V", "setOwners", "activity-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComponentActivityKt {
    private static final ViewGroup.LayoutParams DefaultActivityContentLayoutParams = new ViewGroup.LayoutParams(-2, -2);

    public static /* synthetic */ void setContent$default(ComponentActivity componentActivity, CompositionContext compositionContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            compositionContext = null;
        }
        setContent(componentActivity, compositionContext, function2);
    }

    public static final void setContent(ComponentActivity componentActivity, CompositionContext compositionContext, Function2<? super Composer, ? super Integer, Unit> function2) {
        View childAt = ((ViewGroup) componentActivity.getWindow().getDecorView().findViewById(android.R.id.content)).getChildAt(0);
        ComposeView composeView = childAt instanceof ComposeView ? (ComposeView) childAt : null;
        if (composeView != null) {
            composeView.setParentCompositionContext(compositionContext);
            composeView.setContent(function2);
            return;
        }
        ComposeView composeView2 = new ComposeView(componentActivity, null, 0, 6, null);
        composeView2.setParentCompositionContext(compositionContext);
        composeView2.setContent(function2);
        setOwners(componentActivity);
        componentActivity.setContentView(composeView2, DefaultActivityContentLayoutParams);
    }

    private static final void setOwners(ComponentActivity componentActivity) {
        View decorView = componentActivity.getWindow().getDecorView();
        if (ViewTreeLifecycleOwner.get(decorView) == null) {
            ViewTreeLifecycleOwner.set(decorView, componentActivity);
        }
        if (ViewTreeViewModelStoreOwner.get(decorView) == null) {
            ViewTreeViewModelStoreOwner.set(decorView, componentActivity);
        }
        if (ViewTreeSavedStateRegistryOwner.get(decorView) == null) {
            ViewTreeSavedStateRegistryOwner.set(decorView, componentActivity);
        }
    }
}
