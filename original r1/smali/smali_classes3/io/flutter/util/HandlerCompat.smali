.class public final Lio/flutter/util/HandlerCompat;
.super Ljava/lang/Object;
.source "HandlerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAsyncHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 0

    .line 31
    invoke-static {p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
