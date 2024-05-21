.class public final enum Landroidx/compose/runtime/Recomposer$State;
.super Ljava/lang/Enum;
.source "Recomposer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/runtime/Recomposer$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/runtime/Recomposer$State;",
        "",
        "(Ljava/lang/String;I)V",
        "ShutDown",
        "ShuttingDown",
        "Inactive",
        "InactivePendingWork",
        "Idle",
        "PendingWork",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/runtime/Recomposer$State;

.field public static final enum Idle:Landroidx/compose/runtime/Recomposer$State;

.field public static final enum Inactive:Landroidx/compose/runtime/Recomposer$State;

.field public static final enum InactivePendingWork:Landroidx/compose/runtime/Recomposer$State;

.field public static final enum PendingWork:Landroidx/compose/runtime/Recomposer$State;

.field public static final enum ShutDown:Landroidx/compose/runtime/Recomposer$State;

.field public static final enum ShuttingDown:Landroidx/compose/runtime/Recomposer$State;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/runtime/Recomposer$State;
    .locals 6

    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    sget-object v3, Landroidx/compose/runtime/Recomposer$State;->InactivePendingWork:Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    filled-new-array/range {v0 .. v5}, [Landroidx/compose/runtime/Recomposer$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 156
    new-instance v0, Landroidx/compose/runtime/Recomposer$State;

    const-string v1, "ShutDown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/Recomposer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 163
    new-instance v0, Landroidx/compose/runtime/Recomposer$State;

    const-string v1, "ShuttingDown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/Recomposer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 170
    new-instance v0, Landroidx/compose/runtime/Recomposer$State;

    const-string v1, "Inactive"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/Recomposer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    .line 177
    new-instance v0, Landroidx/compose/runtime/Recomposer$State;

    const-string v1, "InactivePendingWork"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/Recomposer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/Recomposer$State;->InactivePendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 183
    new-instance v0, Landroidx/compose/runtime/Recomposer$State;

    const-string v1, "Idle"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/Recomposer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 193
    new-instance v0, Landroidx/compose/runtime/Recomposer$State;

    const-string v1, "PendingWork"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/Recomposer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    invoke-static {}, Landroidx/compose/runtime/Recomposer$State;->$values()[Landroidx/compose/runtime/Recomposer$State;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/Recomposer$State;->$VALUES:[Landroidx/compose/runtime/Recomposer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/runtime/Recomposer$State;
    .locals 1

    const-class v0, Landroidx/compose/runtime/Recomposer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Recomposer$State;

    return-object p0
.end method

.method public static values()[Landroidx/compose/runtime/Recomposer$State;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->$VALUES:[Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/runtime/Recomposer$State;

    return-object v0
.end method
