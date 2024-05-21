.class public final enum Landroidx/compose/runtime/InvalidationResult;
.super Ljava/lang/Enum;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/runtime/InvalidationResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/runtime/InvalidationResult;",
        "",
        "(Ljava/lang/String;I)V",
        "IGNORED",
        "SCHEDULED",
        "DEFERRED",
        "IMMINENT",
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
.field private static final synthetic $VALUES:[Landroidx/compose/runtime/InvalidationResult;

.field public static final enum DEFERRED:Landroidx/compose/runtime/InvalidationResult;

.field public static final enum IGNORED:Landroidx/compose/runtime/InvalidationResult;

.field public static final enum IMMINENT:Landroidx/compose/runtime/InvalidationResult;

.field public static final enum SCHEDULED:Landroidx/compose/runtime/InvalidationResult;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/runtime/InvalidationResult;
    .locals 4

    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    sget-object v2, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    sget-object v3, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/compose/runtime/InvalidationResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 265
    new-instance v0, Landroidx/compose/runtime/InvalidationResult;

    const-string v1, "IGNORED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/InvalidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 271
    new-instance v0, Landroidx/compose/runtime/InvalidationResult;

    const-string v1, "SCHEDULED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/InvalidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    .line 278
    new-instance v0, Landroidx/compose/runtime/InvalidationResult;

    const-string v1, "DEFERRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/InvalidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    .line 285
    new-instance v0, Landroidx/compose/runtime/InvalidationResult;

    const-string v1, "IMMINENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/InvalidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    invoke-static {}, Landroidx/compose/runtime/InvalidationResult;->$values()[Landroidx/compose/runtime/InvalidationResult;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/InvalidationResult;->$VALUES:[Landroidx/compose/runtime/InvalidationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/runtime/InvalidationResult;
    .locals 1

    const-class v0, Landroidx/compose/runtime/InvalidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/InvalidationResult;

    return-object p0
.end method

.method public static values()[Landroidx/compose/runtime/InvalidationResult;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->$VALUES:[Landroidx/compose/runtime/InvalidationResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/runtime/InvalidationResult;

    return-object v0
.end method
