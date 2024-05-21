.class final Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;
.super Ljava/lang/Object;
.source "ViewLayer.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;",
        "",
        "()V",
        "setRenderEffect",
        "",
        "view",
        "Landroid/view/View;",
        "target",
        "Landroidx/compose/ui/graphics/RenderEffect;",
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
.field public static final INSTANCE:Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;->INSTANCE:Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setRenderEffect(Landroid/view/View;Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 0

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 459
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/RenderEffect;->asAndroidRenderEffect()Landroid/graphics/RenderEffect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    return-void
.end method
