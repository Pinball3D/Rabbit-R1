.class final Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RenderNodeLayer.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/RenderNodeLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/platform/DeviceRenderNode;",
        "Landroid/graphics/Matrix;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "rn",
        "Landroidx/compose/ui/platform/DeviceRenderNode;",
        "matrix",
        "Landroid/graphics/Matrix;",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    invoke-direct {v0}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 364
    check-cast p1, Landroidx/compose/ui/platform/DeviceRenderNode;

    check-cast p2, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->invoke(Landroidx/compose/ui/platform/DeviceRenderNode;Landroid/graphics/Matrix;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/platform/DeviceRenderNode;Landroid/graphics/Matrix;)V
    .locals 0

    const-string p0, "rn"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "matrix"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-interface {p1, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
