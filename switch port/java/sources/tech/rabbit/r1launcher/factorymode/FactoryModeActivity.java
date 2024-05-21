package tech.rabbit.r1launcher.factorymode;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;

/* compiled from: FactoryModeActivity.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0012\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "isDoubleClick", "", "launch", "", "packageName", "", "mainActivityRefPath", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FactoryModeActivity extends AppCompatActivity {
    private boolean isDoubleClick;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public FactoryModeActivity() {
        super(R.layout.activity_factory_mode);
    }

    /* compiled from: FactoryModeActivity.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void launch(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, (Class<?>) FactoryModeActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        findViewById(R.id.view_adb_open).setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.factorymode.FactoryModeActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FactoryModeActivity.onCreate$lambda$1(FactoryModeActivity.this, view);
            }
        });
        ((TextView) findViewById(R.id.tv_factory)).setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.factorymode.FactoryModeActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FactoryModeActivity.onCreate$lambda$2(FactoryModeActivity.this, view);
            }
        });
        ((TextView) findViewById(R.id.tv_aging)).setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.factorymode.FactoryModeActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FactoryModeActivity.onCreate$lambda$3(FactoryModeActivity.this, view);
            }
        });
        ((TextView) findViewById(R.id.tv_shutdown)).setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.factorymode.FactoryModeActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FactoryModeActivity.onCreate$lambda$4(view);
            }
        });
        ((TextView) findViewById(R.id.tv_back)).setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.factorymode.FactoryModeActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FactoryModeActivity.onCreate$lambda$5(FactoryModeActivity.this, view);
            }
        });
        ((TextView) findViewById(R.id.tv_device_id)).setText("DeviceId: " + SystemControllerUtil.INSTANCE.getImei(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(final FactoryModeActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isDoubleClick) {
            Settings.Global.putInt(this$0.getContentResolver(), "adb_enabled", 1);
            Toast.makeText(this$0, "ADB Opened", 0).show();
        } else {
            this$0.isDoubleClick = true;
            Intrinsics.checkNotNull(view);
            view.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.factorymode.FactoryModeActivity$onCreate$lambda$1$$inlined$postDelayed$1
                @Override // java.lang.Runnable
                public final void run() {
                    FactoryModeActivity.this.isDoubleClick = false;
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$2(FactoryModeActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.launch("com.yk.factorytest", "com.yk.factorytest.ui.MainActivity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$3(FactoryModeActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.launch("com.yk.phonetest", "com.yk.phonetest.activities.PhoneTestActivity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$4(View view) {
        SystemControllerUtil.INSTANCE.shutdownDevice();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$5(FactoryModeActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    private final void launch(String packageName, String mainActivityRefPath) {
        Object m5698constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            FactoryModeActivity factoryModeActivity = this;
            startActivity(new Intent().setComponent(new ComponentName(packageName, mainActivityRefPath)));
            m5698constructorimpl = Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) == null) {
            return;
        }
        Toast.makeText(this, "not found activity: " + mainActivityRefPath, 0).show();
    }
}
