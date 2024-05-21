.class final enum Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
.super Ljava/lang/Enum;
.source "SequentialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WorkerRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method private static synthetic $values()[Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 4

    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v1, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v3, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 59
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v1, "QUEUING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 61
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v1, "QUEUED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 62
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v1, "RUNNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 55
    invoke-static {}, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->$values()[Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->$VALUES:[Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 55
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->$VALUES:[Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 55
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method
