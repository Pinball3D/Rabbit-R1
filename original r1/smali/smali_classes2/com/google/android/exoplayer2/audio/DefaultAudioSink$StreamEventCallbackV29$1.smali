.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

.field final synthetic val$this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->val$this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 1905
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1908
    iget-object p2, p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$800(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1912
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$900(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1915
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$900(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_1
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1921
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$800(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1925
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$900(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1930
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$900(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_1
    return-void
.end method
