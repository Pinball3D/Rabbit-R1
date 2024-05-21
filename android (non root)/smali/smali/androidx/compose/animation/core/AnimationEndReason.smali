.class public final enum Landroidx/compose/animation/core/AnimationEndReason;
.super Ljava/lang/Enum;
.source "AnimationEndReason.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/animation/core/AnimationEndReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/animation/core/AnimationEndReason;",
        "",
        "(Ljava/lang/String;I)V",
        "BoundReached",
        "Finished",
        "animation-core_release"
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
.field private static final synthetic $VALUES:[Landroidx/compose/animation/core/AnimationEndReason;

.field public static final enum BoundReached:Landroidx/compose/animation/core/AnimationEndReason;

.field public static final enum Finished:Landroidx/compose/animation/core/AnimationEndReason;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/animation/core/AnimationEndReason;
    .locals 2

    sget-object v0, Landroidx/compose/animation/core/AnimationEndReason;->BoundReached:Landroidx/compose/animation/core/AnimationEndReason;

    sget-object v1, Landroidx/compose/animation/core/AnimationEndReason;->Finished:Landroidx/compose/animation/core/AnimationEndReason;

    filled-new-array {v0, v1}, [Landroidx/compose/animation/core/AnimationEndReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Landroidx/compose/animation/core/AnimationEndReason;

    const-string v1, "BoundReached"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/core/AnimationEndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/animation/core/AnimationEndReason;->BoundReached:Landroidx/compose/animation/core/AnimationEndReason;

    .line 35
    new-instance v0, Landroidx/compose/animation/core/AnimationEndReason;

    const-string v1, "Finished"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/core/AnimationEndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/animation/core/AnimationEndReason;->Finished:Landroidx/compose/animation/core/AnimationEndReason;

    invoke-static {}, Landroidx/compose/animation/core/AnimationEndReason;->$values()[Landroidx/compose/animation/core/AnimationEndReason;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimationEndReason;->$VALUES:[Landroidx/compose/animation/core/AnimationEndReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/animation/core/AnimationEndReason;
    .locals 1

    const-class v0, Landroidx/compose/animation/core/AnimationEndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationEndReason;

    return-object p0
.end method

.method public static values()[Landroidx/compose/animation/core/AnimationEndReason;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/AnimationEndReason;->$VALUES:[Landroidx/compose/animation/core/AnimationEndReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/animation/core/AnimationEndReason;

    return-object v0
.end method
