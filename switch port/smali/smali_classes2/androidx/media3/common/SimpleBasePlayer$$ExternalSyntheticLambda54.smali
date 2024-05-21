.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic f$1:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$1:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object p3, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$2:Ljava/util/List;

    iput p4, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$3:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$1:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$2:Ljava/util/List;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$addMediaItems$3$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
