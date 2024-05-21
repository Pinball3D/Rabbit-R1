.class public abstract Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;
.super Ljava/lang/Object;
.source "BaseSupporter.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u00020\tH&J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000e\u001a\u00020\tH&R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;",
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;",
        "()V",
        "_updater",
        "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;",
        "updater",
        "getUpdater",
        "()Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;",
        "attach",
        "",
        "scrollBarExtView",
        "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;",
        "attachExt",
        "detach",
        "detachExt",
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
.field private _updater:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attach(Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;)V
    .locals 1

    const-string v0, "scrollBarExtView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast p1, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;->_updater:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;

    .line 13
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;->attachExt()V

    return-void
.end method

.method public abstract attachExt()V
.end method

.method public final detach(Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;)V
    .locals 1

    const-string v0, "scrollBarExtView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;->detachExt()V

    const/4 p1, 0x0

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;->_updater:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;

    return-void
.end method

.method public abstract detachExt()V
.end method

.method public final getUpdater()Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;->_updater:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
