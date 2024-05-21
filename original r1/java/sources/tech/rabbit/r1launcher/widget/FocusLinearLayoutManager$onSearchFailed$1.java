package tech.rabbit.r1launcher.widget;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FocusLinearLayoutManager.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "Landroidx/recyclerview/widget/RecyclerView$State;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
final class FocusLinearLayoutManager$onSearchFailed$1 extends Lambda implements Function2<Integer, RecyclerView.State, Unit> {
    public static final FocusLinearLayoutManager$onSearchFailed$1 INSTANCE = new FocusLinearLayoutManager$onSearchFailed$1();

    FocusLinearLayoutManager$onSearchFailed$1() {
        super(2);
    }

    public final void invoke(int i, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Integer num, RecyclerView.State state) {
        invoke(num.intValue(), state);
        return Unit.INSTANCE;
    }
}
