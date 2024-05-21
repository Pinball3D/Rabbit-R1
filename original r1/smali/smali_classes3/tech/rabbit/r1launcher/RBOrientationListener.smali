.class final Ltech/rabbit/r1launcher/RBOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0006H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/RBOrientationListener;",
        "Landroid/view/OrientationEventListener;",
        "context",
        "Landroid/content/Context;",
        "handler",
        "Lkotlin/Function1;",
        "",
        "",
        "Ltech/rabbit/r1launcher/OrientationHandler;",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getHandler",
        "()Lkotlin/jvm/functions/Function1;",
        "orientation",
        "onOrientationChanged",
        "orientationValue",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->context:Landroid/content/Context;

    iput-object p2, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->handler:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getHandler()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->handler:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_1

    const/16 v2, 0x163

    if-le p1, v2, :cond_2

    :cond_1
    iput v1, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->orientation:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x55

    if-gt v1, p1, :cond_3

    const/16 v1, 0x60

    if-ge p1, v1, :cond_3

    const/16 p1, 0x8

    if-eq v0, p1, :cond_3

    iput p1, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->orientation:I

    :cond_3
    :goto_0
    iget p1, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->orientation:I

    if-eq v0, p1, :cond_4

    iget-object p0, p0, Ltech/rabbit/r1launcher/RBOrientationListener;->handler:Lkotlin/jvm/functions/Function1;

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
