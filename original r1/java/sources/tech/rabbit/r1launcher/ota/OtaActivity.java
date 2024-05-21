package tech.rabbit.r1launcher.ota;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Observer;
import defpackage.AppConfig;
import defpackage.UpdateHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.utils.HardWareHelperKt;
import tech.rabbit.r1launcher.utils.LongPressShutdownHelper;
import tech.rabbit.r1systemupdater.OtaState;
import tech.rabbit.r1systemupdater.OtaStateHelper;
import tech.rabbit.r1systemupdater.SystemUpdater;
import tech.rabbit.r1systemupdater.model.UpdateConfig;
import tech.rabbit.r1systemupdater.model.UpdateEngineErrorCodes;
import tech.rabbit.r1systemupdater.model.UpdateEngineStatuses;

/* compiled from: OtaActivity.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u001a\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010 \u001a\u00020\u0016H\u0014J\b\u0010!\u001a\u00020\u0016H\u0014J\b\u0010\"\u001a\u00020\u0016H\u0002J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001cH\u0002J\b\u0010%\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Ltech/rabbit/r1launcher/ota/OtaActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "TAG", "", "_config", "Ltech/rabbit/r1systemupdater/model/UpdateConfig;", "_progressBar", "Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;", "_retryBtn", "Landroid/view/ViewGroup;", "_tvInfo", "Landroid/widget/TextView;", "_tvProgressInfo", "_tvTip", "_updating", "", "preparingUpdateCallback", "Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;", "updateCallback", "Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;", "checkConditions", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyDown", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "onPause", "onResume", "reboot", "showProgress", NotificationCompat.CATEGORY_PROGRESS, "startUpdate", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OtaActivity extends AppCompatActivity {
    public static final int $stable = 8;
    private UpdateConfig _config;
    private RoundRectProgressBar _progressBar;
    private ViewGroup _retryBtn;
    private TextView _tvInfo;
    private TextView _tvProgressInfo;
    private TextView _tvTip;
    private boolean _updating;
    private final String TAG = "OtaActivity";
    private final SystemUpdater.CleanUpPreviousUpdateFinishCallback preparingUpdateCallback = new SystemUpdater.CleanUpPreviousUpdateFinishCallback() { // from class: tech.rabbit.r1launcher.ota.OtaActivity$$ExternalSyntheticLambda0
        @Override // tech.rabbit.r1systemupdater.SystemUpdater.CleanUpPreviousUpdateFinishCallback
        public final void onFinish(boolean z) {
            OtaActivity.preparingUpdateCallback$lambda$1(z);
        }
    };
    private final SystemUpdater.UpdateCallback updateCallback = new SystemUpdater.UpdateCallback() { // from class: tech.rabbit.r1launcher.ota.OtaActivity$updateCallback$1
        @Override // tech.rabbit.r1systemupdater.SystemUpdater.UpdateCallback
        public void onStatusUpdate(int status, float percent) {
            String str;
            String str2;
            str = OtaActivity.this.TAG;
            Log.i(str, "onStatusUpdate status " + UpdateEngineStatuses.getStatusText(status) + ' ' + percent);
            if (status == 3) {
                OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.DOWNLOADING);
            } else if (status == 4) {
                OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.VERIFYING);
            } else if (status == 5) {
                OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.FINALIZING);
            }
            if (status == 6) {
                str2 = OtaActivity.this.TAG;
                Log.i(str2, "update success, reboot to finish update");
                OtaActivity.this.showProgress(100);
                OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.PREPARE_REBOOT);
                return;
            }
            OtaActivity.this.showProgress((int) (percent * 100));
        }

        @Override // tech.rabbit.r1systemupdater.SystemUpdater.UpdateCallback
        public void onPayloadApplicationComplete(int errorCode) {
            String str;
            str = OtaActivity.this.TAG;
            Log.i(str, "onPayloadApplicationComplete error code " + UpdateEngineErrorCodes.getCodeName(errorCode));
            if (errorCode != 0) {
                OtaActivity.this.showProgress(0);
                OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.CHECKING_PKG_FAILED);
            }
        }
    };

    /* compiled from: OtaActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OtaState.values().length];
            try {
                iArr[OtaState.CHECKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OtaState.PREPARE_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OtaState.START_UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[OtaState.CHECKING_PKG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[OtaState.DOWNLOADING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[OtaState.DOWNLOAD_COMPLETE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[OtaState.VERIFYING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[OtaState.FINALIZING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[OtaState.PREPARE_REBOOT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[OtaState.NO_UPDATES.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[OtaState.CHECKING_PKG_FAILED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[OtaState.DOWNLOAD_PKG_FAILED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[OtaState.VERIFY_PKG_FAILED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[OtaState.PREPARE_UPDATE_FAILED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setFlags(1024, 1024);
        requestWindowFeature(1);
        setContentView(R.layout.activity_ota);
        View findViewById = findViewById(R.id.progress_bar);
        Intrinsics.checkNotNull(findViewById, "null cannot be cast to non-null type tech.rabbit.r1launcher.ota.RoundRectProgressBar");
        this._progressBar = (RoundRectProgressBar) findViewById;
        View findViewById2 = findViewById(R.id.tv_progress);
        Intrinsics.checkNotNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
        this._tvProgressInfo = (TextView) findViewById2;
        View findViewById3 = findViewById(R.id.tv_info);
        Intrinsics.checkNotNull(findViewById3, "null cannot be cast to non-null type android.widget.TextView");
        this._tvInfo = (TextView) findViewById3;
        View findViewById4 = findViewById(R.id.tv_tip);
        Intrinsics.checkNotNull(findViewById4, "null cannot be cast to non-null type android.widget.TextView");
        this._tvTip = (TextView) findViewById4;
        View findViewById5 = findViewById(R.id.btn_retry);
        Intrinsics.checkNotNull(findViewById5, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) findViewById5;
        this._retryBtn = viewGroup;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_retryBtn");
            viewGroup = null;
        }
        viewGroup.setVisibility(8);
        this._config = (UpdateConfig) getIntent().getParcelableExtra(UpdateHelper.UPDATE_CONFIG_KEY);
        OtaStateHelper.INSTANCE.getLiveState().observe(this, new Observer() { // from class: tech.rabbit.r1launcher.ota.OtaActivity$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                OtaActivity.onCreate$lambda$0(OtaActivity.this, (OtaState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(final OtaActivity this$0, OtaState otaState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = null;
        ViewGroup viewGroup = null;
        TextView textView2 = null;
        TextView textView3 = null;
        TextView textView4 = null;
        TextView textView5 = null;
        TextView textView6 = null;
        TextView textView7 = null;
        TextView textView8 = null;
        switch (otaState == null ? -1 : WhenMappings.$EnumSwitchMapping$0[otaState.ordinal()]) {
            case 1:
                TextView textView9 = this$0._tvInfo;
                if (textView9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                    textView9 = null;
                }
                textView9.setText("checking update");
                TextView textView10 = this$0._tvTip;
                if (textView10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
                } else {
                    textView = textView10;
                }
                textView.setText("please stay connected to the internet");
                return;
            case 2:
                TextView textView11 = this$0._tvInfo;
                if (textView11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                } else {
                    textView8 = textView11;
                }
                textView8.setText("preparing update");
                SystemUpdater.getInstance(this$0).waitCleanUpPreviousUpdateFinish(this$0.preparingUpdateCallback);
                return;
            case 3:
                TextView textView12 = this$0._tvInfo;
                if (textView12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                    textView12 = null;
                }
                textView12.setText("updating");
                StringBuilder sb = new StringBuilder("OtaStateHelper.updateConfig: ");
                UpdateConfig updateConfig = OtaStateHelper.INSTANCE.getUpdateConfig();
                Log.i("OtaStateHelper.updateConfig", sb.append(updateConfig != null ? updateConfig.getUrl() : null).toString());
                if (OtaStateHelper.INSTANCE.getUpdateConfig() != null) {
                    SystemUpdater.getInstance(this$0).update(OtaStateHelper.INSTANCE.getUpdateConfig(), this$0.updateCallback);
                    return;
                }
                TextView textView13 = this$0._tvTip;
                if (textView13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
                } else {
                    textView7 = textView13;
                }
                textView7.setText("Error updateConfig is null");
                return;
            case 4:
            case 6:
            default:
                return;
            case 5:
                TextView textView14 = this$0._tvInfo;
                if (textView14 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                } else {
                    textView6 = textView14;
                }
                textView6.setText("downloading");
                return;
            case 7:
                TextView textView15 = this$0._tvInfo;
                if (textView15 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                } else {
                    textView5 = textView15;
                }
                textView5.setText("verifying");
                return;
            case 8:
                TextView textView16 = this$0._tvInfo;
                if (textView16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                } else {
                    textView4 = textView16;
                }
                textView4.setText("finalizing");
                return;
            case 9:
                TextView textView17 = this$0._tvInfo;
                if (textView17 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                    textView17 = null;
                }
                textView17.setText("update complete");
                TextView textView18 = this$0._tvTip;
                if (textView18 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
                } else {
                    textView3 = textView18;
                }
                textView3.setText("will reboot in 5 seconds");
                KotlinUtilKt.postDelayOnMainThread(5000L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.ota.OtaActivity$onCreate$1$1
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
                        OtaActivity.this.reboot();
                    }
                });
                return;
            case 10:
                TextView textView19 = this$0._tvInfo;
                if (textView19 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                    textView19 = null;
                }
                textView19.setText("no updates");
                TextView textView20 = this$0._tvTip;
                if (textView20 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
                } else {
                    textView2 = textView20;
                }
                textView2.setText("");
                this$0._updating = false;
                return;
            case 11:
            case 12:
            case 13:
            case 14:
                TextView textView21 = this$0._tvInfo;
                if (textView21 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
                    textView21 = null;
                }
                textView21.setText("update failed");
                TextView textView22 = this$0._tvTip;
                if (textView22 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
                    textView22 = null;
                }
                textView22.setText("");
                this$0._updating = false;
                ViewGroup viewGroup2 = this$0._retryBtn;
                if (viewGroup2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_retryBtn");
                } else {
                    viewGroup = viewGroup2;
                }
                viewGroup.setVisibility(0);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getWindow().addFlags(128);
        checkConditions();
        startUpdate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        getWindow().clearFlags(128);
    }

    private final void startUpdate() {
        if (this._updating) {
            return;
        }
        this._updating = true;
        if (this._config != null) {
            OtaStateHelper.INSTANCE.setUpdateConfig(this._config);
            OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.PREPARE_UPDATE);
            return;
        }
        TextView textView = this._tvInfo;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_tvInfo");
            textView = null;
        }
        textView.setText("checking update");
        TextView textView2 = this._tvTip;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_tvTip");
            textView2 = null;
        }
        textView2.setText("");
        ViewGroup viewGroup = this._retryBtn;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_retryBtn");
            viewGroup = null;
        }
        viewGroup.setVisibility(8);
        UpdateHelper.triggerOnceCheckInSubThread$default(UpdateHelper.INSTANCE, this, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showProgress(int progress) {
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = progress;
        if (intRef.element > 100) {
            intRef.element = 100;
        } else if (intRef.element < 0) {
            intRef.element = 0;
        }
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.ota.OtaActivity$showProgress$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                TextView textView;
                RoundRectProgressBar roundRectProgressBar;
                textView = OtaActivity.this._tvProgressInfo;
                RoundRectProgressBar roundRectProgressBar2 = null;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_tvProgressInfo");
                    textView = null;
                }
                textView.setText(new StringBuilder().append(intRef.element).append('%').toString());
                roundRectProgressBar = OtaActivity.this._progressBar;
                if (roundRectProgressBar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_progressBar");
                } else {
                    roundRectProgressBar2 = roundRectProgressBar;
                }
                roundRectProgressBar2.setProgress(intRef.element);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preparingUpdateCallback$lambda$1(boolean z) {
        if (z) {
            OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.START_UPDATE);
        } else {
            OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.PREPARE_UPDATE_FAILED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkConditions() {
        OtaActivity otaActivity = this;
        if (!HardWareHelperKt.isNetworkConnected(otaActivity) || !HardWareHelperKt.isCharging(otaActivity)) {
            Intent intent = new Intent("tech.rabbit.r1launcher.action.UPDATE_CHECK");
            intent.addFlags(268435456);
            startActivity(intent, ActivityOptions.makeCustomAnimation(otaActivity, 0, 0).toBundle());
            return;
        }
        KotlinUtilKt.postDelayOnMainThread(1000L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.ota.OtaActivity$checkConditions$1
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
                OtaActivity.this.checkConditions();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reboot() {
        Object systemService = AppConfig.INSTANCE.getAppContext().getSystemService("power");
        if (systemService != null) {
            ((PowerManager) systemService).reboot(" ");
        }
        KotlinUtilKt.postDelayOnMainThread(1000L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.ota.OtaActivity$reboot$2
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
                OtaActivity.this.reboot();
            }
        });
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
                ViewGroup viewGroup = this._retryBtn;
                if (viewGroup == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("_retryBtn");
                    viewGroup = null;
                }
                if (viewGroup.getVisibility() == 0) {
                    this._config = null;
                    startUpdate();
                    break;
                }
                break;
        }
        return true;
    }
}
