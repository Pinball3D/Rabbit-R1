.class Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;
.super Ljava/lang/Object;
.source "WeakHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakRunnable"
.end annotation


# instance fields
.field private final mDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;",
            ">;)V"
        }
    .end annotation

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;->mDelegate:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;->mDelegate:Ljava/lang/ref/WeakReference;

    .line 438
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;->mReference:Ljava/lang/ref/WeakReference;

    .line 439
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    if-eqz p0, :cond_0

    .line 441
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->remove()Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    :cond_0
    if-eqz v0, :cond_1

    .line 444
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
