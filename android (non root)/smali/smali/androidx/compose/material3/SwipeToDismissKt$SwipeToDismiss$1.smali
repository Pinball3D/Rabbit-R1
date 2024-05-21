.class final Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeToDismiss.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeToDismissKt;->SwipeToDismiss(Landroidx/compose/material3/DismissState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Ljava/util/Set;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/material3/DismissValue;",
        "Landroidx/compose/ui/unit/IntSize;",
        "Ljava/lang/Float;",
        ">;"
    }
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
.field final synthetic $directions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/material3/DismissDirection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/compose/material3/DismissDirection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1;->$directions:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 249
    check-cast p1, Landroidx/compose/material3/DismissValue;

    check-cast p2, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1;->invoke-O0kMr_c(Landroidx/compose/material3/DismissValue;J)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-O0kMr_c(Landroidx/compose/material3/DismissValue;J)Ljava/lang/Float;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p2

    int-to-float p2, p2

    .line 254
    sget-object p3, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/material3/DismissValue;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    .line 257
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1;->$directions:Ljava/util/Set;

    .line 256
    sget-object p1, Landroidx/compose/material3/DismissDirection;->EndToStart:Landroidx/compose/material3/DismissDirection;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    neg-float p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1;->$directions:Ljava/util/Set;

    .line 255
    sget-object p1, Landroidx/compose/material3/DismissDirection;->StartToEnd:Landroidx/compose/material3/DismissDirection;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method
