.class public final synthetic Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;ZLcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavController;

    iput-boolean p2, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/navigation/NavigationView;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavController;

    iget-boolean v1, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Landroidx/navigation/ui/NavigationUI$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0, v1, p0, p1}, Landroidx/navigation/ui/NavigationUI;->$r8$lambda$WOSVADNI-_bOf-m2oAY8kR9rYHU(Landroidx/navigation/NavController;ZLcom/google/android/material/navigation/NavigationView;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
