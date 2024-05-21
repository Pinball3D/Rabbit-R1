package tech.rabbit.r1launcher;

import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.core.app.NotificationCompat;
import androidx.core.view.WindowCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import tech.rabbit.r1launcher.ui.theme.ThemeKt;

/* compiled from: HWTestActivity.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR+\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Ltech/rabbit/r1launcher/HWTestActivity;", "Landroidx/activity/ComponentActivity;", "()V", "<set-?>", "", "keyCode", "getKeyCode", "()I", "setKeyCode", "(I)V", "keyCode$delegate", "Landroidx/compose/runtime/MutableIntState;", "", "keyUpDown", "getKeyUpDown", "()Ljava/lang/String;", "setKeyUpDown", "(Ljava/lang/String;)V", "keyUpDown$delegate", "Landroidx/compose/runtime/MutableState;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onKeyDown", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class HWTestActivity extends ComponentActivity {
    public static final int $stable = 0;

    /* renamed from: keyCode$delegate, reason: from kotlin metadata */
    private final MutableIntState keyCode = SnapshotIntStateKt.mutableIntStateOf(0);

    /* renamed from: keyUpDown$delegate, reason: from kotlin metadata */
    private final MutableState keyUpDown;

    public HWTestActivity() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
        this.keyUpDown = mutableStateOf$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getKeyCode() {
        return this.keyCode.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final String getKeyUpDown() {
        return (String) this.keyUpDown.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(1454236199, true, new Function2<Composer, Integer, Unit>() { // from class: tech.rabbit.r1launcher.HWTestActivity$onCreate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                if ((i & 11) != 2 || !composer.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1454236199, i, -1, "tech.rabbit.r1launcher.HWTestActivity.onCreate.<anonymous> (HWTestActivity.kt:33)");
                    }
                    final HWTestActivity hWTestActivity = HWTestActivity.this;
                    ThemeKt.R1LauncherTheme(false, false, ComposableLambdaKt.composableLambda(composer, -1085247740, true, new Function2<Composer, Integer, Unit>() { // from class: tech.rabbit.r1launcher.HWTestActivity$onCreate$1.1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer2, int i2) {
                            if ((i2 & 11) != 2 || !composer2.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1085247740, i2, -1, "tech.rabbit.r1launcher.HWTestActivity.onCreate.<anonymous>.<anonymous> (HWTestActivity.kt:35)");
                                }
                                Modifier fillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                                long m1044getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composer2, MaterialTheme.$stable).m1044getBackground0d7_KjU();
                                final HWTestActivity hWTestActivity2 = HWTestActivity.this;
                                SurfaceKt.m1484SurfaceT9BRK9s(fillMaxSize$default, null, m1044getBackground0d7_KjU, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.composableLambda(composer2, 1723617289, true, new Function2<Composer, Integer, Unit>() { // from class: tech.rabbit.r1launcher.HWTestActivity.onCreate.1.1.1
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer composer3, int i3) {
                                        int keyCode;
                                        String keyUpDown;
                                        if ((i3 & 11) != 2 || !composer3.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1723617289, i3, -1, "tech.rabbit.r1launcher.HWTestActivity.onCreate.<anonymous>.<anonymous>.<anonymous> (HWTestActivity.kt:39)");
                                            }
                                            HWTestActivityKt.Greeting("Android", null, composer3, 6, 2);
                                            StringBuilder sb = new StringBuilder("Key Code: ");
                                            keyCode = HWTestActivity.this.getKeyCode();
                                            StringBuilder append = sb.append(keyCode).append("\nKey Up/Down: ");
                                            keyUpDown = HWTestActivity.this.getKeyUpDown();
                                            TextKt.m1562Text4IGK_g(append.append(keyUpDown).toString(), PaddingKt.m494paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, Dp.m4883constructorimpl(42), 0.0f, 0.0f, 13, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 48, 0, 131068);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        composer3.skipToGroupEnd();
                                    }
                                }), composer2, 12582918, 122);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer2.skipToGroupEnd();
                        }
                    }), composer, 384, 3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        }), 1, null);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        setKeyCode(keyCode);
        setKeyUpDown("Down");
        Log.d(getLocalClassName(), "keyDown: " + keyCode);
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        setKeyCode(keyCode);
        setKeyUpDown("Up");
        Log.d(getLocalClassName(), "keyUp: " + keyCode);
        return super.onKeyUp(keyCode, event);
    }

    private final void setKeyCode(int i) {
        this.keyCode.setIntValue(i);
    }

    private final void setKeyUpDown(String str) {
        this.keyUpDown.setValue(str);
    }
}
