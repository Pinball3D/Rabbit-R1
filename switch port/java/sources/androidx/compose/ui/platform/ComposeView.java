package androidx.compose.ui.platform;

import android.content.Context;
import android.util.AttributeSet;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ComposeView.android.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\r\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\r\u0010\u0015\u001a\u00020\fH\u0017¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u001e\u0010\u0019\u001a\u00020\f2\u0011\u0010\t\u001a\r\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\b\r¢\u0006\u0002\u0010\u001aR!\u0010\t\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0002\b\r0\nX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f@RX\u0094\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, d2 = {"Landroidx/compose/ui/platform/ComposeView;", "Landroidx/compose/ui/platform/AbstractComposeView;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "content", "Landroidx/compose/runtime/MutableState;", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "<set-?>", "", "shouldCreateCompositionOnAttachedToWindow", "getShouldCreateCompositionOnAttachedToWindow$annotations", "()V", "getShouldCreateCompositionOnAttachedToWindow", "()Z", "Content", "(Landroidx/compose/runtime/Composer;I)V", "getAccessibilityClassName", "", "setContent", "(Lkotlin/jvm/functions/Function2;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposeView extends AbstractComposeView {
    public static final int $stable = 8;
    private final MutableState<Function2<Composer, Integer, Unit>> content;
    private boolean shouldCreateCompositionOnAttachedToWindow;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComposeView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComposeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    protected static /* synthetic */ void getShouldCreateCompositionOnAttachedToWindow$annotations() {
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    public /* synthetic */ ComposeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        MutableState<Function2<Composer, Integer, Unit>> mutableStateOf$default;
        Intrinsics.checkNotNullParameter(context, "context");
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.content = mutableStateOf$default;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void Content(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(420213850);
        ComposerKt.sourceInformation(startRestartGroup, "C(Content)427@17045L8:ComposeView.android.kt#itgzvw");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(420213850, i, -1, "androidx.compose.ui.platform.ComposeView.Content (ComposeView.android.kt:426)");
        }
        Function2<Composer, Integer, Unit> value = this.content.getValue();
        if (value != null) {
            value.invoke(startRestartGroup, 0);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.ComposeView$Content$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i2) {
                ComposeView.this.Content(composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        String name = getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "javaClass.name");
        return name;
    }

    public final void setContent(Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.shouldCreateCompositionOnAttachedToWindow = true;
        this.content.setValue(content);
        if (isAttachedToWindow()) {
            createComposition();
        }
    }
}
