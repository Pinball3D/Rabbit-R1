.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;,
        Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;,
        Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;,
        Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;,
        Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;
    }
.end annotation


# static fields
.field private static final RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_NEW_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_STOPPING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lcom/google/common/util/concurrent/Monitor;

.field private volatile snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractService$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 66
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$2;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractService$2;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 78
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 79
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->stoppingEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 80
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 81
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->stoppingEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 83
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 84
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 85
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 86
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 87
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 88
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 89
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 90
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 122
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 136
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 150
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 164
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 179
    new-instance v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 190
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/Monitor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    return-object p0
.end method

.method private checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 6

    .line 362
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 364
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const-string v2, " to be "

    const-string v3, "Expected the service "

    if-ne v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", but the service has FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 370
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private dispatchListenerEvents()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 502
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 503
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->dispatch()V

    :cond_0
    return-void
.end method

.method private enqueueFailedEvent(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 547
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractService$5;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method private enqueueRunningEvent()V
    .locals 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 512
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method private enqueueStartingEvent()V
    .locals 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method private enqueueStoppingEvent(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .line 516
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 517
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    .line 518
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 519
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    :goto_0
    return-void

    .line 521
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private enqueueTerminatedEvent(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .line 526
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 541
    :pswitch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 537
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 534
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 531
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 528
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static stoppingEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$4;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$4;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method

.method private static terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$3;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$3;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue;->addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final awaitRunning()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 302
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 304
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 306
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 307
    throw v0
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 312
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 316
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 317
    throw p1

    .line 323
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x32

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Timed out waiting for "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " to reach the RUNNING state."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final awaitTerminated()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 329
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 331
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 333
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 334
    throw v0
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 339
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 343
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 344
    throw p1

    .line 350
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 355
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x41

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Timed out waiting for "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " to reach a terminal state. Current state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected doCancelStart()V
    .locals 0

    return-void
.end method

.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 483
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->failureCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public final isRunning()Z
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p0

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final notifyFailed(Ljava/lang/Throwable;)V
    .locals 4

    .line 445
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 447
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 450
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 457
    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 458
    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/AbstractService;->enqueueFailedEvent(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 465
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 466
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    return-void

    .line 453
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed while in state:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 465
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 466
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 467
    throw p1
.end method

.method protected final notifyStarted()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 382
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 386
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 394
    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 398
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    goto :goto_0

    .line 400
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 401
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueRunningEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 404
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 405
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    return-void

    .line 387
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 391
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 404
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 405
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 406
    throw v0
.end method

.method protected final notifyStopped()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 418
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 430
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueTerminatedEvent(Lcom/google/common/util/concurrent/Service$State;)V

    goto :goto_0

    .line 425
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 434
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 435
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 434
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 435
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 436
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 249
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueStartingEvent()V

    .line 250
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 254
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 255
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    return-object p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 254
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 255
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 256
    throw v0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Service "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " has already been started"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 477
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->externalState()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p0

    return-object p0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 288
    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "isStoppable is incorrectly implemented, saw: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 280
    :pswitch_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 281
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueStoppingEvent(Lcom/google/common/util/concurrent/Service$State;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    goto :goto_0

    .line 275
    :pswitch_2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 276
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueStoppingEvent(Lcom/google/common/util/concurrent/Service$State;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doCancelStart()V

    goto :goto_0

    .line 271
    :pswitch_3
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 272
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueTerminatedEvent(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 291
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 293
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 294
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 293
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 294
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 295
    throw v0

    :cond_0
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
