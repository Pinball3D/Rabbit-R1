package tech.rabbit.r1launcher.settings.adapter;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import defpackage.AppConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.SettingSwitch;

/* compiled from: SettingListAdapter.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0014J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0002R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR&\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u0019"}, d2 = {"Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "context", "Landroid/content/Context;", "holdItems", "", "(Landroid/content/Context;Ljava/util/List;)V", "onConfirmKeyDown", "Lkotlin/Function1;", "", "getOnConfirmKeyDown", "()Lkotlin/jvm/functions/Function1;", "setOnConfirmKeyDown", "(Lkotlin/jvm/functions/Function1;)V", "onConfirmKeyUp", "getOnConfirmKeyUp", "setOnConfirmKeyUp", "convert", "holder", "item", "isEnableTerminal", "", CmcdHeadersFactory.STREAMING_FORMAT_SS, "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingListAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public static final int $stable = 8;
    private List<String> holdItems;
    private Function1<? super String, Unit> onConfirmKeyDown;
    private Function1<? super String, Unit> onConfirmKeyUp;

    public final Function1<String, Unit> getOnConfirmKeyDown() {
        return this.onConfirmKeyDown;
    }

    public final Function1<String, Unit> getOnConfirmKeyUp() {
        return this.onConfirmKeyUp;
    }

    public final void setOnConfirmKeyDown(Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onConfirmKeyDown = function1;
    }

    public final void setOnConfirmKeyUp(Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onConfirmKeyUp = function1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingListAdapter(Context context, List<String> holdItems) {
        super(R.layout.item_layout_settings_list, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(holdItems, "holdItems");
        this.holdItems = holdItems;
        this.onConfirmKeyUp = new Function1<String, Unit>() { // from class: tech.rabbit.r1launcher.settings.adapter.SettingListAdapter$onConfirmKeyUp$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }
        };
        this.onConfirmKeyDown = new Function1<String, Unit>() { // from class: tech.rabbit.r1launcher.settings.adapter.SettingListAdapter$onConfirmKeyDown$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(final BaseViewHolder holder, final String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        final TextView textView = (TextView) holder.itemView.findViewById(R.id.tv_item);
        final FrameLayout frameLayout = (FrameLayout) holder.itemView.findViewById(R.id.fl_hold);
        final SettingSwitch settingSwitch = (SettingSwitch) holder.itemView.findViewById(R.id.ss_toggle);
        ConstraintLayout constraintLayout = (ConstraintLayout) holder.itemView.findViewById(R.id.item_root);
        textView.setText(item);
        textView.setTextSize(0, 48.0f);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = 0;
        ViewGroup.LayoutParams layoutParams2 = constraintLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        if (holder.getLayoutPosition() == 0) {
            marginLayoutParams.topMargin = 0;
        } else {
            marginLayoutParams.topMargin = 18;
        }
        ViewGroup.LayoutParams layoutParams3 = holder.itemView.getLayoutParams();
        if (isEnableTerminal(item)) {
            settingSwitch.setVisibility(0);
            settingSwitch.setUnderFocus(false);
            settingSwitch.toggle(AppConfig.INSTANCE.isEnabledTerminal(), false);
            layoutParams3.width = -1;
        } else {
            settingSwitch.setVisibility(8);
            layoutParams3.width = -2;
        }
        holder.itemView.setLayoutParams(layoutParams3);
        frameLayout.setVisibility(8);
        holder.itemView.setFocusable(1);
        holder.itemView.setFocusableInTouchMode(true);
        holder.itemView.setOnKeyListener(new View.OnKeyListener() { // from class: tech.rabbit.r1launcher.settings.adapter.SettingListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                boolean convert$lambda$2$lambda$0;
                convert$lambda$2$lambda$0 = SettingListAdapter.convert$lambda$2$lambda$0(SettingListAdapter.this, item, settingSwitch, view, i, keyEvent);
                return convert$lambda$2$lambda$0;
            }
        });
        holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.adapter.SettingListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                SettingListAdapter.convert$lambda$2$lambda$1(textView, holder, this, item, frameLayout, settingSwitch, holder, view, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean convert$lambda$2$lambda$0(SettingListAdapter this$0, String itemData, SettingSwitch settingSwitch, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemData, "$itemData");
        if (keyEvent.getAction() == 1) {
            if (i == 26 || i == 66 || i == 80) {
                if (this$0.isEnableTerminal(itemData)) {
                    settingSwitch.toggle(!AppConfig.INSTANCE.isEnabledTerminal(), false);
                }
                this$0.onConfirmKeyUp.invoke(itemData);
                return true;
            }
        } else if (keyEvent.getAction() == 0 && (i == 26 || i == 66 || i == 80)) {
            this$0.onConfirmKeyDown.invoke(itemData);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void convert$lambda$2$lambda$1(TextView textView, BaseViewHolder this_apply, SettingListAdapter this$0, String itemData, FrameLayout frameLayout, SettingSwitch settingSwitch, BaseViewHolder holder, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemData, "$itemData");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        textView.setTextColor(z ? ViewCompat.MEASURED_STATE_MASK : -1);
        textView.setTextSize(0, z ? 60.0f : 48.0f);
        ViewGroup.LayoutParams layoutParams = this_apply.itemView.getLayoutParams();
        if (z && this$0.holdItems.contains(itemData)) {
            layoutParams.width = -1;
            frameLayout.setVisibility(0);
        } else if (this$0.isEnableTerminal(itemData)) {
            settingSwitch.setUnderFocus(z);
            frameLayout.setVisibility(8);
        } else {
            layoutParams.width = -2;
            frameLayout.setVisibility(8);
        }
        this_apply.itemView.setLayoutParams(layoutParams);
        this_apply.itemView.setSelected(z);
        this$0.getRecyclerView().scrollToPosition(holder.getLayoutPosition());
    }

    private final boolean isEnableTerminal(String s) {
        return Intrinsics.areEqual(s, getContext().getString(R.string.settings_page_system_enable_terminal));
    }
}
