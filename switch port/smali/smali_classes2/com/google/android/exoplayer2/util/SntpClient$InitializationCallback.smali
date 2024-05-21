.class public interface abstract Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitializationCallback"
.end annotation


# virtual methods
.method public abstract onInitializationFailed(Ljava/io/IOException;)V
.end method

.method public abstract onInitialized()V
.end method
