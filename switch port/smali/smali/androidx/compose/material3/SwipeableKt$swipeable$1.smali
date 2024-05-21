.class final Landroidx/compose/material3/SwipeableKt$swipeable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Swipeable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableKt;->swipeable-pPrIpRY$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;TT;",
        "Landroidx/compose/material3/FixedThreshold;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableKt$swipeable$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,886:1\n154#2:887\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableKt$swipeable$1\n*L\n566#1:887\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u0006\u0010\u0004\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/FixedThreshold;",
        "T",
        "<anonymous parameter 0>",
        "<anonymous parameter 1>",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/material3/FixedThreshold;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/SwipeableKt$swipeable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/SwipeableKt$swipeable$1;

    invoke-direct {v0}, Landroidx/compose/material3/SwipeableKt$swipeable$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/SwipeableKt$swipeable$1;->INSTANCE:Landroidx/compose/material3/SwipeableKt$swipeable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/material3/FixedThreshold;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroidx/compose/material3/FixedThreshold;"
        }
    .end annotation

    .line 566
    new-instance p0, Landroidx/compose/material3/FixedThreshold;

    const/16 p1, 0x38

    int-to-float p1, p1

    .line 887
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    const/4 p2, 0x0

    .line 566
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/FixedThreshold;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SwipeableKt$swipeable$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/material3/FixedThreshold;

    move-result-object p0

    return-object p0
.end method
