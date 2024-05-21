.class final Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;
.super Ljava/lang/Object;
.source "RenderNodeLayer.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/RenderNodeLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UniqueDrawingIdApi29"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;",
        "",
        "()V",
        "getUniqueDrawingId",
        "",
        "view",
        "Landroid/view/View;",
        "ui_release"
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
.field public static final INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;

    invoke-direct {v0}, Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUniqueDrawingId(Landroid/view/View;)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    return-wide v0
.end method
