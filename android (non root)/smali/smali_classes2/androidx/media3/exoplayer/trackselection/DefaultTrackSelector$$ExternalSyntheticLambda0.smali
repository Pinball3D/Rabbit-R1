.class public final synthetic Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    check-cast p1, Landroidx/media3/common/Format;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->$r8$lambda$38UNzDaPpwu3YUyf5lUz7V9eZlE(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/common/Format;)Z

    move-result p0

    return p0
.end method
