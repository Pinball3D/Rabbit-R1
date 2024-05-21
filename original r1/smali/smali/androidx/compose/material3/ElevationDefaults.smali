.class final Landroidx/compose/material3/ElevationDefaults;
.super Ljava/lang/Object;
.source "Elevation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00f8\u0001\u0000J\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/material3/ElevationDefaults;",
        "",
        "()V",
        "incomingAnimationSpecForInteraction",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "Landroidx/compose/ui/unit/Dp;",
        "interaction",
        "Landroidx/compose/foundation/interaction/Interaction;",
        "outgoingAnimationSpecForInteraction",
        "material3_release"
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
.field public static final INSTANCE:Landroidx/compose/material3/ElevationDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/ElevationDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ElevationDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ElevationDefaults;->INSTANCE:Landroidx/compose/material3/ElevationDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final incomingAnimationSpecForInteraction(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    const-string p0, "interaction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 82
    :cond_0
    instance-of p0, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 83
    :cond_1
    instance-of p0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 84
    :cond_2
    instance-of p0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final outgoingAnimationSpecForInteraction(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    const-string p0, "interaction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getDefaultOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 98
    :cond_0
    instance-of p0, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getDefaultOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 99
    :cond_1
    instance-of p0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getHoveredOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 100
    :cond_2
    instance-of p0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/material3/ElevationKt;->access$getDefaultOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
