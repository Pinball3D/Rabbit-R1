.class public Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;
.super Ljava/lang/Object;
.source "WindowInfoRepositoryCallbackAdapterWrapper.java"


# instance fields
.field final adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;


# direct methods
.method public constructor <init>(Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    return-void
.end method


# virtual methods
.method public addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 32
    invoke-virtual {p0, p1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    return-void
.end method
