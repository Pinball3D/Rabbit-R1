.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroidx/media3/common/Player$PositionInfo;

.field public final synthetic f$2:Landroidx/media3/common/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;->f$0:I

    iput-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;->f$1:Landroidx/media3/common/Player$PositionInfo;

    iput-object p3, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;->f$2:Landroidx/media3/common/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;->f$0:I

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;->f$1:Landroidx/media3/common/Player$PositionInfo;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;->f$2:Landroidx/media3/common/Player$PositionInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$32(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method
