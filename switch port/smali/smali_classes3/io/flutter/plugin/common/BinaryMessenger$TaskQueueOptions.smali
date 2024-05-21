.class public Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;
.super Ljava/lang/Object;
.source "BinaryMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/common/BinaryMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskQueueOptions"
.end annotation


# instance fields
.field private isSerial:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;->isSerial:Z

    return-void
.end method


# virtual methods
.method public getIsSerial()Z
    .locals 0

    iget-boolean p0, p0, Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;->isSerial:Z

    return p0
.end method

.method public setIsSerial(Z)Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;
    .locals 0

    iput-boolean p1, p0, Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;->isSerial:Z

    return-object p0
.end method
