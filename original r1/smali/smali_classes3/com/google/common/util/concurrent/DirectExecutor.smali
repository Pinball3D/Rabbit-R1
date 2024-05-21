.class final enum Lcom/google/common/util/concurrent/DirectExecutor;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/DirectExecutor;

.field public static final enum INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;


# direct methods
.method private static synthetic $values()[Lcom/google/common/util/concurrent/DirectExecutor;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    filled-new-array {v0}, [Lcom/google/common/util/concurrent/DirectExecutor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/google/common/util/concurrent/DirectExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 24
    invoke-static {}, Lcom/google/common/util/concurrent/DirectExecutor;->$values()[Lcom/google/common/util/concurrent/DirectExecutor;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->$VALUES:[Lcom/google/common/util/concurrent/DirectExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/DirectExecutor;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/DirectExecutor;

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/DirectExecutor;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/DirectExecutor;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->$VALUES:[Lcom/google/common/util/concurrent/DirectExecutor;

    .line 24
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MoreExecutors.directExecutor()"

    return-object p0
.end method
