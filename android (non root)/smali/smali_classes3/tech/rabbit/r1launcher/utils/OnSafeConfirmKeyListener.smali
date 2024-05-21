.class public final Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;
.super Ljava/lang/Object;
.source "KeyCodeExtension.kt"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u001e\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0002\u0010\tJ \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;",
        "Landroid/view/View$OnKeyListener;",
        "defaultInterval",
        "",
        "onSafeKey",
        "Lkotlin/Function3;",
        "Landroid/view/View;",
        "Landroid/view/KeyEvent;",
        "",
        "(ILkotlin/jvm/functions/Function3;)V",
        "lastTimeClicked",
        "",
        "onKey",
        "",
        "v",
        "keyCode",
        "event",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private defaultInterval:I

.field private lastTimeClicked:J

.field private final onSafeKey:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Landroid/view/KeyEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/KeyEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSafeKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;->defaultInterval:I

    iput-object p2, p0, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;->onSafeKey:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/16 p1, 0x1f4

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;-><init>(ILkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->isKeyCodeConfirm(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;->lastTimeClicked:J

    sub-long/2addr v3, v5

    iget v0, p0, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;->defaultInterval:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    return v1

    .line 28
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;->lastTimeClicked:J

    iget-object p0, p0, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;->onSafeKey:Lkotlin/jvm/functions/Function3;

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2
    :goto_0
    return v1
.end method
