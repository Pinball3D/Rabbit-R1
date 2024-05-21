.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/SimpleBasePlayer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda46;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda46;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->lambda$new$0$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method
