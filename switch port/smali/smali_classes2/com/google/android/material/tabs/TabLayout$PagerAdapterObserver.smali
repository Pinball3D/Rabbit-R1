.class Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 3643
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 3647
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 3652
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method
