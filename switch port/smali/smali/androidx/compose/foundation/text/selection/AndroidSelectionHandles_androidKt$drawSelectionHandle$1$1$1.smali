.class final Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidSelectionHandles.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "Landroidx/compose/ui/draw/DrawResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/draw/DrawResult;",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "invoke"
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
.field final synthetic $direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field final synthetic $handleColor:J

.field final synthetic $handlesCrossed:Z

.field final synthetic $isStartHandle:Z


# direct methods
.method constructor <init>(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$handleColor:J

    iput-boolean p3, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$isStartHandle:Z

    iput-object p4, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iput-boolean p5, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$handlesCrossed:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 12

    const-string v0, "$this$drawWithCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 117
    invoke-static {p1, v0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->createHandleImage(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v5

    .line 118
    sget-object v6, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    iget-wide v7, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$handleColor:J

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v6

    .line 119
    new-instance v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1$1;

    iget-boolean v2, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$isStartHandle:Z

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iget-boolean v4, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->$handlesCrossed:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1$1;-><init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1;->invoke(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method
