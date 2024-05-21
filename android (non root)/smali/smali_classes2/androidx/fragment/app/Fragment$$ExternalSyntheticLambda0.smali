.class public final synthetic Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->lambda$performCreateView$0$androidx-fragment-app-Fragment()V

    return-void
.end method
