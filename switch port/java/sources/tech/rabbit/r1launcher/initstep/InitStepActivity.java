package tech.rabbit.r1launcher.initstep;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import io.sentry.protocol.Request;
import io.sentry.protocol.ViewHierarchyNode;
import java.io.Serializable;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.components.wifiutils.WifiUtils;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionErrorCode;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener;
import tech.rabbit.r1launcher.initstep.model.ScanQrCodeResult;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment;
import tech.rabbit.r1launcher.initstep.process.ConnectRabbitAccountFailureFragment;
import tech.rabbit.r1launcher.initstep.process.ConnectRabbitAccountFragment;
import tech.rabbit.r1launcher.initstep.process.ConnectRabbitAccountSuccessFragment;
import tech.rabbit.r1launcher.initstep.process.ConnectWifiSuccessFragment;
import tech.rabbit.r1launcher.initstep.process.ConnectingWifiFragment;
import tech.rabbit.r1launcher.initstep.process.GuidePasscodeFragment;
import tech.rabbit.r1launcher.initstep.process.InitStepFinalGuideAnimationFragment;
import tech.rabbit.r1launcher.initstep.process.InitStepGuideAnimationFragment;
import tech.rabbit.r1launcher.initstep.process.LandscapeEnterWifiPasswordFragment;
import tech.rabbit.r1launcher.initstep.process.RotateDeviceTipFragment;
import tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.initstep.widget.StepProgressIndicatorView;
import tech.rabbit.r1launcher.utils.PermissionUtils;
import tech.rabbit.r1launcher.wss.Constant;

