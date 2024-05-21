.class final Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeableV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableV2Kt;->swipeAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableV2State;Ljava/util/Set;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeableV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeableV2.kt\nandroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,692:1\n1855#2,2:693\n*S KotlinDebug\n*F\n+ 1 SwipeableV2.kt\nandroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2\n*L\n118#1:693,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "layoutSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "invoke-ozmzZPI",
        "(J)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/AnchorChangeHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $calculateAnchor:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Landroidx/compose/ui/unit/IntSize;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $possibleValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/SwipeableV2State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableV2State<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material3/SwipeableV2State;Ljava/util/Set;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SwipeableV2State<",
            "TT;>;",
            "Ljava/util/Set<",
            "+TT;>;",
            "Landroidx/compose/material3/AnchorChangeHandler<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$state:Landroidx/compose/material3/SwipeableV2State;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$possibleValues:Ljava/util/Set;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;

    iput-object p4, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$calculateAnchor:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 113
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->invoke-ozmzZPI(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-ozmzZPI(J)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$state:Landroidx/compose/material3/SwipeableV2State;

    .line 116
    invoke-virtual {v0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$possibleValues:Ljava/util/Set;

    .line 118
    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$calculateAnchor:Lkotlin/jvm/functions/Function2;

    .line 693
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 119
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v5, :cond_0

    .line 121
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$state:Landroidx/compose/material3/SwipeableV2State;

    .line 125
    invoke-virtual {p1}, Landroidx/compose/material3/SwipeableV2State;->getTargetValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$state:Landroidx/compose/material3/SwipeableV2State;

    .line 126
    invoke-virtual {p2, v1}, Landroidx/compose/material3/SwipeableV2State;->updateAnchors$material3_release(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2Kt$swipeAnchors$2;->$anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;

    if-eqz p0, :cond_2

    .line 128
    invoke-interface {p0, p1, v0, v1}, Landroidx/compose/material3/AnchorChangeHandler;->onAnchorsChanged(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    return-void
.end method
