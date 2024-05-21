.class public Lio/sentry/android/core/internal/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final CAPTURE_TIMEOUT_MS:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isActivityValid(Landroid/app/Activity;)Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$takeScreenshot$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$takeScreenshot$1(Landroid/view/View;Landroid/graphics/Canvas;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 123
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 125
    :try_start_1
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Taking screenshot failed (view.draw)."

    invoke-interface {p2, p1, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    .line 127
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 128
    throw p0
.end method

.method public static takeScreenshot(Landroid/app/Activity;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B
    .locals 1

    .line 35
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    move-result-object v0

    .line 34
    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->takeScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B

    move-result-object p0

    return-object p0
.end method

.method public static takeScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B
    .locals 11

    .line 47
    invoke-static {p0}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->isActivityValid(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 48
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p1, "Activity isn\'t valid, not taking screenshot."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p1, "Activity window is null, not taking screenshot."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 58
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 60
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p1, "DecorView is null, not taking screenshot."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 64
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    .line 66
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p1, "Root view is null, not taking screenshot."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 70
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    goto/16 :goto_4

    .line 75
    :cond_4
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 78
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 80
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 83
    invoke-virtual {p3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p3

    const/16 v8, 0x1a

    const-wide/16 v9, 0x3e8

    if-lt p3, v8, :cond_6

    .line 85
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "SentryScreenshot"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    :try_start_2
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 93
    new-instance v3, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3, v6}, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v5, v3, p1}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 102
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    invoke-virtual {v6, v9, v10, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v7, v2

    .line 108
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v7, :cond_8

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 106
    :try_start_4
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Taking screenshot using PixelCopy failed."

    invoke-interface {p2, p3, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    :try_start_5
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    return-object v1

    :catchall_1
    move-exception p1

    .line 108
    :try_start_7
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 109
    throw p1

    .line 115
    :cond_6
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    invoke-interface {p1}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 117
    invoke-virtual {v3, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 120
    :cond_7
    new-instance p1, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, v3, p3, p2, v6}, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroid/graphics/Canvas;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    :goto_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v9, v10, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez p0, :cond_8

    .line 148
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-object v1

    .line 139
    :cond_8
    :try_start_9
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, p0, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 141
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-gtz p0, :cond_9

    .line 142
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p1, "Screenshot is 0 bytes, not attaching the image."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 148
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    return-object v1

    .line 147
    :cond_9
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 148
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    return-object p0

    :catchall_2
    move-exception p0

    .line 75
    :try_start_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p0

    .line 149
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "Taking screenshot failed."

    invoke-interface {p2, p1, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 71
    :cond_a
    :goto_4
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p1, "View\'s width and height is zeroed, not taking screenshot."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
