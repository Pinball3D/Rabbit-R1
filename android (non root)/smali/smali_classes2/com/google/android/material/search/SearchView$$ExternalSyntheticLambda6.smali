.class public final synthetic Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/material/search/SearchView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->lambda$requestFocusAndShowKeyboard$8$com-google-android-material-search-SearchView()V

    return-void
.end method
