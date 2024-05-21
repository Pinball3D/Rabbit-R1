package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import io.sentry.Session;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusLinearLayoutManager.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001BO\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\u001a\b\u0002\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\u0010\u0010B+\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0005¢\u0006\u0002\u0010\u0015J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\f\u0010\u001b\u001a\u00060\u001cR\u00020\tH\u0002J\b\u0010\u001d\u001a\u00020\u000eH\u0002J.\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u00052\n\u0010!\u001a\u00060\u001cR\u00020\t2\u0006\u0010\"\u001a\u00020\u000eH\u0016J\u001a\u0010#\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0005H\u0016J\b\u0010$\u001a\u00020\u000fH\u0002J\b\u0010%\u001a\u00020\u000fH\u0002R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082D¢\u0006\u0002\n\u0000R \u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "context", "Landroid/content/Context;", Device.JsonKeys.ORIENTATION, "", "reverseLayout", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "stopAt", "Ltech/rabbit/r1launcher/widget/StopPoint;", "onSearchFailed", "Lkotlin/Function2;", "Landroidx/recyclerview/widget/RecyclerView$State;", "", "(Landroid/content/Context;IZLandroidx/recyclerview/widget/RecyclerView;Ltech/rabbit/r1launcher/widget/StopPoint;Lkotlin/jvm/functions/Function2;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "defStyleAttr", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "TAG", "", "findRecyclerViewParamsView", "Landroid/view/View;", "view", "getRecycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "getState", "onFocusSearchFailed", "focused", "direction", "recycler", SentryThread.JsonKeys.STATE, "onInterceptFocusSearch", "startInterceptRequestLayout", "stopInterceptRequestLayout", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FocusLinearLayoutManager extends LinearLayoutManager {
    public static final int $stable = 8;
    private final String TAG;
    private Function2<? super Integer, ? super RecyclerView.State, Unit> onSearchFailed;
    private RecyclerView recyclerView;
    private StopPoint stopAt;

    public /* synthetic */ FocusLinearLayoutManager(Context context, int i, boolean z, RecyclerView recyclerView, StopPoint stopPoint, AnonymousClass1 anonymousClass1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, i, z, recyclerView, (i2 & 16) != 0 ? StopPoint.NONE : stopPoint, (i2 & 32) != 0 ? new Function2<Integer, RecyclerView.State, Unit>() { // from class: tech.rabbit.r1launcher.widget.FocusLinearLayoutManager.1
            public final void invoke(int i3, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(state, "<anonymous parameter 1>");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, RecyclerView.State state) {
                invoke(num.intValue(), state);
                return Unit.INSTANCE;
            }
        } : anonymousClass1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusLinearLayoutManager(Context context, int i, boolean z, RecyclerView recyclerView, StopPoint stopAt, Function2<? super Integer, ? super RecyclerView.State, Unit> onSearchFailed) {
        super(context, i, z);
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(stopAt, "stopAt");
        Intrinsics.checkNotNullParameter(onSearchFailed, "onSearchFailed");
        this.stopAt = StopPoint.NONE;
        FocusLinearLayoutManager$onSearchFailed$1 focusLinearLayoutManager$onSearchFailed$1 = FocusLinearLayoutManager$onSearchFailed$1.INSTANCE;
        this.TAG = "FocusLinerLayoutManager";
        this.stopAt = stopAt;
        this.recyclerView = recyclerView;
        this.onSearchFailed = onSearchFailed;
    }

    public FocusLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.stopAt = StopPoint.NONE;
        this.onSearchFailed = FocusLinearLayoutManager$onSearchFailed$1.INSTANCE;
        this.TAG = "FocusLinerLayoutManager";
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onInterceptFocusSearch(View focused, int direction) {
        Intrinsics.checkNotNullParameter(focused, "focused");
        Log.i(this.TAG, "onInterceptFocusSearch , " + direction);
        int itemCount = getItemCount();
        View findRecyclerViewParamsView = findRecyclerViewParamsView(focused);
        RecyclerView recyclerView = null;
        if (findRecyclerViewParamsView == null) {
            return null;
        }
        int position = getPosition(findRecyclerViewParamsView);
        Log.i(this.TAG, "onInterceptFocusSearch , focused = " + position + " direction = " + direction);
        if (direction == 33) {
            position--;
        } else if (direction == 130) {
            position++;
        }
        if (this.stopAt == StopPoint.TOP && position == -1 && direction == 33) {
            return focused;
        }
        if (this.stopAt == StopPoint.BOTTOM) {
            RecyclerView recyclerView2 = this.recyclerView;
            if (recyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
                recyclerView2 = null;
            }
            RecyclerView.Adapter adapter = recyclerView2.getAdapter();
            if (adapter != null && position == adapter.getItemCount() && direction == 130) {
                return focused;
            }
        }
        Log.i(this.TAG, "onInterceptFocusSearch , fromPos = " + position + " count = " + itemCount + ' ');
        if (position == -1 && direction == 33) {
            return null;
        }
        RecyclerView recyclerView3 = this.recyclerView;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView3 = null;
        }
        RecyclerView.Adapter adapter2 = recyclerView3.getAdapter();
        if (adapter2 != null && position == adapter2.getItemCount() && direction == 130) {
            return null;
        }
        if (position < 0 || position >= itemCount) {
            return focused;
        }
        Log.i(this.TAG, "onInterceptFocusSearch , fromPos = " + position + ' ');
        RecyclerView recyclerView4 = this.recyclerView;
        if (recyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView4 = null;
        }
        RecyclerView.ViewHolder findViewHolderForLayoutPosition = recyclerView4.findViewHolderForLayoutPosition(position);
        View view = findViewHolderForLayoutPosition != null ? findViewHolderForLayoutPosition.itemView : null;
        Log.i(this.TAG, "onInterceptFocusSearch: holder=" + findViewHolderForLayoutPosition + ",view=" + view);
        if (findViewHolderForLayoutPosition == null) {
            RecyclerView recyclerView5 = this.recyclerView;
            if (recyclerView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            } else {
                recyclerView = recyclerView5;
            }
            RecyclerView.Adapter adapter3 = recyclerView.getAdapter();
            if (position < (adapter3 != null ? adapter3.getItemCount() : 0)) {
                Log.i(this.TAG, "onInterceptFocusSearch: scroll");
                RecyclerView.Recycler recycler = getRecycler();
                RecyclerView.State state = getState();
                startInterceptRequestLayout();
                View onFocusSearchFailed = super.onFocusSearchFailed(focused, direction, recycler, state);
                stopInterceptRequestLayout();
                Log.i(this.TAG, "onInterceptFocusSearch: view=" + onFocusSearchFailed);
                return onFocusSearchFailed;
            }
        }
        return view == null ? focused : Intrinsics.areEqual(view.getTag(), "focusable") ? view : onInterceptFocusSearch(view, direction);
    }

    private final void startInterceptRequestLayout() {
        Method declaredMethod = RecyclerView.class.getDeclaredMethod("startInterceptRequestLayout", new Class[0]);
        declaredMethod.setAccessible(true);
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView = null;
        }
        declaredMethod.invoke(recyclerView, new Object[0]);
    }

    private final void stopInterceptRequestLayout() {
        Method declaredMethod = RecyclerView.class.getDeclaredMethod("stopInterceptRequestLayout", Boolean.TYPE);
        declaredMethod.setAccessible(true);
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView = null;
        }
        declaredMethod.invoke(recyclerView, false);
    }

    private final RecyclerView.Recycler getRecycler() {
        Field declaredField = RecyclerView.class.getDeclaredField("mRecycler");
        declaredField.setAccessible(true);
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView = null;
        }
        Object obj = declaredField.get(recyclerView);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Recycler");
        return (RecyclerView.Recycler) obj;
    }

    private final RecyclerView.State getState() {
        Field declaredField = RecyclerView.class.getDeclaredField("mState");
        declaredField.setAccessible(true);
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView = null;
        }
        Object obj = declaredField.get(recyclerView);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.State");
        return (RecyclerView.State) obj;
    }

    private final View findRecyclerViewParamsView(View view) {
        if (view.getParent() == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof RecyclerView.LayoutParams) {
            return view;
        }
        Object parent = view.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        return findRecyclerViewParamsView((View) parent);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View focused, int direction, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(focused, "focused");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        this.onSearchFailed.invoke(Integer.valueOf(direction), state);
        Log.i(this.TAG, "onFocusSearchFailed: ");
        return super.onFocusSearchFailed(focused, direction, recycler, state);
    }
}
