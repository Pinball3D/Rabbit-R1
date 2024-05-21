.class public Ltech/rabbit/r1launcher/rabbit/MP3Player;
.super Ljava/lang/Object;
.source "MP3Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;,
        Ltech/rabbit/r1launcher/rabbit/MP3Player$OnPlayStateChangeListener;
    }
.end annotation


# instance fields
.field private isPlaying:Z

.field private isPrepared:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onCompletionListener:Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;

.field private onPlayStateChangeListener:Ltech/rabbit/r1launcher/rabbit/MP3Player$OnPlayStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPrepared:Z

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPlaying:Z

    .line 23
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    .line 24
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    new-instance v1, Ltech/rabbit/r1launcher/rabbit/MP3Player$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player$1;-><init>(Ltech/rabbit/r1launcher/rabbit/MP3Player;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$002(Ltech/rabbit/r1launcher/rabbit/MP3Player;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPlaying:Z

    return p1
.end method

.method static synthetic access$100(Ltech/rabbit/r1launcher/rabbit/MP3Player;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->notifyPlayStateChanged()V

    return-void
.end method

.method static synthetic access$200(Ltech/rabbit/r1launcher/rabbit/MP3Player;)Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;
    .locals 0

    .line 11
    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->onCompletionListener:Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$302(Ltech/rabbit/r1launcher/rabbit/MP3Player;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPrepared:Z

    return p1
.end method

.method static synthetic access$400(Ltech/rabbit/r1launcher/rabbit/MP3Player;)Landroid/media/MediaPlayer;
    .locals 0

    .line 11
    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private notifyPlayStateChanged()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->onPlayStateChangeListener:Ltech/rabbit/r1launcher/rabbit/MP3Player$OnPlayStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPlaying:Z

    .line 111
    invoke-interface {v0, p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player$OnPlayStateChangeListener;->onPlayStateChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPlaying:Z

    return p0
.end method

.method public isPrepared()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPrepared:Z

    return p0
.end method

.method public play(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->stop()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 60
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 62
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 64
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 65
    new-instance v0, Ltech/rabbit/r1launcher/rabbit/MP3Player$3;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player$3;-><init>(Ltech/rabbit/r1launcher/rabbit/MP3Player;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public play([B)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->stop()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 43
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 44
    new-instance v1, Ltech/rabbit/r1launcher/wss/ByteArrayMediaDataSource;

    invoke-direct {v1, p1}, Ltech/rabbit/r1launcher/wss/ByteArrayMediaDataSource;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 45
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 46
    new-instance v0, Ltech/rabbit/r1launcher/rabbit/MP3Player$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player$2;-><init>(Ltech/rabbit/r1launcher/rabbit/MP3Player;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 90
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public setOnCompletionListener(Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->onCompletionListener:Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;

    return-void
.end method

.method public setOnPlayStateChangeListener(Ltech/rabbit/r1launcher/rabbit/MP3Player$OnPlayStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->onPlayStateChangeListener:Ltech/rabbit/r1launcher/rabbit/MP3Player$OnPlayStateChangeListener;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPlaying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 82
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iput-boolean v1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPlaying:Z

    .line 84
    invoke-direct {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->notifyPlayStateChanged()V

    :cond_0
    iput-boolean v1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player;->isPrepared:Z

    return-void
.end method
