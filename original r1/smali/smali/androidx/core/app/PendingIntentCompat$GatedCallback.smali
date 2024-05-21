.class Landroidx/core/app/PendingIntentCompat$GatedCallback;
.super Ljava/lang/Object;
.source "PendingIntentCompat.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/PendingIntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GatedCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/app/PendingIntent$OnFinished;

.field private final mComplete:Ljava/util/concurrent/CountDownLatch;

.field private mSuccess:Z


# direct methods
.method public static synthetic $r8$lambda$dARjk2pGHL_3_vnErsOjaRzR5JA(Landroidx/core/app/PendingIntentCompat$GatedCallback;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/app/PendingIntent$OnFinished;)V
    .locals 2

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mComplete:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mSuccess:Z

    return-void
.end method

.method private onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mComplete:Ljava/util/concurrent/CountDownLatch;

    .line 408
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 421
    invoke-interface/range {v1 .. v6}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 418
    :cond_2
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mSuccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    :cond_0
    iget-object p0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mComplete:Ljava/util/concurrent/CountDownLatch;

    .line 395
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public complete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mSuccess:Z

    return-void
.end method

.method public getCallback()Landroid/app/PendingIntent$OnFinished;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 382
    :cond_0
    new-instance v0, Landroidx/core/app/PendingIntentCompat$GatedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/app/PendingIntentCompat$GatedCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/core/app/PendingIntentCompat$GatedCallback;)V

    return-object v0
.end method
