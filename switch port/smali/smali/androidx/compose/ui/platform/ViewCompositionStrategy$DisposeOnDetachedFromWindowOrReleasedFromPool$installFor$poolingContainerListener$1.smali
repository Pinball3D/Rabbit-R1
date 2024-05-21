.class final Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$poolingContainerListener$1;
.super Ljava/lang/Object;
.source "ViewCompositionStrategy.android.kt"

# interfaces
.implements Landroidx/customview/poolingcontainer/PoolingContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;->installFor(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
.field final synthetic $view:Landroidx/compose/ui/platform/AbstractComposeView;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AbstractComposeView;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$poolingContainerListener$1;->$view:Landroidx/compose/ui/platform/AbstractComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRelease()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$poolingContainerListener$1;->$view:Landroidx/compose/ui/platform/AbstractComposeView;

    .line 96
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    return-void
.end method
