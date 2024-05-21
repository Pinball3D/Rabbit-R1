.class Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 595
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 601
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 602
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 603
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 604
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 609
    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$100(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 606
    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$000(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
