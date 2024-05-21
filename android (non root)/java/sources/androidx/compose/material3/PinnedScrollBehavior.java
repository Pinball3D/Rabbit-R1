package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppBar.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0006X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0018X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/compose/material3/PinnedScrollBehavior;", "Landroidx/compose/material3/TopAppBarScrollBehavior;", SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/TopAppBarState;", "canScroll", "Lkotlin/Function0;", "", "(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;)V", "getCanScroll", "()Lkotlin/jvm/functions/Function0;", "flingAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "", "getFlingAnimationSpec", "()Landroidx/compose/animation/core/DecayAnimationSpec;", "isPinned", "()Z", "nestedScrollConnection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "getNestedScrollConnection", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "setNestedScrollConnection", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V", "snapAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "getSnapAnimationSpec", "()Landroidx/compose/animation/core/AnimationSpec;", "getState", "()Landroidx/compose/material3/TopAppBarState;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class PinnedScrollBehavior implements TopAppBarScrollBehavior {
    private final Function0<Boolean> canScroll;
    private final DecayAnimationSpec<Float> flingAnimationSpec;
    private final boolean isPinned;
    private NestedScrollConnection nestedScrollConnection;
    private final AnimationSpec<Float> snapAnimationSpec;
    private final TopAppBarState state;

    public final Function0<Boolean> getCanScroll() {
        return this.canScroll;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public DecayAnimationSpec<Float> getFlingAnimationSpec() {
        return this.flingAnimationSpec;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public NestedScrollConnection getNestedScrollConnection() {
        return this.nestedScrollConnection;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public AnimationSpec<Float> getSnapAnimationSpec() {
        return this.snapAnimationSpec;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public TopAppBarState getState() {
        return this.state;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    /* renamed from: isPinned, reason: from getter */
    public boolean getIsPinned() {
        return this.isPinned;
    }

    public void setNestedScrollConnection(NestedScrollConnection nestedScrollConnection) {
        Intrinsics.checkNotNullParameter(nestedScrollConnection, "<set-?>");
        this.nestedScrollConnection = nestedScrollConnection;
    }

    public PinnedScrollBehavior(TopAppBarState state, Function0<Boolean> canScroll) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(canScroll, "canScroll");
        this.state = state;
        this.canScroll = canScroll;
        this.isPinned = true;
        this.nestedScrollConnection = new NestedScrollConnection() { // from class: androidx.compose.material3.PinnedScrollBehavior$nestedScrollConnection$1
            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
            /* renamed from: onPostScroll-DzOQY0M */
            public long mo343onPostScrollDzOQY0M(long consumed, long available, int source) {
                if (!PinnedScrollBehavior.this.getCanScroll().invoke().booleanValue()) {
                    return Offset.INSTANCE.m2416getZeroF1C5BW0();
                }
                if (Offset.m2401getYimpl(consumed) == 0.0f && Offset.m2401getYimpl(available) > 0.0f) {
                    PinnedScrollBehavior.this.getState().setContentOffset(0.0f);
                } else {
                    TopAppBarState state2 = PinnedScrollBehavior.this.getState();
                    state2.setContentOffset(state2.getContentOffset() + Offset.m2401getYimpl(consumed));
                }
                return Offset.INSTANCE.m2416getZeroF1C5BW0();
            }
        };
    }

    public /* synthetic */ PinnedScrollBehavior(TopAppBarState topAppBarState, AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(topAppBarState, (i & 2) != 0 ? new Function0<Boolean>() { // from class: androidx.compose.material3.PinnedScrollBehavior.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return true;
            }
        } : anonymousClass1);
    }
}
