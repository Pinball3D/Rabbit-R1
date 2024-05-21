.class final enum Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
.super Ljava/lang/Enum;
.source "AggregateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AggregateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReleaseResourcesReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

.field public static final enum ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

.field public static final enum OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;


# direct methods
.method private static synthetic $values()[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    .locals 2

    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    filled-new-array {v0, v1}, [Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 336
    new-instance v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    const-string v1, "OUTPUT_FUTURE_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 337
    new-instance v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    const-string v1, "ALL_INPUT_FUTURES_PROCESSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 335
    invoke-static {}, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->$values()[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->$VALUES:[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 335
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->$VALUES:[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 335
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    return-object v0
.end method
