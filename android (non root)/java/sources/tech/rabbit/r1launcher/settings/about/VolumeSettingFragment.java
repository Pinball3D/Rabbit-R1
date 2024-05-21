package tech.rabbit.r1launcher.settings.about;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.adapter.SettingListAdapter;
import tech.rabbit.r1launcher.settings.volume.VolumeAdjustCard;
import tech.rabbit.r1launcher.settings.volume.VolumeListActivity;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;
import tech.rabbit.r1launcher.widget.SettingTitle;

/* compiled from: VolumeSettingFragment.kt */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J\b\u0010\u0015\u001a\u00020\u0010H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0002J&\u0010\u0018\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00132\b\u0010!\u001a\u0004\u0018\u00010\"J\u0018\u0010#\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00132\b\u0010!\u001a\u0004\u0018\u00010\"J\u0010\u0010$\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J\u001a\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0006\u0010(\u001a\u00020\u0010R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;", "Landroidx/fragment/app/Fragment;", "()V", "mAdapter", "Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;", "mRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "mRootView", "Landroid/view/View;", "mSettingTitle", "Ltech/rabbit/r1launcher/widget/SettingTitle;", "mVolumeAdjustCard", "Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;", "tagStr", "", "dismissVolumeCard", "", "doInit", "getStreamFromString", "", "str", "initRecyclerView", "isVolumeCardVisible", "", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onKeyCodeEventDown", "keyCode", "keyEvent", "Landroid/view/KeyEvent;", "onKeyCodeEventUp", "onRecyclerViewConfirmKeyDown", "onRecyclerViewConfirmKeyUp", "onViewCreated", "view", "showVolumeCard", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VolumeSettingFragment extends Fragment {
    public static final int $stable = 8;
    private SettingListAdapter mAdapter;
    private RecyclerView mRecyclerView;
    private View mRootView;
    private SettingTitle mSettingTitle;
    private VolumeAdjustCard mVolumeAdjustCard;
    private final String tagStr = "VolumeSettingFragment";

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_volume_settings_page, container, false);
        this.mRootView = inflate;
        this.mSettingTitle = inflate != null ? (SettingTitle) inflate.findViewById(R.id.volume_title_settings) : null;
        View view = this.mRootView;
        this.mRecyclerView = view != null ? (RecyclerView) view.findViewById(R.id.rv_volume_items) : null;
        View view2 = this.mRootView;
        this.mVolumeAdjustCard = view2 != null ? (VolumeAdjustCard) view2.findViewById(R.id.card_volume) : null;
        return this.mRootView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        doInit();
    }

    private final void doInit() {
        initRecyclerView();
        SettingTitle settingTitle = this.mSettingTitle;
        if (settingTitle != null) {
            settingTitle.setOnKeyDownCallback(new Function1<Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.about.VolumeSettingFragment$doInit$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i) {
                    Context requireContext = VolumeSettingFragment.this.requireContext();
                    Intrinsics.checkNotNull(requireContext, "null cannot be cast to non-null type tech.rabbit.r1launcher.settings.volume.VolumeListActivity");
                    ((VolumeListActivity) requireContext).finish();
                }
            });
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.settings.about.VolumeSettingFragment$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VolumeSettingFragment.doInit$lambda$0(VolumeSettingFragment.this);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doInit$lambda$0(VolumeSettingFragment this$0) {
        View view;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView recyclerView = this$0.mRecyclerView;
        if (recyclerView == null || (view = ViewGroupKt.get(recyclerView, 0)) == null) {
            return;
        }
        view.requestFocus();
    }

    private final void initRecyclerView() {
        RecyclerView recyclerView = this.mRecyclerView;
        Intrinsics.checkNotNull(recyclerView);
        String string = getString(R.string.settings_page_volume_voice);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(R.string.settings_page_volume_media);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = getString(R.string.settings_page_volume_sfx);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        List listOf = CollectionsKt.listOf((Object[]) new String[]{string, string2, string3});
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        Context context = getContext();
        if (context == null) {
            return;
        }
        Intrinsics.checkNotNull(context);
        SettingListAdapter settingListAdapter = new SettingListAdapter(context, listOf);
        settingListAdapter.setOnConfirmKeyUp(new Function1<String, Unit>() { // from class: tech.rabbit.r1launcher.settings.about.VolumeSettingFragment$initRecyclerView$1$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String str) {
                Intrinsics.checkNotNullParameter(str, "str");
                VolumeSettingFragment.this.onRecyclerViewConfirmKeyUp(str);
            }
        });
        settingListAdapter.setOnConfirmKeyDown(new Function1<String, Unit>() { // from class: tech.rabbit.r1launcher.settings.about.VolumeSettingFragment$initRecyclerView$1$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String str) {
                Intrinsics.checkNotNullParameter(str, "str");
                VolumeSettingFragment.this.onRecyclerViewConfirmKeyDown(str);
            }
        });
        this.mAdapter = settingListAdapter;
        recyclerView.setAdapter(settingListAdapter);
        SettingListAdapter settingListAdapter2 = this.mAdapter;
        if (settingListAdapter2 != null) {
            settingListAdapter2.setNewInstance(CollectionsKt.toMutableList((Collection) listOf));
        }
        recyclerView.setFocusable(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRecyclerViewConfirmKeyDown(String str) {
        Log.d(this.tagStr, "onRecyclerViewConfirmKeyDown: " + str);
        VolumeAdjustCard volumeAdjustCard = this.mVolumeAdjustCard;
        if (volumeAdjustCard != null) {
            volumeAdjustCard.setAudioStream(getStreamFromString(str));
        }
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.settings.about.VolumeSettingFragment$onRecyclerViewConfirmKeyDown$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                VolumeSettingFragment.this.showVolumeCard();
            }
        });
    }

    private final int getStreamFromString(String str) {
        if (Intrinsics.areEqual(str, getString(R.string.settings_page_volume_media))) {
            return 0;
        }
        return Intrinsics.areEqual(str, getString(R.string.settings_page_volume_voice)) ? 3 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRecyclerViewConfirmKeyUp(String str) {
        Log.d(this.tagStr, "onRecyclerViewConfirmKeyUp: " + str);
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.settings.about.VolumeSettingFragment$onRecyclerViewConfirmKeyUp$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                VolumeSettingFragment.this.dismissVolumeCard();
            }
        });
    }

    public final void showVolumeCard() {
        VolumeAdjustCard volumeAdjustCard = this.mVolumeAdjustCard;
        if (volumeAdjustCard == null) {
            return;
        }
        volumeAdjustCard.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissVolumeCard() {
        VolumeAdjustCard volumeAdjustCard = this.mVolumeAdjustCard;
        if (volumeAdjustCard == null) {
            return;
        }
        volumeAdjustCard.setVisibility(8);
    }

    private final boolean isVolumeCardVisible() {
        VolumeAdjustCard volumeAdjustCard = this.mVolumeAdjustCard;
        return volumeAdjustCard != null && volumeAdjustCard.getVisibility() == 0;
    }

    public final boolean onKeyCodeEventDown(int keyCode, KeyEvent keyEvent) {
        return (KeyCodeExtensionKt.isKeyCodeUp(keyCode) || KeyCodeExtensionKt.isKeyCodeDown(keyCode)) && isVolumeCardVisible();
    }

    public final boolean onKeyCodeEventUp(int keyCode, KeyEvent keyEvent) {
        if ((!KeyCodeExtensionKt.isKeyCodeDown(keyCode) && !KeyCodeExtensionKt.isKeyCodeUp(keyCode)) || !isVolumeCardVisible()) {
            return false;
        }
        VolumeAdjustCard volumeAdjustCard = this.mVolumeAdjustCard;
        if (volumeAdjustCard == null) {
            return true;
        }
        volumeAdjustCard.onKeyCodeEvent(keyCode);
        return true;
    }
}
