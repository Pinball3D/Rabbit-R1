package tech.rabbit.r1launcher.settings;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.fragment.app.Fragment;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.spacing.DpadLinearSpacingDecoration;
import java.util.Collection;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;

/* compiled from: Settings2Fragment.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u001c\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Ltech/rabbit/r1launcher/settings/Settings2Fragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;", "()V", "adapter", "Ltech/rabbit/r1launcher/settings/SettingsAdapter;", "getAdapter", "()Ltech/rabbit/r1launcher/settings/SettingsAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "rvList", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onGlobalFocusChanged", "oldFocus", "newFocus", "onViewCreated", "view", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Settings2Fragment extends Fragment implements ViewTreeObserver.OnGlobalFocusChangeListener {
    public static final int $stable = 8;

    /* renamed from: adapter$delegate, reason: from kotlin metadata */
    private final Lazy adapter;
    private DpadRecyclerView rvList;

    /* compiled from: Settings2Fragment.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<SettingItems> entries$0 = EnumEntriesKt.enumEntries(SettingItems.values());
    }

    public Settings2Fragment() {
        super(R.layout.fragment_settings2);
        this.adapter = LazyKt.lazy(Settings2Fragment$adapter$2.INSTANCE);
    }

    private final SettingsAdapter getAdapter() {
        return (SettingsAdapter) this.adapter.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        DpadRecyclerView dpadRecyclerView = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.cblv_title);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(findViewById, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.Settings2Fragment$onCreateView$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                Settings2Fragment.this.requireActivity().finish();
            }
        });
        View findViewById2 = onCreateView.findViewById(R.id.rv_list);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        DpadRecyclerView dpadRecyclerView2 = (DpadRecyclerView) findViewById2;
        this.rvList = dpadRecyclerView2;
        if (dpadRecyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
            dpadRecyclerView2 = null;
        }
        dpadRecyclerView2.addItemDecoration(DpadLinearSpacingDecoration.Companion.create$default(DpadLinearSpacingDecoration.INSTANCE, UiExtensionsKt.getDp(7), 0, 0, 4, null));
        DpadRecyclerView dpadRecyclerView3 = this.rvList;
        if (dpadRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
        } else {
            dpadRecyclerView = dpadRecyclerView3;
        }
        dpadRecyclerView.setAdapter(getAdapter());
        onCreateView.getViewTreeObserver().addOnGlobalFocusChangeListener(this);
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        ViewTreeObserver viewTreeObserver;
        View view = getView();
        if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
            viewTreeObserver.removeOnGlobalFocusChangeListener(this);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getAdapter().setNewInstance(CollectionsKt.toMutableList((Collection) EntriesMappings.entries$0));
        DpadRecyclerView dpadRecyclerView = this.rvList;
        if (dpadRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
            dpadRecyclerView = null;
        }
        dpadRecyclerView.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.Settings2Fragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Settings2Fragment.onViewCreated$lambda$1(Settings2Fragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(Settings2Fragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DpadRecyclerView dpadRecyclerView = this$0.rvList;
        DpadRecyclerView dpadRecyclerView2 = null;
        if (dpadRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
            dpadRecyclerView = null;
        }
        dpadRecyclerView.requestFocus();
        DpadRecyclerView dpadRecyclerView3 = this$0.rvList;
        if (dpadRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
        } else {
            dpadRecyclerView2 = dpadRecyclerView3;
        }
        dpadRecyclerView2.setSelectedPosition(0);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View oldFocus, View newFocus) {
        DpadRecyclerView dpadRecyclerView = null;
        if (oldFocus != null && oldFocus.getId() == R.id.cblv_title) {
            DpadRecyclerView dpadRecyclerView2 = this.rvList;
            if (dpadRecyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rvList");
                dpadRecyclerView2 = null;
            }
            ViewGroup.LayoutParams layoutParams = dpadRecyclerView2.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (marginLayoutParams == null || marginLayoutParams.topMargin != UiExtensionsKt.getDp(44)) {
                DpadRecyclerView dpadRecyclerView3 = this.rvList;
                if (dpadRecyclerView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("rvList");
                } else {
                    dpadRecyclerView = dpadRecyclerView3;
                }
                DpadRecyclerView dpadRecyclerView4 = dpadRecyclerView;
                ViewGroup.LayoutParams layoutParams2 = dpadRecyclerView4.getLayoutParams();
                if (layoutParams2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                }
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                marginLayoutParams2.topMargin = UiExtensionsKt.getDp(44);
                dpadRecyclerView4.setLayoutParams(marginLayoutParams2);
                return;
            }
            return;
        }
        if (newFocus == null || newFocus.getId() != R.id.cblv_title) {
            return;
        }
        DpadRecyclerView dpadRecyclerView5 = this.rvList;
        if (dpadRecyclerView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
            dpadRecyclerView5 = null;
        }
        ViewGroup.LayoutParams layoutParams3 = dpadRecyclerView5.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        if (marginLayoutParams3 == null || marginLayoutParams3.topMargin != UiExtensionsKt.getDp(40)) {
            DpadRecyclerView dpadRecyclerView6 = this.rvList;
            if (dpadRecyclerView6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rvList");
            } else {
                dpadRecyclerView = dpadRecyclerView6;
            }
            DpadRecyclerView dpadRecyclerView7 = dpadRecyclerView;
            ViewGroup.LayoutParams layoutParams4 = dpadRecyclerView7.getLayoutParams();
            if (layoutParams4 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
            marginLayoutParams4.topMargin = UiExtensionsKt.getDp(40);
            dpadRecyclerView7.setLayoutParams(marginLayoutParams4);
        }
    }
}
