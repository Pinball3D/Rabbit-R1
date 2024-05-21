.class public final Lcom/google/android/material/color/utilities/ToneDeltaPair;
.super Ljava/lang/Object;
.source "ToneDeltaPair.java"


# instance fields
.field private final delta:D

.field private final polarity:Lcom/google/android/material/color/utilities/TonePolarity;

.field private final roleA:Lcom/google/android/material/color/utilities/DynamicColor;

.field private final roleB:Lcom/google/android/material/color/utilities/DynamicColor;

.field private final stayTogether:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->roleA:Lcom/google/android/material/color/utilities/DynamicColor;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->roleB:Lcom/google/android/material/color/utilities/DynamicColor;

    iput-wide p3, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->delta:D

    iput-object p5, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->polarity:Lcom/google/android/material/color/utilities/TonePolarity;

    iput-boolean p6, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->stayTogether:Z

    return-void
.end method


# virtual methods
.method public getDelta()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->delta:D

    return-wide v0
.end method

.method public getPolarity()Lcom/google/android/material/color/utilities/TonePolarity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->polarity:Lcom/google/android/material/color/utilities/TonePolarity;

    return-object p0
.end method

.method public getRoleA()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->roleA:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0
.end method

.method public getRoleB()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->roleB:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0
.end method

.method public getStayTogether()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->stayTogether:Z

    return p0
.end method
