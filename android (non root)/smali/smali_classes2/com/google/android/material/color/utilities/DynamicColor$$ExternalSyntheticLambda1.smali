.class public final synthetic Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/color/utilities/Hct;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/color/utilities/Hct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/color/utilities/Hct;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/color/utilities/Hct;

    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->lambda$fromArgb$1(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
