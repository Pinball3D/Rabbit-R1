.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/MediaItem;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;->f$0:Landroidx/media3/common/MediaItem;

    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;->f$0:Landroidx/media3/common/MediaItem;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;->f$1:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$33(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method
