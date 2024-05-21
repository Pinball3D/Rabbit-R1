.class public final synthetic Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda2;->f$0:Landroidx/navigation/NavController;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda2;->f$0:Landroidx/navigation/NavController;

    invoke-static {p0, p1}, Landroidx/navigation/ui/NavigationUI;->$r8$lambda$nq0b7zC_WhRqahUF78aBEQt3-h8(Landroidx/navigation/NavController;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
