package androidx.work.impl;

import android.content.Context;
import androidx.compose.material3.MenuKt;
import androidx.work.Configuration;
import androidx.work.R;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkManagerImplExt.kt */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\b\u001aß\u0001\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0097\u0001\b\u0002\u0010\u0010\u001a\u0090\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0011j\u0002`\u0016H\u0007¢\u0006\u0002\b\u0017\u001a>\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u001a®\u0001\u0010\u0019\u001a\u0090\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0011j\u0002`\u00162\u0012\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u001a\"\u00020\u0015¢\u0006\u0002\u0010\u001b* \u0002\u0010\u001c\"\u008c\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u00112\u008c\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0011¨\u0006\u001d"}, d2 = {"TestWorkManagerImpl", "Landroidx/work/impl/WorkManagerImpl;", "context", "Landroid/content/Context;", "configuration", "Landroidx/work/Configuration;", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "createTestWorkManager", "WorkManagerImpl", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "trackers", "Landroidx/work/impl/constraints/trackers/Trackers;", "processor", "Landroidx/work/impl/Processor;", "schedulersCreator", "Lkotlin/Function6;", "Lkotlin/ParameterName;", "name", "", "Landroidx/work/impl/Scheduler;", "Landroidx/work/impl/SchedulersCreator;", "createWorkManager", "createSchedulers", "schedulers", "", "([Landroidx/work/impl/Scheduler;)Lkotlin/jvm/functions/Function6;", "SchedulersCreator", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkManagerImplExtKt {
    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return createWorkManager$default(context, configuration, null, null, null, null, null, 124, null);
    }

    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration, TaskExecutor workTaskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        return createWorkManager$default(context, configuration, workTaskExecutor, null, null, null, null, MenuKt.InTransitionDuration, null);
    }

    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration, TaskExecutor workTaskExecutor, WorkDatabase workDatabase) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        return createWorkManager$default(context, configuration, workTaskExecutor, workDatabase, null, null, null, 112, null);
    }

    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration, TaskExecutor workTaskExecutor, WorkDatabase workDatabase, Trackers trackers) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        return createWorkManager$default(context, configuration, workTaskExecutor, workDatabase, trackers, null, null, 96, null);
    }

    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration, TaskExecutor workTaskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(processor, "processor");
        return createWorkManager$default(context, configuration, workTaskExecutor, workDatabase, trackers, processor, null, 64, null);
    }

    public static /* synthetic */ WorkManagerImpl createWorkManager$default(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor, Function6 function6, int i, Object obj) {
        WorkDatabase workDatabase2;
        Trackers trackers2;
        WorkManagerTaskExecutor workManagerTaskExecutor = (i & 4) != 0 ? new WorkManagerTaskExecutor(configuration.getTaskExecutor()) : taskExecutor;
        if ((i & 8) != 0) {
            WorkDatabase.Companion companion = WorkDatabase.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            SerialExecutor serialTaskExecutor = workManagerTaskExecutor.getSerialTaskExecutor();
            Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workTaskExecutor.serialTaskExecutor");
            workDatabase2 = companion.create(applicationContext, serialTaskExecutor, configuration.getClock(), context.getResources().getBoolean(R.bool.workmanager_test_configuration));
        } else {
            workDatabase2 = workDatabase;
        }
        if ((i & 16) != 0) {
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "context.applicationContext");
            trackers2 = new Trackers(applicationContext2, workManagerTaskExecutor, null, null, null, null, 60, null);
        } else {
            trackers2 = trackers;
        }
        return createWorkManager(context, configuration, workManagerTaskExecutor, workDatabase2, trackers2, (i & 32) != 0 ? new Processor(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase2) : processor, (i & 64) != 0 ? WorkManagerImplExtKt$WorkManagerImpl$1.INSTANCE : function6);
    }

    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration, TaskExecutor workTaskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor, Function6<? super Context, ? super Configuration, ? super TaskExecutor, ? super WorkDatabase, ? super Trackers, ? super Processor, ? extends List<? extends Scheduler>> schedulersCreator) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(schedulersCreator, "schedulersCreator");
        return new WorkManagerImpl(context.getApplicationContext(), configuration, workTaskExecutor, workDatabase, schedulersCreator.invoke(context, configuration, workTaskExecutor, workDatabase, trackers, processor), processor, trackers);
    }

    public static final WorkManagerImpl createTestWorkManager(Context context, Configuration configuration, TaskExecutor workTaskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        WorkDatabase.Companion companion = WorkDatabase.INSTANCE;
        SerialExecutor serialTaskExecutor = workTaskExecutor.getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workTaskExecutor.serialTaskExecutor");
        return createWorkManager$default(context, configuration, workTaskExecutor, companion.create(context, serialTaskExecutor, configuration.getClock(), true), null, null, null, 112, null);
    }

    public static final Function6<Context, Configuration, TaskExecutor, WorkDatabase, Trackers, Processor, List<Scheduler>> schedulers(final Scheduler... schedulers) {
        Intrinsics.checkNotNullParameter(schedulers, "schedulers");
        return (Function6) new Function6<Context, Configuration, TaskExecutor, WorkDatabase, Trackers, Processor, List<? extends Scheduler>>() { // from class: androidx.work.impl.WorkManagerImplExtKt$schedulers$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(6);
            }

            @Override // kotlin.jvm.functions.Function6
            public final List<Scheduler> invoke(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor) {
                Intrinsics.checkNotNullParameter(context, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(configuration, "<anonymous parameter 1>");
                Intrinsics.checkNotNullParameter(taskExecutor, "<anonymous parameter 2>");
                Intrinsics.checkNotNullParameter(workDatabase, "<anonymous parameter 3>");
                Intrinsics.checkNotNullParameter(trackers, "<anonymous parameter 4>");
                Intrinsics.checkNotNullParameter(processor, "<anonymous parameter 5>");
                return ArraysKt.toList(schedulers);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Scheduler> createSchedulers(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor) {
        Scheduler createBestAvailableBackgroundScheduler = Schedulers.createBestAvailableBackgroundScheduler(context, workDatabase, configuration);
        Intrinsics.checkNotNullExpressionValue(createBestAvailableBackgroundScheduler, "createBestAvailableBackg…kDatabase, configuration)");
        return CollectionsKt.listOf((Object[]) new Scheduler[]{createBestAvailableBackgroundScheduler, new GreedyScheduler(context, configuration, trackers, processor, new WorkLauncherImpl(processor, taskExecutor), taskExecutor)});
    }
}
