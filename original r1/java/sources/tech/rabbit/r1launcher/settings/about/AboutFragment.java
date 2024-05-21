package tech.rabbit.r1launcher.settings.about;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.rubensousa.dpadrecyclerview.spacing.DpadLinearSpacingDecoration;
import io.sentry.protocol.Device;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.BuildConfig;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.settings.about.AboutFragment$adapter$2;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;
import tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtView;
import tech.rabbit.r1launcher.widget.scrollbar.supporter.RecyclerViewSupporter;

/* compiled from: AboutFragment.kt */
@Metadata(d1 = {"\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000f0\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0016J\u001a\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Ltech/rabbit/r1launcher/settings/about/AboutFragment;", "Landroidx/fragment/app/Fragment;", "()V", "adapter", "tech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1", "getAdapter", "()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;", "adapter$delegate", "Lkotlin/Lazy;", "rvList", "Landroidx/recyclerview/widget/RecyclerView;", "sbevScrollBar", "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;", "getItems", "", "Lkotlin/Pair;", "", "getVersion", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onPause", "onResume", "onViewCreated", "view", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AboutFragment extends Fragment {
    public static final int $stable = 8;

    /* renamed from: adapter$delegate, reason: from kotlin metadata */
    private final Lazy adapter;
    private RecyclerView rvList;
    private ScrollBarExtView sbevScrollBar;

    public AboutFragment() {
        super(R.layout.fragment_about);
        this.adapter = LazyKt.lazy(new Function0<AboutFragment$adapter$2.AnonymousClass1>() { // from class: tech.rabbit.r1launcher.settings.about.AboutFragment$adapter$2
            /* JADX WARN: Type inference failed for: r0v0, types: [tech.rabbit.r1launcher.settings.about.AboutFragment$adapter$2$1] */
            @Override // kotlin.jvm.functions.Function0
            public final AnonymousClass1 invoke() {
                return new BaseQuickAdapter<Pair<? extends String, ? extends String>, BaseViewHolder>(R.layout.item_about_info) { // from class: tech.rabbit.r1launcher.settings.about.AboutFragment$adapter$2.1
                    @Override // com.chad.library.adapter.base.BaseQuickAdapter
                    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Pair<? extends String, ? extends String> pair) {
                        convert2(baseViewHolder, (Pair<String, String>) pair);
                    }

                    /* renamed from: convert, reason: avoid collision after fix types in other method */
                    protected void convert2(BaseViewHolder holder, Pair<String, String> item) {
                        Intrinsics.checkNotNullParameter(holder, "holder");
                        Intrinsics.checkNotNullParameter(item, "item");
                        holder.setText(R.id.tv_label, item.getFirst());
                        holder.setText(R.id.tv_value, item.getSecond());
                    }
                };
            }
        });
    }

    private final AboutFragment$adapter$2.AnonymousClass1 getAdapter() {
        return (AboutFragment$adapter$2.AnonymousClass1) this.adapter.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        RLog.d("AboutFragment, onCreateView");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        RecyclerView recyclerView = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.cblv_title);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(findViewById, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.about.AboutFragment$onCreateView$1$1
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
                AboutFragment.this.requireActivity().finish();
            }
        });
        View findViewById2 = onCreateView.findViewById(R.id.rv_list);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        RecyclerView recyclerView2 = (RecyclerView) findViewById2;
        this.rvList = recyclerView2;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
            recyclerView2 = null;
        }
        recyclerView2.addItemDecoration(DpadLinearSpacingDecoration.Companion.create$default(DpadLinearSpacingDecoration.INSTANCE, UiExtensionsKt.getDp(9), 0, 0, 6, null));
        RecyclerView recyclerView3 = this.rvList;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
            recyclerView3 = null;
        }
        recyclerView3.setAdapter(getAdapter());
        View findViewById3 = onCreateView.findViewById(R.id.sbev_scroll_bar);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        ScrollBarExtView scrollBarExtView = (ScrollBarExtView) findViewById3;
        this.sbevScrollBar = scrollBarExtView;
        if (scrollBarExtView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sbevScrollBar");
            scrollBarExtView = null;
        }
        RecyclerView recyclerView4 = this.rvList;
        if (recyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvList");
        } else {
            recyclerView = recyclerView4;
        }
        scrollBarExtView.attachSupporter(new RecyclerViewSupporter(recyclerView));
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getAdapter().setNewInstance(getItems());
        RLog.d("AboutFragment, onViewCreated");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        RLog.d("AboutFragment, onResume");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        RLog.d("AboutFragment, onPause");
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        RLog.d("AboutFragment, onDestroyView");
        ScrollBarExtView scrollBarExtView = this.sbevScrollBar;
        if (scrollBarExtView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sbevScrollBar");
            scrollBarExtView = null;
        }
        scrollBarExtView.detachSupporter();
        super.onDestroyView();
    }

    private final List<Pair<String, String>> getItems() {
        SystemControllerUtil systemControllerUtil = SystemControllerUtil.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        SystemControllerUtil systemControllerUtil2 = SystemControllerUtil.INSTANCE;
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        SystemControllerUtil systemControllerUtil3 = SystemControllerUtil.INSTANCE;
        Context requireContext3 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext3, "requireContext(...)");
        return CollectionsKt.mutableListOf(TuplesKt.to(Device.JsonKeys.MODEL, Build.MODEL), TuplesKt.to("r1OS version", getVersion()), TuplesKt.to("imei", systemControllerUtil.getImei(requireContext)), TuplesKt.to("memory", systemControllerUtil2.getDeviceRamSize(requireContext2)), TuplesKt.to("storage", systemControllerUtil3.getDeviceStorage(requireContext3)));
    }

    private final String getVersion() {
        Object obj;
        Pair pair;
        Object obj2 = BuildConfig.VERSION_NAME;
        try {
            Result.Companion companion = Result.INSTANCE;
            AboutFragment aboutFragment = this;
            obj = Result.m5698constructorimpl((String) StringsKt.split$default((CharSequence) BuildConfig.VERSION_NAME, new String[]{"-"}, false, 0, 6, (Object) null).get(0));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            obj = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (!Result.m5704isFailureimpl(obj)) {
            obj2 = obj;
        }
        String str = (String) obj2;
        String str2 = Build.DISPLAY;
        Intrinsics.checkNotNull(str2);
        List split$default = StringsKt.split$default(str2.subSequence(StringsKt.indexOf$default((CharSequence) str2, "_v", 0, false, 6, (Object) null) + 2, str2.length()), new String[]{"_"}, false, 0, 6, (Object) null);
        if (split$default.size() > 2) {
            pair = TuplesKt.to(((String) split$default.get(split$default.size() - 3)) + '_' + ((String) split$default.get(split$default.size() - 2)), split$default.get(split$default.size() - 1));
        } else {
            pair = TuplesKt.to(split$default.get(split$default.size() - 2), split$default.get(split$default.size() - 1));
        }
        String str3 = (String) pair.component1();
        String str4 = (String) pair.component2();
        StringBuilder append = new StringBuilder().append(str3).append('(');
        String l = Long.toString(Util.toLongOrDefault(str4.subSequence(0, 8).toString(), 0L), CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(l, "toString(...)");
        String upperCase = l.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return str + '/' + append.append(upperCase).append(')').toString();
    }
}
