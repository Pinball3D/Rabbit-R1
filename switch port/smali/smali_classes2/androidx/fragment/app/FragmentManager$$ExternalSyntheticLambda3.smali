.class public final synthetic Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda3;->f$0:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda3;->f$0:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Landroidx/core/app/PictureInPictureModeChangedInfo;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->lambda$new$3$androidx-fragment-app-FragmentManager(Landroidx/core/app/PictureInPictureModeChangedInfo;)V

    return-void
.end method
