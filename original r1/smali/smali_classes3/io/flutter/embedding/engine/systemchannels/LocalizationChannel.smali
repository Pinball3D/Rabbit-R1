.class public Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;
.super Ljava/lang/Object;
.source "LocalizationChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalizationChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field public final handler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

.field private localizationMessageHandler:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->handler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 63
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "flutter/localization"

    sget-object v3, Lio/flutter/plugin/common/JSONMethodCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMethodCodec;

    invoke-direct {v1, p1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 65
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->localizationMessageHandler:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;

    return-object p0
.end method


# virtual methods
.method public sendLocales(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Sending Locales to Flutter."

    const-string v1, "LocalizationChannel"

    .line 79
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Locale (Language: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Country: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Variant: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v1, v3}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string p1, "setLocale"

    .line 98
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLocalizationMessageHandler(Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->localizationMessageHandler:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;

    return-void
.end method
