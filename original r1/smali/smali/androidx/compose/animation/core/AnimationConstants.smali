.class public final Landroidx/compose/animation/core/AnimationConstants;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/animation/core/AnimationConstants;",
        "",
        "()V",
        "DefaultDurationMillis",
        "",
        "UnspecifiedTime",
        "",
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
.field public static final $stable:I = 0x0

.field public static final DefaultDurationMillis:I = 0x12c

.field public static final INSTANCE:Landroidx/compose/animation/core/AnimationConstants;

.field public static final UnspecifiedTime:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/AnimationConstants;

    invoke-direct {v0}, Landroidx/compose/animation/core/AnimationConstants;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/AnimationConstants;->INSTANCE:Landroidx/compose/animation/core/AnimationConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
