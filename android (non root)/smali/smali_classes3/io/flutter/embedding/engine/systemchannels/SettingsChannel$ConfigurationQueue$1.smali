.class Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$1;
.super Ljava/lang/Object;
.source "SettingsChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;->enqueueConfiguration(Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$SentConfiguration;)Lio/flutter/plugin/common/BasicMessageChannel$Reply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;

.field final synthetic val$configurationToRemove:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$SentConfiguration;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$SentConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$1;->this$0:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;

    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$1;->val$configurationToRemove:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$SentConfiguration;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$1;->this$0:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;

    .line 244
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;->access$200(Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$1;->val$configurationToRemove:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$SentConfiguration;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$1;->this$0:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;

    .line 245
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;->access$200(Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The queue becomes empty after removing config generation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$1;->val$configurationToRemove:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$SentConfiguration;

    iget p0, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$ConfigurationQueue$SentConfiguration;->generationNumber:I

    .line 249
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsChannel"

    .line 246
    invoke-static {p1, p0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
