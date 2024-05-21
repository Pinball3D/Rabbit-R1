.class public Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;
.super Ljava/lang/Object;
.source "SpellCheckChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpellCheckChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field public final parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

.field private spellCheckMethodHandler:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;->parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 76
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "flutter/spellcheck"

    sget-object v3, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v1, p1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 77
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;)Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;->spellCheckMethodHandler:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;

    return-object p0
.end method


# virtual methods
.method public setSpellCheckMethodHandler(Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;->spellCheckMethodHandler:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;

    return-void
.end method
