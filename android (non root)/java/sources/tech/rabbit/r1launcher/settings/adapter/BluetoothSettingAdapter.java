package tech.rabbit.r1launcher.settings.adapter;

import android.bluetooth.BluetoothDevice;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.models.settings.BluetoothListData;
import tech.rabbit.r1launcher.widget.SettingLoading;
import tech.rabbit.r1launcher.widget.SettingSwitch;

/* compiled from: BluetoothSettingAdapter.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0007\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0004J \u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0003H\u0002J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0002H\u0015J\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R,\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00130\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\n\u001a\u0004\b\u0019\u0010\bR\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\n\u001a\u0004\b\u001c\u0010\bR\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\n\u001a\u0004\b\u001f\u0010\b¨\u0006+"}, d2 = {"Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "Ltech/rabbit/r1launcher/models/settings/BluetoothListData;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "()V", "cachedBg", "Landroid/graphics/drawable/Drawable;", "getCachedBg", "()Landroid/graphics/drawable/Drawable;", "cachedBg$delegate", "Lkotlin/Lazy;", "currentFocusPos", "", "getCurrentFocusPos", "()I", "setCurrentFocusPos", "(I)V", "onConfirmKeyClick", "Lkotlin/Function2;", "", "getOnConfirmKeyClick", "()Lkotlin/jvm/functions/Function2;", "setOnConfirmKeyClick", "(Lkotlin/jvm/functions/Function2;)V", "shapeRingBg", "getShapeRingBg", "shapeRingBg$delegate", "shapeRingConfirmBg", "getShapeRingConfirmBg", "shapeRingConfirmBg$delegate", "shapeRingSelectedBg", "getShapeRingSelectedBg", "shapeRingSelectedBg$delegate", "addOnFocusChange", "view", "Landroid/view/View;", "item", "helper", "convert", "dpToPx", "", "dp", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothSettingAdapter extends BaseMultiItemQuickAdapter<BluetoothListData, BaseViewHolder> {
    public static final int TYPE_BUTTON = 3;
    public static final int TYPE_DEVICE = 1;
    public static final int TYPE_TITLE = 0;

    /* renamed from: cachedBg$delegate, reason: from kotlin metadata */
    private final Lazy cachedBg;
    private int currentFocusPos;
    private Function2<? super BluetoothListData, ? super Integer, Unit> onConfirmKeyClick;

    /* renamed from: shapeRingBg$delegate, reason: from kotlin metadata */
    private final Lazy shapeRingBg;

    /* renamed from: shapeRingConfirmBg$delegate, reason: from kotlin metadata */
    private final Lazy shapeRingConfirmBg;

    /* renamed from: shapeRingSelectedBg$delegate, reason: from kotlin metadata */
    private final Lazy shapeRingSelectedBg;
    public static final int $stable = 8;

    public final int getCurrentFocusPos() {
        return this.currentFocusPos;
    }

    public final Function2<BluetoothListData, Integer, Unit> getOnConfirmKeyClick() {
        return this.onConfirmKeyClick;
    }

    public final void setCurrentFocusPos(int i) {
        this.currentFocusPos = i;
    }

    public final void setOnConfirmKeyClick(Function2<? super BluetoothListData, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onConfirmKeyClick = function2;
    }

    public BluetoothSettingAdapter() {
        super(new ArrayList());
        this.cachedBg = LazyKt.lazy(new Function0<Drawable>() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$cachedBg$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Drawable invoke() {
                return BluetoothSettingAdapter.this.getContext().getResources().getDrawable(R.drawable.bg_setting_choose);
            }
        });
        this.shapeRingBg = LazyKt.lazy(new Function0<Drawable>() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$shapeRingBg$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Drawable invoke() {
                return BluetoothSettingAdapter.this.getContext().getDrawable(R.drawable.shape_setting_ring);
            }
        });
        this.shapeRingSelectedBg = LazyKt.lazy(new Function0<Drawable>() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$shapeRingSelectedBg$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Drawable invoke() {
                return BluetoothSettingAdapter.this.getContext().getDrawable(R.drawable.shape_setting_ring_selected);
            }
        });
        this.shapeRingConfirmBg = LazyKt.lazy(new Function0<Drawable>() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$shapeRingConfirmBg$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Drawable invoke() {
                return BluetoothSettingAdapter.this.getContext().getDrawable(R.drawable.shape_setting_ring_confrim);
            }
        });
        addItemType(0, R.layout.item_layout_bluetooth_title);
        addItemType(1, R.layout.item_layout_bluetooth_device);
        addItemType(3, R.layout.item_layout_bluetooth_button);
        this.currentFocusPos = -1;
        this.onConfirmKeyClick = new Function2<BluetoothListData, Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$onConfirmKeyClick$1
            public final void invoke(BluetoothListData bluetoothListData, int i) {
                Intrinsics.checkNotNullParameter(bluetoothListData, "<anonymous parameter 0>");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(BluetoothListData bluetoothListData, Integer num) {
                invoke(bluetoothListData, num.intValue());
                return Unit.INSTANCE;
            }
        };
    }

    private final Drawable getCachedBg() {
        Object value = this.cachedBg.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (Drawable) value;
    }

    private final Drawable getShapeRingBg() {
        return (Drawable) this.shapeRingBg.getValue();
    }

    private final Drawable getShapeRingSelectedBg() {
        return (Drawable) this.shapeRingSelectedBg.getValue();
    }

    private final Drawable getShapeRingConfirmBg() {
        return (Drawable) this.shapeRingConfirmBg.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder helper, BluetoothListData item) {
        int color;
        String address;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getItemType() == 0) {
            helper.setText(R.id.tv_title, item.getTitle());
            if (item.getLoading()) {
                ((SettingLoading) helper.getView(R.id.sl_loading)).setVisibility(0);
                return;
            } else {
                ((SettingLoading) helper.getView(R.id.sl_loading)).setVisibility(8);
                return;
            }
        }
        if (item.getItemType() == 1) {
            BluetoothDevice device = item.getDevice();
            String name = device != null ? device.getName() : null;
            if (name == null || name.length() == 0) {
                BluetoothDevice device2 = item.getDevice();
                if (device2 != null) {
                    address = device2.getAddress();
                }
                address = null;
            } else {
                BluetoothDevice device3 = item.getDevice();
                if (device3 != null) {
                    address = device3.getName();
                }
                address = null;
            }
            TextView textView = (TextView) helper.getView(R.id.tv_title);
            textView.setText(address);
            if (this.currentFocusPos == helper.getLayoutPosition()) {
                helper.getView(R.id.ll_focus_bg).setBackground(getCachedBg());
                helper.itemView.getLayoutParams().height = (int) dpToPx(40.0f);
                textView.setTextColor(getContext().getColor(R.color.black));
                textView.setTextSize(30.0f);
            } else {
                helper.getView(R.id.ll_focus_bg).setBackground(null);
                helper.itemView.getLayoutParams().height = (int) dpToPx(33.0f);
                textView.setTextColor(getContext().getColor(R.color.white));
                textView.setTextSize(24.0f);
            }
            if (item.getIsConnected()) {
                helper.getView(R.id.v_ring).setBackground(getShapeRingConfirmBg());
            } else if (this.currentFocusPos == helper.getLayoutPosition()) {
                helper.getView(R.id.v_ring).setBackground(getShapeRingSelectedBg());
            } else {
                helper.getView(R.id.v_ring).setBackground(getShapeRingBg());
            }
            addOnFocusChange(textView, item, helper);
            return;
        }
        if (item.getItemType() == 3) {
            SettingSwitch settingSwitch = (SettingSwitch) helper.getView(R.id.ss);
            settingSwitch.setUnderFocus(this.currentFocusPos == helper.getLayoutPosition());
            settingSwitch.toggle(item.getSwitch(), false);
            TextView textView2 = (TextView) helper.getView(R.id.tv_title);
            if (this.currentFocusPos == helper.getLayoutPosition()) {
                color = getContext().getColor(R.color.black);
            } else {
                color = getContext().getColor(R.color.white);
            }
            textView2.setTextColor(color);
            if (this.currentFocusPos == helper.getLayoutPosition()) {
                LinearLayout linearLayout = (LinearLayout) helper.getView(R.id.ll_container);
                linearLayout.setBackground(getCachedBg());
                linearLayout.setPadding((int) dpToPx(6.0f), 0, (int) dpToPx(6.0f), 0);
                ((TextView) helper.getView(R.id.tv_title)).setTextSize(30.0f);
                helper.getView(R.id.ll_container).getLayoutParams().height = (int) dpToPx(40.0f);
                helper.itemView.getLayoutParams().height = (int) dpToPx(59.5f);
            } else {
                LinearLayout linearLayout2 = (LinearLayout) helper.getView(R.id.ll_container);
                linearLayout2.setBackground(null);
                linearLayout2.setPadding(0, 0, 0, 0);
                ((TextView) helper.getView(R.id.tv_title)).setTextSize(24.0f);
                helper.getView(R.id.ll_container).getLayoutParams().height = (int) dpToPx(33.0f);
                helper.itemView.getLayoutParams().height = (int) dpToPx(52.5f);
            }
            View itemView = helper.itemView;
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            addOnFocusChange(itemView, item, helper);
        }
    }

    private final void addOnFocusChange(View view, final BluetoothListData item, final BaseViewHolder helper) {
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                BluetoothSettingAdapter.addOnFocusChange$lambda$5(BluetoothSettingAdapter.this, helper, view2, z);
            }
        });
        view.setOnKeyListener(new View.OnKeyListener() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i, KeyEvent keyEvent) {
                boolean addOnFocusChange$lambda$6;
                addOnFocusChange$lambda$6 = BluetoothSettingAdapter.addOnFocusChange$lambda$6(BluetoothSettingAdapter.this, item, helper, view2, i, keyEvent);
                return addOnFocusChange$lambda$6;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addOnFocusChange$lambda$5(final BluetoothSettingAdapter this$0, BaseViewHolder helper, View view, boolean z) {
        Object m5698constructorimpl;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(helper, "$helper");
        if (!z || this$0.currentFocusPos == helper.getLayoutPosition()) {
            return;
        }
        final int i = this$0.currentFocusPos;
        this$0.currentFocusPos = helper.getLayoutPosition();
        try {
            Result.Companion companion = Result.INSTANCE;
            this$0.notifyItemChanged(i);
            this$0.notifyItemChanged(this$0.currentFocusPos);
            m5698constructorimpl = Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            this$0.getRecyclerView().post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothSettingAdapter.addOnFocusChange$lambda$5$lambda$4$lambda$3(BluetoothSettingAdapter.this, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addOnFocusChange$lambda$5$lambda$4$lambda$3(BluetoothSettingAdapter this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyItemChanged(i);
        this$0.notifyItemChanged(this$0.currentFocusPos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addOnFocusChange$lambda$6(BluetoothSettingAdapter this$0, BluetoothListData item, BaseViewHolder helper, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(helper, "$helper");
        if (keyEvent.getAction() != 1) {
            return false;
        }
        if (i != 26 && i != 66 && i != 80) {
            return false;
        }
        this$0.onConfirmKeyClick.invoke(item, Integer.valueOf(helper.getLayoutPosition()));
        return true;
    }

    private final float dpToPx(float dp) {
        return dp * getContext().getResources().getDisplayMetrics().density;
    }
}
