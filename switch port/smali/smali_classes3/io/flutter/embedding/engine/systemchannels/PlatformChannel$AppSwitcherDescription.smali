.class public Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;
.super Ljava/lang/Object;
.source "PlatformChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSwitcherDescription"
.end annotation


# instance fields
.field public final color:I

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->color:I

    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->label:Ljava/lang/String;

    return-void
.end method
