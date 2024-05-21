.class public Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;
.super Ljava/lang/Object;
.source "KeyEventChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlutterKeyEvent"
.end annotation


# instance fields
.field public final complexCharacter:Ljava/lang/Character;

.field public final event:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;-><init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->complexCharacter:Ljava/lang/Character;

    return-void
.end method
