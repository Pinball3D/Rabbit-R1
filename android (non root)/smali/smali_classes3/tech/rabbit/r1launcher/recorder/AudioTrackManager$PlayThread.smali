.class Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;
.super Ljava/lang/Thread;
.source "AudioTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/recorder/AudioTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayThread"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field data1:[B

.field file:Ljava/io/File;

.field fileInputStream:Ljava/io/FileInputStream;

.field off1:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 109
    invoke-static {p1}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->access$000(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->data1:[B

    .line 110
    new-instance p1, Ljava/io/File;

    sget-object v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->pcmFileName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->file:Ljava/io/File;

    const/4 p1, 0x0

    iput p1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->off1:I

    iput-object p2, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    .line 117
    invoke-static {v0}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->access$100(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->fileInputStream:Ljava/io/FileInputStream;

    iget v1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->off1:I

    int-to-long v1, v1

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->fileInputStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->data1:[B

    iget-object v2, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    .line 121
    invoke-static {v2}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->access$000(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    iget v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->off1:I

    iget-object v1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    .line 122
    invoke-static {v1}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->access$000(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->off1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    .line 126
    invoke-static {v0}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->access$300(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->data1:[B

    iget-object v2, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    invoke-static {v2}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->access$200(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)I

    move-result v2

    iget-object v3, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->this$0:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    invoke-static {v3}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->access$000(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    :cond_0
    return-void
.end method
