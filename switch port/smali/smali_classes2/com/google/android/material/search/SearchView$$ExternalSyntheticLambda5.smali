.class public final synthetic Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/search/SearchView;->lambda$setUpStatusBarSpacerInsetListener$5$com-google-android-material-search-SearchView(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
