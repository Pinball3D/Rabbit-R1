package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SplitController.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000fJ\u0006\u0010\u0012\u001a\u00020\tJ\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0007J\u001a\u0010\u0018\u001a\u00020\t2\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000fJ\u0016\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/window/embedding/SplitController;", "", "()V", "embeddingBackend", "Landroidx/window/embedding/EmbeddingBackend;", "staticSplitRules", "", "Landroidx/window/embedding/EmbeddingRule;", "addSplitListener", "", "activity", "Landroid/app/Activity;", "executor", "Ljava/util/concurrent/Executor;", "consumer", "Landroidx/core/util/Consumer;", "", "Landroidx/window/embedding/SplitInfo;", "clearRegisteredRules", "getSplitRules", "isSplitSupported", "", "registerRule", "rule", "removeSplitListener", "setStaticSplitRules", "staticRules", "unregisterRule", "Companion", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SplitController {
    private static volatile SplitController globalInstance = null;
    public static final boolean sDebug = false;
    private final EmbeddingBackend embeddingBackend;
    private Set<? extends EmbeddingRule> staticSplitRules;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ReentrantLock globalLock = new ReentrantLock();

    public /* synthetic */ SplitController(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final SplitController getInstance() {
        return INSTANCE.getInstance();
    }

    @JvmStatic
    public static final void initialize(Context context, int i) {
        INSTANCE.initialize(context, i);
    }

    private SplitController() {
        this.embeddingBackend = ExtensionEmbeddingBackend.INSTANCE.getInstance();
        this.staticSplitRules = SetsKt.emptySet();
    }

    public final Set<EmbeddingRule> getSplitRules() {
        return CollectionsKt.toSet(this.embeddingBackend.getSplitRules());
    }

    public final void registerRule(EmbeddingRule rule) {
        Intrinsics.checkNotNullParameter(rule, "rule");
        this.embeddingBackend.registerRule(rule);
    }

    public final void unregisterRule(EmbeddingRule rule) {
        Intrinsics.checkNotNullParameter(rule, "rule");
        this.embeddingBackend.unregisterRule(rule);
    }

    public final void clearRegisteredRules() {
        this.embeddingBackend.setSplitRules(this.staticSplitRules);
    }

    public final void addSplitListener(Activity activity, Executor executor, Consumer<List<SplitInfo>> consumer) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        this.embeddingBackend.registerSplitListenerForActivity(activity, executor, consumer);
    }

    public final void removeSplitListener(Consumer<List<SplitInfo>> consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        this.embeddingBackend.unregisterSplitListenerForActivity(consumer);
    }

    public final boolean isSplitSupported() {
        return this.embeddingBackend.isSplitSupported();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setStaticSplitRules(Set<? extends EmbeddingRule> staticRules) {
        this.staticSplitRules = staticRules;
        this.embeddingBackend.setSplitRules(staticRules);
    }

    /* compiled from: SplitController.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0004H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/window/embedding/SplitController$Companion;", "", "()V", "globalInstance", "Landroidx/window/embedding/SplitController;", "globalLock", "Ljava/util/concurrent/locks/ReentrantLock;", "sDebug", "", "getInstance", "initialize", "", "context", "Landroid/content/Context;", "staticRuleResourceId", "", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SplitController getInstance() {
            if (SplitController.globalInstance == null) {
                ReentrantLock reentrantLock = SplitController.globalLock;
                reentrantLock.lock();
                try {
                    if (SplitController.globalInstance == null) {
                        Companion companion = SplitController.INSTANCE;
                        SplitController.globalInstance = new SplitController(null);
                    }
                    Unit unit = Unit.INSTANCE;
                } finally {
                    reentrantLock.unlock();
                }
            }
            SplitController splitController = SplitController.globalInstance;
            Intrinsics.checkNotNull(splitController);
            return splitController;
        }

        @JvmStatic
        public final void initialize(Context context, int staticRuleResourceId) {
            Intrinsics.checkNotNullParameter(context, "context");
            Set<EmbeddingRule> parseSplitRules$window_release = new SplitRuleParser().parseSplitRules$window_release(context, staticRuleResourceId);
            SplitController companion = getInstance();
            if (parseSplitRules$window_release == null) {
                parseSplitRules$window_release = SetsKt.emptySet();
            }
            companion.setStaticSplitRules(parseSplitRules$window_release);
        }
    }
}
