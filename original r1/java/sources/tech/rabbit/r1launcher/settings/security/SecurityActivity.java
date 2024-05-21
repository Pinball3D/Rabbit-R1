package tech.rabbit.r1launcher.settings.security;

import android.os.Bundle;
import android.view.KeyEvent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.utils.Constants;

/* compiled from: SecurityActivity.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0012\u0010\u0017\u001a\u00020\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\b\u001a\u0004\b\u0010\u0010\u0011¨\u0006 "}, d2 = {"Ltech/rabbit/r1launcher/settings/security/SecurityActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "changePasscodeFragment", "Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;", "getChangePasscodeFragment", "()Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;", "changePasscodeFragment$delegate", "Lkotlin/Lazy;", "securityFragment", "Ltech/rabbit/r1launcher/settings/security/SecurityFragment;", "getSecurityFragment", "()Ltech/rabbit/r1launcher/settings/security/SecurityFragment;", "securityFragment$delegate", "verifyPasscodeFragment", "Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;", "getVerifyPasscodeFragment", "()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;", "verifyPasscodeFragment$delegate", "gotoChangePasscode", "", "gotoSecurityFragment", "gotoVerifyPasscode", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SecurityActivity extends AppCompatActivity {
    public static final int $stable = 8;

    /* renamed from: securityFragment$delegate, reason: from kotlin metadata */
    private final Lazy securityFragment = LazyKt.lazy(new Function0<SecurityFragment>() { // from class: tech.rabbit.r1launcher.settings.security.SecurityActivity$securityFragment$2
        @Override // kotlin.jvm.functions.Function0
        public final SecurityFragment invoke() {
            return new SecurityFragment();
        }
    });

    /* renamed from: verifyPasscodeFragment$delegate, reason: from kotlin metadata */
    private final Lazy verifyPasscodeFragment = LazyKt.lazy(new Function0<VerifyPasscodeFragment>() { // from class: tech.rabbit.r1launcher.settings.security.SecurityActivity$verifyPasscodeFragment$2
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        public final VerifyPasscodeFragment invoke() {
            return new VerifyPasscodeFragment(null, 1, 0 == true ? 1 : 0);
        }
    });

    /* renamed from: changePasscodeFragment$delegate, reason: from kotlin metadata */
    private final Lazy changePasscodeFragment = LazyKt.lazy(new Function0<ChangePasscodeFragment>() { // from class: tech.rabbit.r1launcher.settings.security.SecurityActivity$changePasscodeFragment$2
        @Override // kotlin.jvm.functions.Function0
        public final ChangePasscodeFragment invoke() {
            return new ChangePasscodeFragment();
        }
    });

    private final SecurityFragment getSecurityFragment() {
        return (SecurityFragment) this.securityFragment.getValue();
    }

    private final VerifyPasscodeFragment getVerifyPasscodeFragment() {
        return (VerifyPasscodeFragment) this.verifyPasscodeFragment.getValue();
    }

    private final ChangePasscodeFragment getChangePasscodeFragment() {
        return (ChangePasscodeFragment) this.changePasscodeFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings_page);
        gotoSecurityFragment();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode) || keyCode == 19 || keyCode == 20) {
            List<Fragment> fragments = getSupportFragmentManager().getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
            Fragment fragment = (Fragment) CollectionsKt.firstOrNull((List) fragments);
            if (fragment instanceof SecurityFragment) {
                ((SecurityFragment) fragment).onKeyCodeEvent(keyCode, event);
            } else if (fragment instanceof VerifyPasscodeFragment) {
                ((VerifyPasscodeFragment) fragment).onKeyCodeEvent(keyCode, event);
            } else {
                if (!(fragment instanceof ChangePasscodeFragment)) {
                    return false;
                }
                ((ChangePasscodeFragment) fragment).onKeyCodeEvent(keyCode, event);
            }
        }
        return super.onKeyUp(keyCode, event);
    }

    public final void gotoSecurityFragment() {
        getSupportFragmentManager().beginTransaction().replace(R.id.root_layout, getSecurityFragment()).commit();
    }

    public final void gotoVerifyPasscode() {
        getSupportFragmentManager().beginTransaction().replace(R.id.root_layout, getVerifyPasscodeFragment()).commit();
    }

    public final void gotoChangePasscode() {
        getSupportFragmentManager().beginTransaction().replace(R.id.root_layout, getChangePasscodeFragment()).commit();
    }
}
