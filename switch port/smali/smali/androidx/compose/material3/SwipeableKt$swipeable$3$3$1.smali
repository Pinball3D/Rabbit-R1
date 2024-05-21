.class final Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Swipeable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableKt$swipeable$3$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableKt$swipeable$3$3$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,886:1\n1#2:887\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $thresholds:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;TT;",
            "Landroidx/compose/material3/ThresholdConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;+",
            "Landroidx/compose/material3/ThresholdConfig;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->$anchors:Ljava/util/Map;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->$thresholds:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->$density:Landroidx/compose/ui/unit/Density;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(FF)Ljava/lang/Float;
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->$anchors:Ljava/util/Map;

    .line 596
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->$anchors:Ljava/util/Map;

    .line 597
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->$thresholds:Lkotlin/jvm/functions/Function2;

    .line 598
    invoke-interface {v2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->$density:Landroidx/compose/ui/unit/Density;

    check-cast v0, Landroidx/compose/material3/ThresholdConfig;

    invoke-interface {v0, p0, p1, p2}, Landroidx/compose/material3/ThresholdConfig;->computeThreshold(Landroidx/compose/ui/unit/Density;FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 595
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SwipeableKt$swipeable$3$3$1;->invoke(FF)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
