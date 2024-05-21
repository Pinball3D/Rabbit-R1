.class public final Lcom/google/common/html/HtmlEscapers;
.super Ljava/lang/Object;
.source "HtmlEscapers.java"


# annotations
.annotation runtime Lcom/google/common/html/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final HTML_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "&quot;"

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const/16 v1, 0x27

    const-string v2, "&#39;"

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lcom/google/common/escape/Escaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htmlEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    sget-object v0, Lcom/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
