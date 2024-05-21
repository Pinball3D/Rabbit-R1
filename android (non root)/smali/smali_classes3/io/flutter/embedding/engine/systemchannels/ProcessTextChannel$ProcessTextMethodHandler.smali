.class public interface abstract Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;
.super Ljava/lang/Object;
.source "ProcessTextChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessTextMethodHandler"
.end annotation


# virtual methods
.method public abstract processTextAction(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/plugin/common/MethodChannel$Result;)V
.end method

.method public abstract queryTextActions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
