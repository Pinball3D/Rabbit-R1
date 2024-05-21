.class public final synthetic Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iput p2, p0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iget p0, p0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;->lambda$onAudioFocusChange$0$androidx-media3-exoplayer-AudioFocusManager$AudioFocusListener(I)V

    return-void
.end method
