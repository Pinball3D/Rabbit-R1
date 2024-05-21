.class Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;
.super Ljava/lang/Object;
.source "BaseProgressIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 797
    invoke-static {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->access$100(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    const-wide/16 v0, -0x1

    .line 798
    invoke-static {p0, v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->access$202(Lcom/google/android/material/progressindicator/BaseProgressIndicator;J)J

    return-void
.end method
