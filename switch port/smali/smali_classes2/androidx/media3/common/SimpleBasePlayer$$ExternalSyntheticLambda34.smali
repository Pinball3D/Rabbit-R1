.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/Tracks;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Tracks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda34;->f$0:Landroidx/media3/common/Tracks;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda34;->f$0:Landroidx/media3/common/Tracks;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$37(Landroidx/media3/common/Tracks;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method
