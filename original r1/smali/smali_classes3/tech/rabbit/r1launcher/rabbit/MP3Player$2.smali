.class Ltech/rabbit/r1launcher/rabbit/MP3Player$2;
.super Ljava/lang/Object;
.source "MP3Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/rabbit/MP3Player;->play([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/rabbit/MP3Player;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$2;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$2;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    const/4 v0, 0x1

    .line 49
    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$302(Ltech/rabbit/r1launcher/rabbit/MP3Player;Z)Z

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$2;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 50
    invoke-static {p1}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$400(Ltech/rabbit/r1launcher/rabbit/MP3Player;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$2;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 51
    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$002(Ltech/rabbit/r1launcher/rabbit/MP3Player;Z)Z

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$2;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 52
    invoke-static {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$100(Ltech/rabbit/r1launcher/rabbit/MP3Player;)V

    return-void
.end method
