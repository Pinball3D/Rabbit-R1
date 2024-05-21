.class public final synthetic Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->lambda$init$0$androidx-fragment-app-FragmentActivity()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
