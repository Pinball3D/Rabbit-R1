.class final Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FactoryModeVerifyView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Landroid/graphics/RectF;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/graphics/RectF;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/RectF;

    .line 31
    new-instance v1, Landroid/graphics/RectF;

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v2

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 35
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 36
    invoke-virtual {v3}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 37
    invoke-virtual {v5}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 38
    invoke-virtual {v6}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    .line 34
    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 41
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v3}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v5}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v5}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    invoke-virtual {v3}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 54
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 55
    invoke-virtual {v3}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 56
    invoke-virtual {v5}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$fixedLocations$2;->this$0:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    .line 57
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    .line 53
    invoke-direct {v1, v2, v3, v5, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p0, 0x6

    aput-object v1, v0, p0

    .line 61
    new-instance p0, Landroid/graphics/RectF;

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v1

    invoke-static {}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->access$getAreaSize$cp()F

    move-result v2

    invoke-direct {p0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
