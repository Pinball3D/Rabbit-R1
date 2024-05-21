package tech.rabbit.r1launcher.passcode;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment;

/* compiled from: VerifyPasscodeActivity.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0015J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "verifyPasscodeFragment", "Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;", "getVerifyPasscodeFragment", "()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;", "verifyPasscodeFragment$delegate", "Lkotlin/Lazy;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VerifyPasscodeActivity extends AppCompatActivity {
    private static final String EXTRA_MODULE_NAME = "EXTRA_MODULE_NAME";

    /* renamed from: verifyPasscodeFragment$delegate, reason: from kotlin metadata */
    private final Lazy verifyPasscodeFragment = LazyKt.lazy(new Function0<VerifyPasscodeFragment>() { // from class: tech.rabbit.r1launcher.passcode.VerifyPasscodeActivity$verifyPasscodeFragment$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final VerifyPasscodeFragment invoke() {
            String stringExtra = VerifyPasscodeActivity.this.getIntent().getStringExtra("EXTRA_MODULE_NAME");
            if (stringExtra == null) {
                stringExtra = "";
            }
            return new VerifyPasscodeFragment(stringExtra);
        }
    });

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: VerifyPasscodeActivity.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;", "", "()V", VerifyPasscodeActivity.EXTRA_MODULE_NAME, "", "launch", "", "activity", "Landroid/app/Activity;", "moduleName", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void launch(Activity activity, String moduleName) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(moduleName, "moduleName");
            activity.startActivity(new Intent(activity, (Class<?>) VerifyPasscodeActivity.class).putExtra(VerifyPasscodeActivity.EXTRA_MODULE_NAME, moduleName));
        }
    }

    private final VerifyPasscodeFragment getVerifyPasscodeFragment() {
        return (VerifyPasscodeFragment) this.verifyPasscodeFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportFragmentManager().beginTransaction().replace(R.id.content, getVerifyPasscodeFragment()).commitNowAllowingStateLoss();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        getVerifyPasscodeFragment().onKeyCodeEvent(keyCode, event);
        return true;
    }
}
