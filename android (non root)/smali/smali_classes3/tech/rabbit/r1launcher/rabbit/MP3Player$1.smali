.class Ltech/rabbit/r1launcher/rabbit/MP3Player$1;
.super Ljava/lang/Object;
.source "MP3Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/rabbit/MP3Player;-><init>()V
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

    iput-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$1;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$1;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    const/4 v0, 0x0

    .line 28
    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$002(Ltech/rabbit/r1launcher/rabbit/MP3Player;Z)Z

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$1;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 29
    invoke-static {p1}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$100(Ltech/rabbit/r1launcher/rabbit/MP3Player;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$1;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 30
    invoke-static {p1}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$200(Ltech/rabbit/r1launcher/rabbit/MP3Player;)Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/MP3Player$1;->this$0:Ltech/rabbit/r1launcher/rabbit/MP3Player;

    .line 31
    invoke-static {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player;->access$200(Ltech/rabbit/r1launcher/rabbit/MP3Player;)Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;

    move-result-object p0

    invoke-interface {p0}, Ltech/rabbit/r1launcher/rabbit/MP3Player$OnCompletionListener;->onCompletion()V

    :cond_0
    return-void
.end method