/* compiled from: InitStepActivity.kt */
@Metadata(d1 = {"\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0007\u0018\u0000 \u0091\u00012\u00020\u00012\u00020\u0002:\u0002\u0091\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020BH\u0002J\u0018\u0010V\u001a\u00020T2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0007J \u0010[\u001a\u00020T2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010\\\u001a\u00020]H\u0007J\u0010\u0010^\u001a\u00020T2\u0006\u0010_\u001a\u00020ZH\u0007J\u0012\u0010`\u001a\u0002072\b\u0010a\u001a\u0004\u0018\u00010bH\u0016J\u000e\u0010c\u001a\u00020T2\u0006\u0010W\u001a\u00020XJ\b\u0010d\u001a\u00020TH\u0016J\u0010\u0010e\u001a\u00020T2\u0006\u0010U\u001a\u00020BH\u0003J\u000e\u0010f\u001a\u00020T2\u0006\u0010g\u001a\u00020hJ\u0012\u0010i\u001a\u00020T2\n\b\u0002\u0010j\u001a\u0004\u0018\u00010ZJ\u000e\u0010k\u001a\u00020T2\u0006\u0010l\u001a\u00020mJ\u0006\u0010n\u001a\u00020TJ\u0006\u0010o\u001a\u00020TJ\u0006\u0010p\u001a\u00020TJ\u0006\u0010q\u001a\u00020TJ\u0006\u0010r\u001a\u00020TJ\b\u0010s\u001a\u00020TH\u0002J\u0006\u0010t\u001a\u000207J\u0010\u0010u\u001a\u0002072\u0006\u0010U\u001a\u00020BH\u0002J\u001a\u0010v\u001a\u00020T2\b\u0010w\u001a\u0004\u0018\u00010\u00052\u0006\u0010x\u001a\u00020yH\u0016J\"\u0010z\u001a\u00020T2\u0006\u0010{\u001a\u00020y2\u0006\u0010|\u001a\u00020y2\b\u0010}\u001a\u0004\u0018\u00010~H\u0014J\u0014\u0010\u007f\u001a\u00020T2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001H\u0014J\u001e\u0010\u0082\u0001\u001a\u0002072\u0007\u0010\u0083\u0001\u001a\u00020y2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0016J\u001e\u0010\u0086\u0001\u001a\u0002072\u0007\u0010\u0083\u0001\u001a\u00020y2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0016J\t\u0010\u0087\u0001\u001a\u00020TH\u0014J\t\u0010\u0088\u0001\u001a\u00020TH\u0014J\u0013\u0010\u0089\u0001\u001a\u00020T2\b\u0010\u0084\u0001\u001a\u00030\u008a\u0001H\u0017J#\u0010\u008b\u0001\u001a\u00020T2\u0006\u0010{\u001a\u00020y2\u0006\u0010|\u001a\u00020y2\b\u0010}\u001a\u0004\u0018\u00010~H\u0002J\u0011\u0010\u008c\u0001\u001a\u00020T2\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001J\u0012\u0010\u008f\u0001\u001a\u00020T2\t\b\u0001\u0010\u0090\u0001\u001a\u00020yR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\r\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\r\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\r\u001a\u0004\b\u001f\u0010 R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\r\u001a\u0004\b$\u0010%R\u001b\u0010'\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\r\u001a\u0004\b)\u0010*R\u001b\u0010,\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\r\u001a\u0004\b.\u0010/R\u001b\u00101\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010\r\u001a\u0004\b3\u00104R\u000e\u00106\u001a\u000207X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u00108\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010\r\u001a\u0004\b:\u0010;R\u000e\u0010=\u001a\u00020>X\u0082.¢\u0006\u0002\n\u0000R\u001c\u0010?\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020B0A0@X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010C\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010\r\u001a\u0004\bE\u0010FR\u000e\u0010H\u001a\u00020IX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010J\u001a\u00020K8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010\r\u001a\u0004\bL\u0010MR\u000e\u0010O\u001a\u00020PX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020RX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0092\u0001"}, d2 = {"Ltech/rabbit/r1launcher/initstep/InitStepActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/hardware/SensorEventListener;", "()V", "accelerometer", "Landroid/hardware/Sensor;", "backAnimator", "Landroid/animation/ValueAnimator;", "connectNetworkFragment", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;", "getConnectNetworkFragment", "()Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;", "connectNetworkFragment$delegate", "Lkotlin/Lazy;", "connectRabbitAccountFailureFragment", "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;", "getConnectRabbitAccountFailureFragment", "()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;", "connectRabbitAccountFailureFragment$delegate", "connectRabbitAccountFragment", "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;", "getConnectRabbitAccountFragment", "()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;", "connectRabbitAccountFragment$delegate", "connectRabbitAccountSuccessFragment", "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;", "getConnectRabbitAccountSuccessFragment", "()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;", "connectRabbitAccountSuccessFragment$delegate", "connectWifiSuccessFragment", "Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;", "getConnectWifiSuccessFragment", "()Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;", "connectWifiSuccessFragment$delegate", "connectingWifiFragment", "Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;", "getConnectingWifiFragment", "()Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;", "connectingWifiFragment$delegate", "guidePasscodeFragment", "Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;", "getGuidePasscodeFragment", "()Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;", "guidePasscodeFragment$delegate", "initStepFinalGuideAnimationFragment", "Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;", "getInitStepFinalGuideAnimationFragment", "()Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;", "initStepFinalGuideAnimationFragment$delegate", "initStepGuideAnimationFragment", "Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;", "getInitStepGuideAnimationFragment", "()Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;", "initStepGuideAnimationFragment$delegate", "isLandscape", "", "landscapeEnterWifiPasswordFragment", "Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;", "getLandscapeEnterWifiPasswordFragment", "()Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;", "landscapeEnterWifiPasswordFragment$delegate", "llBackContainer", "Landroid/widget/LinearLayout;", "noPaddingFragments", "", "Lkotlin/reflect/KClass;", "Landroidx/fragment/app/Fragment;", "rotateDeviceTipFragment", "Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;", "getRotateDeviceTipFragment", "()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;", "rotateDeviceTipFragment$delegate", "sensorManager", "Landroid/hardware/SensorManager;", "setPasscodeFragment", "Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;", "getSetPasscodeFragment", "()Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;", "setPasscodeFragment$delegate", "spivStepProgressIndicator", "Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;", "tvBackTitle", "Landroid/widget/TextView;", "autoCheckShowInitStepProgressIndicator", "", Request.JsonKeys.FRAGMENT, "connectToWifi", "wifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", HintConstants.AUTOFILL_HINT_PASSWORD, "", "connectWifiFailure", "errorCode", "Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;", "connectWifiSuccess", "ssid", "dispatchTouchEvent", "ev", "Landroid/view/MotionEvent;", "enterPasswordToConnectWifi", "finish", "goto", "gotoConnectAccountFailure", "errorType", "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;", "gotoConnectAccountSuccess", "username", "gotoConnectNetwork", "showType", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;", "gotoConnectRabbitAccount", "gotoFinalGuideAnimation", "gotoGuidePasscode", "gotoSetPasscode", "hideBack", "initViews", "isBackShowing", "isCurrentContent", "onAccuracyChanged", "sensor", "accuracy", "", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyDown", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "onPause", "onResume", "onSensorChanged", "Landroid/hardware/SensorEvent;", "parserScanQrLoginResult", "setStepProgressIndicatorAlpha", ViewHierarchyNode.JsonKeys.ALPHA, "", "showBack", "backTitleResId", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InitStepActivity extends AppCompatActivity implements SensorEventListener {
    private Sensor accelerometer;
    private ValueAnimator backAnimator;

    /* renamed from: connectNetworkFragment$delegate, reason: from kotlin metadata */
    private final Lazy connectNetworkFragment;

    /* renamed from: connectRabbitAccountFailureFragment$delegate, reason: from kotlin metadata */
    private final Lazy connectRabbitAccountFailureFragment;

    /* renamed from: connectRabbitAccountFragment$delegate, reason: from kotlin metadata */
    private final Lazy connectRabbitAccountFragment;

    /* renamed from: connectRabbitAccountSuccessFragment$delegate, reason: from kotlin metadata */
    private final Lazy connectRabbitAccountSuccessFragment;

    /* renamed from: connectWifiSuccessFragment$delegate, reason: from kotlin metadata */
    private final Lazy connectWifiSuccessFragment;

    /* renamed from: connectingWifiFragment$delegate, reason: from kotlin metadata */
    private final Lazy connectingWifiFragment;

    /* renamed from: guidePasscodeFragment$delegate, reason: from kotlin metadata */
    private final Lazy guidePasscodeFragment;

    /* renamed from: initStepFinalGuideAnimationFragment$delegate, reason: from kotlin metadata */
    private final Lazy initStepFinalGuideAnimationFragment;

    /* renamed from: initStepGuideAnimationFragment$delegate, reason: from kotlin metadata */
    private final Lazy initStepGuideAnimationFragment;
    private boolean isLandscape;

    /* renamed from: landscapeEnterWifiPasswordFragment$delegate, reason: from kotlin metadata */
    private final Lazy landscapeEnterWifiPasswordFragment;
    private LinearLayout llBackContainer;
    private final Set<KClass<? extends Fragment>> noPaddingFragments;

    /* renamed from: rotateDeviceTipFragment$delegate, reason: from kotlin metadata */
    private final Lazy rotateDeviceTipFragment;
    private SensorManager sensorManager;

    /* renamed from: setPasscodeFragment$delegate, reason: from kotlin metadata */
    private final Lazy setPasscodeFragment;
    private StepProgressIndicatorView spivStepProgressIndicator;
    private TextView tvBackTitle;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    public InitStepActivity() {
        super(R.layout.activity_init_step);
        this.initStepGuideAnimationFragment = LazyKt.lazy(new Function0<InitStepGuideAnimationFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$initStepGuideAnimationFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final InitStepGuideAnimationFragment invoke() {
                return new InitStepGuideAnimationFragment();
            }
        });
        this.initStepFinalGuideAnimationFragment = LazyKt.lazy(new Function0<InitStepFinalGuideAnimationFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$initStepFinalGuideAnimationFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final InitStepFinalGuideAnimationFragment invoke() {
                return new InitStepFinalGuideAnimationFragment();
            }
        });
        this.connectNetworkFragment = LazyKt.lazy(new Function0<ConnectNetworkFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectNetworkFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final ConnectNetworkFragment invoke() {
                return new ConnectNetworkFragment();
            }
        });
        this.rotateDeviceTipFragment = LazyKt.lazy(new Function0<RotateDeviceTipFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$rotateDeviceTipFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final RotateDeviceTipFragment invoke() {
                return new RotateDeviceTipFragment();
            }
        });
        this.landscapeEnterWifiPasswordFragment = LazyKt.lazy(new Function0<LandscapeEnterWifiPasswordFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$landscapeEnterWifiPasswordFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final LandscapeEnterWifiPasswordFragment invoke() {
                return new LandscapeEnterWifiPasswordFragment();
            }
        });
        this.connectingWifiFragment = LazyKt.lazy(new Function0<ConnectingWifiFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectingWifiFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final ConnectingWifiFragment invoke() {
                return new ConnectingWifiFragment();
            }
        });
        this.connectWifiSuccessFragment = LazyKt.lazy(new Function0<ConnectWifiSuccessFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectWifiSuccessFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final ConnectWifiSuccessFragment invoke() {
                return new ConnectWifiSuccessFragment();
            }
        });
        this.connectRabbitAccountFragment = LazyKt.lazy(new Function0<ConnectRabbitAccountFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectRabbitAccountFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final ConnectRabbitAccountFragment invoke() {
                return new ConnectRabbitAccountFragment();
            }
        });
        this.connectRabbitAccountFailureFragment = LazyKt.lazy(new Function0<ConnectRabbitAccountFailureFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectRabbitAccountFailureFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final ConnectRabbitAccountFailureFragment invoke() {
                return new ConnectRabbitAccountFailureFragment();
            }
        });
        this.connectRabbitAccountSuccessFragment = LazyKt.lazy(new Function0<ConnectRabbitAccountSuccessFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectRabbitAccountSuccessFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final ConnectRabbitAccountSuccessFragment invoke() {
                return new ConnectRabbitAccountSuccessFragment();
            }
        });
        this.guidePasscodeFragment = LazyKt.lazy(new Function0<GuidePasscodeFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$guidePasscodeFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final GuidePasscodeFragment invoke() {
                return new GuidePasscodeFragment();
            }
        });
        this.setPasscodeFragment = LazyKt.lazy(new Function0<SetPasscodeFragment>() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$setPasscodeFragment$2
            @Override // kotlin.jvm.functions.Function0
            public final SetPasscodeFragment invoke() {
                return new SetPasscodeFragment();
            }
        });
        this.noPaddingFragments = SetsKt.setOf((Object[]) new KClass[]{Reflection.getOrCreateKotlinClass(ConnectNetworkFragment.class), Reflection.getOrCreateKotlinClass(SetPasscodeFragment.class), Reflection.getOrCreateKotlinClass(InitStepGuideAnimationFragment.class), Reflection.getOrCreateKotlinClass(InitStepFinalGuideAnimationFragment.class), Reflection.getOrCreateKotlinClass(RotateDeviceTipFragment.class)});
    }

    /* compiled from: InitStepActivity.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;", "", "()V", "launch", "", "activity", "Landroid/app/Activity;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void launch(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) InitStepActivity.class));
            activity.overridePendingTransition(R.anim.anim_fade_in, R.anim.anim_fade_out);
        }
    }

    private final InitStepGuideAnimationFragment getInitStepGuideAnimationFragment() {
        return (InitStepGuideAnimationFragment) this.initStepGuideAnimationFragment.getValue();
    }

    private final InitStepFinalGuideAnimationFragment getInitStepFinalGuideAnimationFragment() {
        return (InitStepFinalGuideAnimationFragment) this.initStepFinalGuideAnimationFragment.getValue();
    }

    private final ConnectNetworkFragment getConnectNetworkFragment() {
        return (ConnectNetworkFragment) this.connectNetworkFragment.getValue();
    }

    private final RotateDeviceTipFragment getRotateDeviceTipFragment() {
        return (RotateDeviceTipFragment) this.rotateDeviceTipFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LandscapeEnterWifiPasswordFragment getLandscapeEnterWifiPasswordFragment() {
        return (LandscapeEnterWifiPasswordFragment) this.landscapeEnterWifiPasswordFragment.getValue();
    }

    private final ConnectingWifiFragment getConnectingWifiFragment() {
        return (ConnectingWifiFragment) this.connectingWifiFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConnectWifiSuccessFragment getConnectWifiSuccessFragment() {
        return (ConnectWifiSuccessFragment) this.connectWifiSuccessFragment.getValue();
    }

    private final ConnectRabbitAccountFragment getConnectRabbitAccountFragment() {
        return (ConnectRabbitAccountFragment) this.connectRabbitAccountFragment.getValue();
    }

    private final ConnectRabbitAccountFailureFragment getConnectRabbitAccountFailureFragment() {
        return (ConnectRabbitAccountFailureFragment) this.connectRabbitAccountFailureFragment.getValue();
    }

    private final ConnectRabbitAccountSuccessFragment getConnectRabbitAccountSuccessFragment() {
        return (ConnectRabbitAccountSuccessFragment) this.connectRabbitAccountSuccessFragment.getValue();
    }

    private final GuidePasscodeFragment getGuidePasscodeFragment() {
        return (GuidePasscodeFragment) this.guidePasscodeFragment.getValue();
    }

    private final SetPasscodeFragment getSetPasscodeFragment() {
        return (SetPasscodeFragment) this.setPasscodeFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsets onCreate$lambda$0;
                onCreate$lambda$0 = InitStepActivity.onCreate$lambda$0(InitStepActivity.this, view, windowInsets);
                return onCreate$lambda$0;
            }
        });
        Object systemService = getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        SensorManager sensorManager = (SensorManager) systemService;
        this.sensorManager = sensorManager;
        if (sensorManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
            sensorManager = null;
        }
        this.accelerometer = sensorManager.getDefaultSensor(1);
        initViews();
        PermissionUtils.INSTANCE.checkAndAutoRequestPermissions(this);
        m7467goto(getInitStepGuideAnimationFragment());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsets onCreate$lambda$0(InitStepActivity this$0, View view, WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(this$0.getWindow(), this$0.getWindow().getDecorView());
        Intrinsics.checkNotNullExpressionValue(insetsController, "getInsetsController(...)");
        insetsController.hide(WindowInsetsCompat.Type.systemBars());
        insetsController.hide(WindowInsetsCompat.Type.navigationBars());
        return view.onApplyWindowInsets(windowInsets);
    }

    private final void initViews() {
        View findViewById = findViewById(R.id.spiv_step_progress_indicator);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        StepProgressIndicatorView stepProgressIndicatorView = (StepProgressIndicatorView) findViewById;
        this.spivStepProgressIndicator = stepProgressIndicatorView;
        if (stepProgressIndicatorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            stepProgressIndicatorView = null;
        }
        String string = getString(R.string.text_init_step_1_name);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(R.string.text_init_step_2_name);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = getString(R.string.text_init_step_3_name);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        stepProgressIndicatorView.setSteps(CollectionsKt.listOf((Object[]) new StepProgressIndicatorView.Step[]{new StepProgressIndicatorView.Step(string), new StepProgressIndicatorView.Step(string2), new StepProgressIndicatorView.Step(string3)}));
        View findViewById2 = findViewById(R.id.tv_back_title);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.tvBackTitle = (TextView) findViewById2;
        View findViewById3 = findViewById(R.id.ll_back_container);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.llBackContainer = (LinearLayout) findViewById3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
            sensorManager = null;
        }
        sensorManager.registerListener(this, this.accelerometer, 3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
            sensorManager = null;
        }
        sensorManager.unregisterListener(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return isCurrentContent(getConnectNetworkFragment()) && super.dispatchTouchEvent(ev);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        Object firstOrNull = CollectionsKt.firstOrNull((List<? extends Object>) fragments);
        OnKeyUpListener onKeyUpListener = firstOrNull instanceof OnKeyUpListener ? (OnKeyUpListener) firstOrNull : null;
        if (onKeyUpListener == null) {
            return false;
        }
        onKeyUpListener.onKeyDown(keyCode, event);
        return false;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        Object firstOrNull = CollectionsKt.firstOrNull((List<? extends Object>) fragments);
        OnKeyUpListener onKeyUpListener = firstOrNull instanceof OnKeyUpListener ? (OnKeyUpListener) firstOrNull : null;
        if (onKeyUpListener == null) {
            return false;
        }
        onKeyUpListener.onKeyUp(keyCode, event);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 49374) {
            parserScanQrLoginResult(requestCode, resultCode, data);
            return;
        }
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        Fragment fragment = (Fragment) CollectionsKt.firstOrNull((List) fragments);
        if (fragment != null) {
            fragment.onActivityResult(requestCode, resultCode, data);
        }
    }

    private final void parserScanQrLoginResult(int requestCode, int resultCode, Intent data) {
        if (resultCode != -1) {
            return;
        }
        Unit unit = null;
        Serializable serializableExtra = data != null ? data.getSerializableExtra(ScanQrCodeResult.EXTRA_SCAN_QR_CODE_RESULT) : null;
        ScanQrCodeResult scanQrCodeResult = serializableExtra instanceof ScanQrCodeResult ? (ScanQrCodeResult) serializableExtra : null;
        if (scanQrCodeResult == null) {
            gotoConnectAccountFailure(ScanQrCodeResult.ErrorType.ResultError);
            return;
        }
        if (scanQrCodeResult.getErrorType() != null) {
            gotoConnectAccountFailure(scanQrCodeResult.getErrorType());
            return;
        }
        String actualUserId = scanQrCodeResult.getActualUserId();
        if (actualUserId != null) {
            Constant.setUserId(actualUserId);
        }
        String accountKey = scanQrCodeResult.getAccountKey();
        if (accountKey != null) {
            Constant.saveLoginToken(accountKey);
        }
        String username = scanQrCodeResult.getUsername();
        if (username != null) {
            gotoConnectAccountSuccess(username);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            gotoConnectAccountFailure(ScanQrCodeResult.ErrorType.ResultError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public final void m7467goto(Fragment fragment) {
        autoCheckShowInitStepProgressIndicator(fragment);
        getSupportFragmentManager().beginTransaction().replace(R.id.fl_content_container, fragment, fragment.getClass().getName()).commitNowAllowingStateLoss();
    }

    private final void autoCheckShowInitStepProgressIndicator(Fragment fragment) {
        StepProgressIndicatorView stepProgressIndicatorView = this.spivStepProgressIndicator;
        StepProgressIndicatorView stepProgressIndicatorView2 = null;
        if (stepProgressIndicatorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            stepProgressIndicatorView = null;
        }
        stepProgressIndicatorView.changeShadowHeight(fragment instanceof ConnectNetworkFragment);
        int dp = this.noPaddingFragments.contains(Reflection.getOrCreateKotlinClass(fragment.getClass())) ? 0 : UiExtensionsKt.getDp(78);
        View findViewById = findViewById(R.id.fl_content_container);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setPadding(findViewById.getPaddingLeft(), dp, findViewById.getPaddingRight(), findViewById.getPaddingBottom());
        if (!Intrinsics.areEqual(fragment, getConnectNetworkFragment()) && !Intrinsics.areEqual(fragment, getConnectWifiSuccessFragment()) && !Intrinsics.areEqual(fragment, getConnectingWifiFragment())) {
            if (!Intrinsics.areEqual(fragment, getConnectRabbitAccountFragment()) && !Intrinsics.areEqual(fragment, getConnectRabbitAccountSuccessFragment()) && !Intrinsics.areEqual(fragment, getConnectRabbitAccountFailureFragment())) {
                if (Intrinsics.areEqual(fragment, getGuidePasscodeFragment()) || Intrinsics.areEqual(fragment, getSetPasscodeFragment())) {
                    StepProgressIndicatorView stepProgressIndicatorView3 = this.spivStepProgressIndicator;
                    if (stepProgressIndicatorView3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
                        stepProgressIndicatorView3 = null;
                    }
                    stepProgressIndicatorView3.setVisibility(0);
                    StepProgressIndicatorView stepProgressIndicatorView4 = this.spivStepProgressIndicator;
                    if (stepProgressIndicatorView4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
                    } else {
                        stepProgressIndicatorView2 = stepProgressIndicatorView4;
                    }
                    stepProgressIndicatorView2.setStepIndex(2);
                    return;
                }
                StepProgressIndicatorView stepProgressIndicatorView5 = this.spivStepProgressIndicator;
                if (stepProgressIndicatorView5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
                } else {
                    stepProgressIndicatorView2 = stepProgressIndicatorView5;
                }
                stepProgressIndicatorView2.setVisibility(8);
                return;
            }
            StepProgressIndicatorView stepProgressIndicatorView6 = this.spivStepProgressIndicator;
            if (stepProgressIndicatorView6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
                stepProgressIndicatorView6 = null;
            }
            stepProgressIndicatorView6.setVisibility(0);
            StepProgressIndicatorView stepProgressIndicatorView7 = this.spivStepProgressIndicator;
            if (stepProgressIndicatorView7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            } else {
                stepProgressIndicatorView2 = stepProgressIndicatorView7;
            }
            stepProgressIndicatorView2.setStepIndex(1);
            return;
        }
        StepProgressIndicatorView stepProgressIndicatorView8 = this.spivStepProgressIndicator;
        if (stepProgressIndicatorView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            stepProgressIndicatorView8 = null;
        }
        stepProgressIndicatorView8.setVisibility(0);
        StepProgressIndicatorView stepProgressIndicatorView9 = this.spivStepProgressIndicator;
        if (stepProgressIndicatorView9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
        } else {
            stepProgressIndicatorView2 = stepProgressIndicatorView9;
        }
        stepProgressIndicatorView2.setStepIndex(0);
    }

    public final void setStepProgressIndicatorAlpha(float alpha) {
        StepProgressIndicatorView stepProgressIndicatorView = this.spivStepProgressIndicator;
        if (stepProgressIndicatorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            stepProgressIndicatorView = null;
        }
        stepProgressIndicatorView.setAlpha(alpha);
    }

    private final boolean isCurrentContent(Fragment fragment) {
        return getSupportFragmentManager().getFragments().indexOf(fragment) >= 0;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.sensor.getType() != 1) {
            return;
        }
        float f = event.values[0];
        if (f < -8.0f && !this.isLandscape) {
            if (isCurrentContent(getRotateDeviceTipFragment())) {
                setRequestedOrientation(8);
                View decorView = getWindow().getDecorView();
                Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
                decorView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$onSensorChanged$$inlined$postDelayed$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        LandscapeEnterWifiPasswordFragment landscapeEnterWifiPasswordFragment;
                        InitStepActivity.this.isLandscape = true;
                        InitStepActivity initStepActivity = InitStepActivity.this;
                        landscapeEnterWifiPasswordFragment = initStepActivity.getLandscapeEnterWifiPasswordFragment();
                        initStepActivity.m7467goto(landscapeEnterWifiPasswordFragment);
                    }
                }, 200L);
                return;
            }
            return;
        }
        if (f > 0.0f && this.isLandscape && isCurrentContent(getLandscapeEnterWifiPasswordFragment())) {
            setRequestedOrientation(1);
            View decorView2 = getWindow().getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView2, "getDecorView(...)");
            decorView2.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$onSensorChanged$$inlined$postDelayed$2
                @Override // java.lang.Runnable
                public final void run() {
                    InitStepActivity.this.isLandscape = false;
                    InitStepActivity.this.gotoConnectNetwork(ConnectNetworkFragment.ShowType.WifiScanResult.INSTANCE);
                }
            }, 200L);
        }
    }

    public final void enterPasswordToConnectWifi(Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        getLandscapeEnterWifiPasswordFragment().setNeedConnectWifi(wifi);
        m7467goto(getRotateDeviceTipFragment());
    }

    public final void connectWifiSuccess(final String ssid) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        setRequestedOrientation(1);
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        decorView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectWifiSuccess$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                ConnectWifiSuccessFragment connectWifiSuccessFragment;
                ConnectWifiSuccessFragment connectWifiSuccessFragment2;
                InitStepActivity.this.isLandscape = false;
                connectWifiSuccessFragment = InitStepActivity.this.getConnectWifiSuccessFragment();
                connectWifiSuccessFragment.setSSID(ssid);
                InitStepActivity initStepActivity = InitStepActivity.this;
                connectWifiSuccessFragment2 = initStepActivity.getConnectWifiSuccessFragment();
                initStepActivity.m7467goto(connectWifiSuccessFragment2);
            }
        }, 200L);
    }

    public final void connectWifiFailure(final Wifi wifi, final String password, final ConnectionErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        setRequestedOrientation(1);
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        decorView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectWifiFailure$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                InitStepActivity.this.isLandscape = false;
                InitStepActivity.this.gotoConnectNetwork(new ConnectNetworkFragment.ShowType.WifiConnectRetry(wifi, password, errorCode));
            }
        }, 200L);
    }

    public final void gotoConnectNetwork(ConnectNetworkFragment.ShowType showType) {
        Intrinsics.checkNotNullParameter(showType, "showType");
        getConnectNetworkFragment().setShowType(showType);
        m7467goto(getConnectNetworkFragment());
    }

    public final void gotoGuidePasscode() {
        m7467goto(getGuidePasscodeFragment());
    }

    public final void gotoSetPasscode() {
        m7467goto(getSetPasscodeFragment());
    }

    public final void gotoConnectRabbitAccount() {
        m7467goto(getConnectRabbitAccountFragment());
    }

    public final void gotoConnectAccountFailure(ScanQrCodeResult.ErrorType errorType) {
        Intrinsics.checkNotNullParameter(errorType, "errorType");
        getConnectRabbitAccountFailureFragment().setErrorType(errorType);
        m7467goto(getConnectRabbitAccountFailureFragment());
    }

    public static /* synthetic */ void gotoConnectAccountSuccess$default(InitStepActivity initStepActivity, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        initStepActivity.gotoConnectAccountSuccess(str);
    }

    public final void gotoConnectAccountSuccess(String username) {
        getConnectRabbitAccountSuccessFragment().setUsername(username);
        m7467goto(getConnectRabbitAccountSuccessFragment());
    }

    public final void gotoFinalGuideAnimation() {
        m7467goto(getInitStepFinalGuideAnimationFragment());
    }

    public final void showBack(final int backTitleResId) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2 = this.backAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning() && (valueAnimator = this.backAnimator) != null) {
            valueAnimator.cancel();
        }
        LinearLayout linearLayout = this.llBackContainer;
        StepProgressIndicatorView stepProgressIndicatorView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
            linearLayout = null;
        }
        if (linearLayout.getAlpha() == 1.0f) {
            StepProgressIndicatorView stepProgressIndicatorView2 = this.spivStepProgressIndicator;
            if (stepProgressIndicatorView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            } else {
                stepProgressIndicatorView = stepProgressIndicatorView2;
            }
            if (stepProgressIndicatorView.getAlpha() == 0.0f) {
                return;
            }
        }
        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(200L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                InitStepActivity.showBack$lambda$12$lambda$9(InitStepActivity.this, valueAnimator3);
            }
        });
        Intrinsics.checkNotNull(duration);
        duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$showBack$lambda$12$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                duration.removeAllUpdateListeners();
                duration.removeAllListeners();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                TextView textView;
                textView = this.tvBackTitle;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvBackTitle");
                    textView = null;
                }
                textView.setText(backTitleResId);
            }
        });
        this.backAnimator = duration;
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showBack$lambda$12$lambda$9(InitStepActivity this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        StepProgressIndicatorView stepProgressIndicatorView = this$0.spivStepProgressIndicator;
        LinearLayout linearLayout = null;
        if (stepProgressIndicatorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            stepProgressIndicatorView = null;
        }
        stepProgressIndicatorView.setAlpha(1.0f - floatValue);
        LinearLayout linearLayout2 = this$0.llBackContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setAlpha(floatValue);
    }

    public final void hideBack() {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2 = this.backAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning() && (valueAnimator = this.backAnimator) != null) {
            valueAnimator.cancel();
        }
        LinearLayout linearLayout = this.llBackContainer;
        StepProgressIndicatorView stepProgressIndicatorView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
            linearLayout = null;
        }
        if (linearLayout.getAlpha() == 0.0f) {
            StepProgressIndicatorView stepProgressIndicatorView2 = this.spivStepProgressIndicator;
            if (stepProgressIndicatorView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            } else {
                stepProgressIndicatorView = stepProgressIndicatorView2;
            }
            if (stepProgressIndicatorView.getAlpha() == 1.0f) {
                return;
            }
        }
        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(200L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                InitStepActivity.hideBack$lambda$16$lambda$14(InitStepActivity.this, valueAnimator3);
            }
        });
        Intrinsics.checkNotNull(duration);
        duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$hideBack$lambda$16$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                duration.removeAllUpdateListeners();
                duration.removeAllListeners();
            }
        });
        this.backAnimator = duration;
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideBack$lambda$16$lambda$14(InitStepActivity this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        StepProgressIndicatorView stepProgressIndicatorView = this$0.spivStepProgressIndicator;
        LinearLayout linearLayout = null;
        if (stepProgressIndicatorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            stepProgressIndicatorView = null;
        }
        stepProgressIndicatorView.setAlpha(floatValue);
        LinearLayout linearLayout2 = this$0.llBackContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setAlpha(1.0f - floatValue);
    }

    public final boolean isBackShowing() {
        LinearLayout linearLayout = this.llBackContainer;
        StepProgressIndicatorView stepProgressIndicatorView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
            linearLayout = null;
        }
        if (linearLayout.getAlpha() == 1.0f) {
            StepProgressIndicatorView stepProgressIndicatorView2 = this.spivStepProgressIndicator;
            if (stepProgressIndicatorView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("spivStepProgressIndicator");
            } else {
                stepProgressIndicatorView = stepProgressIndicatorView2;
            }
            if (stepProgressIndicatorView.getAlpha() == 0.0f) {
                return true;
            }
        }
        return false;
    }

    public final void connectToWifi(final Wifi wifi, final String password) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        Intrinsics.checkNotNullParameter(password, "password");
        setRequestedOrientation(1);
        m7467goto(getConnectingWifiFragment());
        WifiUtils.withActivity(this).connectWith(wifi.getSsid(), password).onConnectionResult(new ConnectionSuccessListener() { // from class: tech.rabbit.r1launcher.initstep.InitStepActivity$connectToWifi$1
            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener
            public void success() {
                InitStepActivity.this.connectWifiSuccess(wifi.getSsid());
            }

            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener
            public void failed(ConnectionErrorCode errorCode) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                InitStepActivity.this.connectWifiFailure(wifi, password, errorCode);
            }
        }).start();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.anim_fade_in, R.anim.anim_fade_out);
    }
}
