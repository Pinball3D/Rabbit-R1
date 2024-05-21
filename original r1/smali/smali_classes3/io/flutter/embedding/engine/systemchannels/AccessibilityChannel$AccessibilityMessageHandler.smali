.class public interface abstract Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;
.super Ljava/lang/Object;
.source "AccessibilityChannel.java"

# interfaces
.implements Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityMessageHandler"
.end annotation


# virtual methods
.method public abstract announce(Ljava/lang/String;)V
.end method

.method public abstract onFocus(I)V
.end method

.method public abstract onLongPress(I)V
.end method

.method public abstract onTap(I)V
.end method

.method public abstract onTooltip(Ljava/lang/String;)V
.end method
