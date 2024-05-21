.class public final Lcom/google/android/exoplayer2/text/span/RubySpan;
.super Ljava/lang/Object;
.source "RubySpan.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/span/LanguageFeatureSpan;


# instance fields
.field public final position:I

.field public final rubyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->rubyText:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->position:I

    return-void
.end method
