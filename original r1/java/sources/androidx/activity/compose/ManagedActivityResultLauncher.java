package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.State;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.Deprecated;
import kotlin.Metadata;

/* compiled from: ActivityResultRegistry.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B/\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b0\u0007¢\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\bH\u0016J\u001f\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00028\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0002\u0010\u0010J\b\u0010\u0011\u001a\u00020\fH\u0017R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/activity/compose/ManagedActivityResultLauncher;", "I", "O", "Landroidx/activity/result/ActivityResultLauncher;", "launcher", "Landroidx/activity/compose/ActivityResultLauncherHolder;", "contract", "Landroidx/compose/runtime/State;", "Landroidx/activity/result/contract/ActivityResultContract;", "(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/compose/runtime/State;)V", "getContract", "launch", "", "input", "options", "Landroidx/core/app/ActivityOptionsCompat;", "(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V", "unregister", "activity-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ManagedActivityResultLauncher<I, O> extends ActivityResultLauncher<I> {
    public static final int $stable = 8;
    private final State<ActivityResultContract<I, O>> contract;
    private final ActivityResultLauncherHolder<I> launcher;

    /* JADX WARN: Multi-variable type inference failed */
    public ManagedActivityResultLauncher(ActivityResultLauncherHolder<I> activityResultLauncherHolder, State<? extends ActivityResultContract<I, O>> state) {
        this.launcher = activityResultLauncherHolder;
        this.contract = state;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    @Deprecated(message = "Registration is automatically handled by rememberLauncherForActivityResult")
    public void unregister() {
        throw new UnsupportedOperationException("Registration is automatically handled by rememberLauncherForActivityResult");
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void launch(I input, ActivityOptionsCompat options) {
        this.launcher.launch(input, options);
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public ActivityResultContract<I, ?> getContract() {
        return this.contract.getValue();
    }
}
