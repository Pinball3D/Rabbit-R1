.class public final synthetic Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method
