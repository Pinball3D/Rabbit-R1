package tech.rabbit.r1launcher.ota;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import defpackage.UpdateHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity;
import tech.rabbit.r1launcher.utils.HardWareHelperKt;
import tech.rabbit.r1launcher.utils.LongPressShutdownHelper;
import tech.rabbit.r1systemupdater.model.UpdateConfig;

/* compiled from: OtaCheckActivity.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u001a\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001a\u001a\u00020\u0010H\u0014J\b\u0010\u001b\u001a\u00020\u0010H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Ltech/rabbit/r1launcher/ota/OtaCheckActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "_config", "Ltech/rabbit/r1systemupdater/model/UpdateConfig;", "_tvBtnSetNetwork", "Landroid/view/ViewGroup;", "_tvChargingCheck", "Landroid/widget/TextView;", "_tvConnectionCheck", "_tvTip", "isCharging", "", "isConnected", "startCheckingConditions", "checkConditions", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyDown", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "onResume", "updateConditions", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OtaCheckActivity extends AppCompatActivity {
    public static final int $stable = 8;
    private UpdateConfig _config;
    private ViewGroup _tvBtnSetNetwork;
    private TextView _tvChargingCheck;
    private TextView _tvConnectionCheck;
    private TextView _tvTip;
    private boolean isCharging;
    private boolean isConnected;
    private boolean startCheckingConditions;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setFlags(1024, 1024);
        requestWindowFeature(1);
        setContentView(R.layout.activity_ota_check);
        View findViewById = findViewById(R.id.tv_charging_state);
        Intrinsics.checkNotNull(findViewById, "null cannot be cast to non-null type android.widget.TextView");
        this._tvChargingCheck = (TextView) findViewById;
        View findViewById2 = findViewById(R.id.tv_network_state);
        Intrinsics.checkNotNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
        this._tvConnectionCheck = (TextView) findViewById2;
        View findViewById3 = findViewById(R.id.tv_tip);
        Intrinsics.checkNotNull(findViewById3, "null cannot be cast to non-null type android.widget.TextView");
        this._tvTip = (TextView) findViewById3;
        View findViewById4 = findViewById(R.id.btn_set_network);
        Intrinsics.checkNotNull(findViewById4, "null cannot be cast to non-null type android.view.ViewGroup");
        this._tvBtnSetNetwork = (ViewGroup) findViewById4;
        TextView textView = this._tvTip;
        ViewGroup viewGroup = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
            textView = null;
        }
        textView.setVisibility(8);
        ViewGroup viewGroup2 = this._tvBtnSetNetwork;
        if (viewGroup2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_tvBtnSetNetwork");
        } else {
            viewGroup = viewGroup2;
        }
        viewGroup.setVisibility(8);
        this._config = (UpdateConfig) getIntent().getParcelableExtra(UpdateHelper.UPDATE_CONFIG_KEY);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.startCheckingConditions) {
            return;
        }
        this.startCheckingConditions = true;
        checkConditions();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        LongPressShutdownHelper.INSTANCE.onKeyDown(this, keyCode, event);
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (LongPressShutdownHelper.INSTANCE.onKeyUp(this, keyCode, event)) {
            return true;
        }
        switch (keyCode) {
            case 24:
            case 25:
            case 26:
                ViewGroup viewGroup = this._tvBtnSetNetwork;
                if (viewGroup == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvBtnSetNetwork");
                    viewGroup = null;
                }
                if (viewGroup.getVisibility() == 0) {
                    OtaCheckActivity otaCheckActivity = this;
                    Intent intent = new Intent(otaCheckActivity, (Class<?>) SettingsNetwork2Activity.class);
                    intent.addFlags(402653184);
                    startActivity(intent, ActivityOptions.makeCustomAnimation(otaCheckActivity, 0, 0).toBundle());
                    break;
                }
                break;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkConditions() {
        if (isFinishing()) {
            return;
        }
        OtaCheckActivity otaCheckActivity = this;
        this.isConnected = HardWareHelperKt.isWifiConnected(otaCheckActivity);
        this.isCharging = HardWareHelperKt.isCharging(otaCheckActivity);
        updateConditions();
        if (this.isCharging && this.isConnected) {
            Intent intent = new Intent("tech.rabbit.r1launcher.action.UPDATE");
            intent.addFlags(268435456);
            intent.putExtra(UpdateHelper.UPDATE_CONFIG_KEY, this._config);
            getApplicationContext().startActivity(intent);
            KotlinUtilKt.postOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.ota.OtaCheckActivity$checkConditions$1
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
                    OtaCheckActivity.this.finish();
                }
            });
            return;
        }
        KotlinUtilKt.postDelayOnMainThread(1000L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.ota.OtaCheckActivity$checkConditions$2
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
                OtaCheckActivity.this.checkConditions();
            }
        });
    }

    private final void updateConditions() {
        ViewGroup viewGroup = null;
        if (this.isCharging) {
            TextView textView = this._tvChargingCheck;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_tvChargingCheck");
                textView = null;
            }
            textView.setText("√");
            TextView textView2 = this._tvTip;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
                textView2 = null;
            }
            textView2.setVisibility(8);
        } else {
            TextView textView3 = this._tvChargingCheck;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_tvChargingCheck");
                textView3 = null;
            }
            textView3.setText("X");
            TextView textView4 = this._tvTip;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
                textView4 = null;
            }
            textView4.setVisibility(0);
        }
        if (this.isConnected) {
            TextView textView5 = this._tvConnectionCheck;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_tvConnectionCheck");
                textView5 = null;
            }
            textView5.setText("√");
            ViewGroup viewGroup2 = this._tvBtnSetNetwork;
            if (viewGroup2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_tvBtnSetNetwork");
            } else {
                viewGroup = viewGroup2;
            }
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView6 = this._tvConnectionCheck;
        if (textView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_tvConnectionCheck");
            textView6 = null;
        }
        textView6.setText("X");
        ViewGroup viewGroup3 = this._tvBtnSetNetwork;
        if (viewGroup3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_tvBtnSetNetwork");
        } else {
            viewGroup = viewGroup3;
        }
        viewGroup.setVisibility(0);
    }
}
