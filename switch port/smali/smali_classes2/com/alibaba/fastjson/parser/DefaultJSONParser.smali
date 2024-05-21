.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2


# instance fields
.field public config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected contex:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field protected extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field public fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1

    .line 134
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 140
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 142
    iget-char p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 p2, 0x7b

    const/16 v0, 0x1a

    if-ne p0, p2, :cond_1

    .line 143
    iget p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    iget p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 p0, 0xc

    .line 147
    iput p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2

    .line 148
    :cond_1
    iget-char p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 p2, 0x5b

    if-ne p0, p2, :cond_3

    .line 149
    iget p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 150
    iget p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p0, p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 152
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    iput-char v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 p0, 0xe

    .line 153
    iput p0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    .line 130
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1470
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1471
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 1473
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syntax error, expect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", actual "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1474
    invoke-static {p0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1324
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkListResolve(Ljava/util/Collection;)V
    .locals 4

    .line 1074
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1076
    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v2, p0, v3, p1}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1077
    iput-object p1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_0

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1081
    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v2, p1}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1082
    iput-object p1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :goto_0
    return-void
.end method

.method protected checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 1089
    new-instance v0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1090
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object p1

    .line 1091
    iput-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1092
    iput-object p2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 p1, 0x0

    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return-void
.end method

.method public close()V
    .locals 3

    const-string v0, "not close json text, token : "

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1480
    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1484
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-void

    .line 1481
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1484
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1485
    throw v0
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1466
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    return-void
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 103
    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object p0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object p0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object p0
.end method

.method protected getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1328
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object p0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 8

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 1493
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_6

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1494
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1495
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-nez v3, :cond_1

    goto :goto_3

    .line 1502
    :cond_1
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1503
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 1506
    :goto_1
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$000(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "$"

    .line 1508
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v0

    :goto_2
    iget v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v2, v7, :cond_5

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1510
    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1511
    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1515
    :cond_4
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$100(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    iget-object v5, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1517
    :cond_5
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1380
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1384
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    const/16 v4, 0x10

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    const-string v3, "syntax error, "

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1461
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1391
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1392
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1393
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1386
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1388
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1455
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v2

    .line 1458
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v0, 0x12

    .line 1440
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1442
    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v0, 0xa

    .line 1445
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1447
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1448
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1449
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/16 p1, 0xb

    .line 1451
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1453
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 1443
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1431
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v2

    :pswitch_5
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1437
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1438
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1434
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1435
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 1396
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1397
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1400
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1403
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1414
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1415
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1417
    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    .line 1418
    new-instance p0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1420
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1421
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1425
    throw p1

    :cond_7
    :goto_1
    return-object p1

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1409
    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1410
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1411
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object p1

    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1405
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1406
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 719
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    .line 724
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 729
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 730
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 733
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    .line 738
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    if-ne v0, p1, :cond_2

    .line 739
    sget-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v3, 0x2

    .line 740
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 741
    :cond_2
    const-class v0, Ljava/lang/String;

    if-ne v0, p1, :cond_3

    .line 742
    sget-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 743
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 745
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v3, 0xc

    .line 746
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 750
    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 751
    invoke-virtual {p0, v3, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_4
    const/4 p3, 0x0

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 755
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 756
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 760
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0xf

    if-ne v3, v5, :cond_6

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 803
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-void

    .line 764
    :cond_6
    :try_start_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    if-ne v3, p1, :cond_7

    .line 765
    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v3, p0, v5, v5}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 766
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 767
    :cond_7
    const-class v3, Ljava/lang/String;

    if-ne v3, p1, :cond_a

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 769
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v1, :cond_8

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 770
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 771
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 773
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 776
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 779
    :goto_3
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 782
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_b

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 783
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_4

    .line 786
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p0, p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 788
    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    .line 790
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_c
    :goto_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 794
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 795
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 801
    throw p1

    .line 734
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exepct \'[\', but "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p3, p3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {p3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    .line 1110
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1115
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1117
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1118
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :cond_1
    const/16 v3, 0xe

    if-ne v2, v3, :cond_2a

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1125
    iget-boolean v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v2, :cond_2

    move-object/from16 v5, p2

    .line 1129
    invoke-virtual {v1, v4, v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2
    :try_start_0
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1134
    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x7b

    const/16 v7, 0x5d

    const/4 v9, 0x4

    const/16 v10, 0xc

    const/16 v12, 0x22

    const/16 v13, 0x10

    const/4 v14, 0x1

    if-eq v5, v12, :cond_7

    if-ne v5, v7, :cond_4

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1137
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1138
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_3
    return-void

    :cond_4
    if-ne v5, v6, :cond_6

    :try_start_1
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1144
    iget v15, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v14

    iput v15, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1145
    iget v8, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v15, v8, :cond_5

    const/16 v8, 0x1a

    goto :goto_0

    :cond_5
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1147
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_0
    iput-char v8, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1149
    iput v10, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_6
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1151
    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1155
    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v8, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v5, v8

    if-nez v5, :cond_8

    move v5, v14

    goto :goto_2

    :cond_8
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1158
    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v5, :cond_12

    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1165
    iget-char v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v15, v12, :cond_12

    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1166
    invoke-virtual {v15, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v15

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1168
    iget-char v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v11, 0x2c

    if-ne v6, v11, :cond_d

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1172
    iget v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v14

    iput v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1173
    iget v3, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v11, v3, :cond_9

    const/16 v3, 0x1a

    goto :goto_4

    :cond_9
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1175
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    iput-char v3, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1177
    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v6, v14, :cond_a

    .line 1179
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_a
    if-ne v3, v12, :cond_c

    const/4 v11, 0x0

    :cond_b
    :goto_5
    const/16 v15, 0x7b

    goto/16 :goto_e

    :cond_c
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1188
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    if-ne v6, v7, :cond_11

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1192
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v14

    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1193
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_e

    const/16 v8, 0x1a

    goto :goto_6

    :cond_e
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1195
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1197
    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v3, v14, :cond_f

    .line 1199
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_f
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1201
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_10

    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_10
    return-void

    :cond_11
    :try_start_2
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1204
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :cond_12
    :goto_7
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1208
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_8
    if-ne v3, v13, :cond_13

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1210
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1211
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_8

    :cond_13
    const/4 v6, 0x2

    if-eq v3, v6, :cond_23

    const/4 v6, 0x3

    if-eq v3, v6, :cond_21

    if-eq v3, v9, :cond_1f

    const/4 v6, 0x6

    if-eq v3, v6, :cond_1e

    const/4 v6, 0x7

    if-eq v3, v6, :cond_1d

    const/16 v6, 0x8

    const/4 v11, 0x0

    if-eq v3, v6, :cond_1c

    if-eq v3, v10, :cond_1a

    const/16 v6, 0x14

    if-eq v3, v6, :cond_19

    const/16 v6, 0x17

    if-eq v3, v6, :cond_18

    const/16 v6, 0xe

    if-eq v3, v6, :cond_17

    const/16 v11, 0xf

    if-eq v3, v11, :cond_15

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    :cond_14
    :goto_9
    move-object v3, v11

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_15
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1276
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_16

    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_16
    return-void

    .line 1263
    :cond_17
    :try_start_3
    new-instance v11, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1264
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    const/16 v6, 0xe

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1273
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    .line 1279
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed jsonArray"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/16 v6, 0xe

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1255
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_1b

    .line 1256
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_a

    .line 1258
    :cond_1b
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1260
    :goto_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_9

    :cond_1c
    const/16 v6, 0xe

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1269
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    :cond_1d
    const/16 v6, 0xe

    .line 1250
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1251
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    :cond_1e
    const/16 v6, 0xe

    .line 1246
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1247
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    :cond_1f
    const/16 v6, 0xe

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1229
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1230
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1232
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v15, v15, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v15

    if-eqz v3, :cond_14

    .line 1233
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 1235
    iget-object v11, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 1239
    :cond_20
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto/16 :goto_9

    :cond_21
    const/16 v6, 0xe

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1221
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1222
    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v3

    const/4 v11, 0x0

    goto :goto_b

    :cond_22
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x0

    .line 1224
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v3

    :goto_b
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1226
    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_c

    :cond_23
    const/16 v6, 0xe

    const/4 v11, 0x0

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1217
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v3

    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1218
    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1285
    :goto_c
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v3, v14, :cond_24

    .line 1287
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_24
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1289
    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v13, :cond_b

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1291
    iget-char v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v3, v12, :cond_25

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1293
    iget v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1294
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_5

    :cond_25
    const/16 v15, 0x30

    if-lt v3, v15, :cond_26

    const/16 v15, 0x39

    if-gt v3, v15, :cond_26

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1296
    iget v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1297
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_5

    :cond_26
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_28

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1299
    iput v10, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1302
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v14

    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1303
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_27

    const/16 v6, 0x1a

    goto :goto_d

    :cond_27
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1305
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_d
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_28
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1308
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_e
    add-int/lit8 v8, v8, 0x1

    move v6, v15

    const/16 v3, 0xe

    const/16 v7, 0x5d

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-nez v2, :cond_29

    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1317
    :cond_29
    throw v0

    .line 1122
    :cond_2a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syntax error, expect [, actual "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 807
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 808
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v3

    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 812
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0xe

    const-string v7, "syntax error, "

    if-ne v2, v6, :cond_13

    .line 816
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 817
    array-length v8, v1

    const/4 v9, 0x0

    const/16 v10, 0xf

    if-nez v8, :cond_2

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 818
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 820
    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v10, :cond_1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 824
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    new-array v0, v9, [Ljava/lang/Object;

    return-object v0

    .line 821
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x2

    .line 828
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move v8, v9

    .line 830
    :goto_0
    array-length v12, v1

    if-ge v8, v12, :cond_11

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 833
    iget v12, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v12, v5, :cond_3

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 835
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v12, v3

    goto/16 :goto_5

    .line 837
    :cond_3
    aget-object v12, v1, v8

    .line 838
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_c

    const-class v13, Ljava/lang/Integer;

    if-ne v12, v13, :cond_4

    goto/16 :goto_4

    .line 846
    :cond_4
    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_6

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 847
    iget v13, v13, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_5

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 848
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 849
    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_5

    .line 851
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 852
    invoke-static {v13, v12, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_5

    .line 857
    :cond_6
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_7

    .line 858
    instance-of v13, v12, Ljava/lang/Class;

    if-eqz v13, :cond_7

    .line 859
    move-object v13, v12

    check-cast v13, Ljava/lang/Class;

    .line 860
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v14

    .line 861
    invoke-virtual {v13}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    goto :goto_1

    :cond_7
    move-object v13, v3

    move v14, v9

    :goto_1
    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 866
    iget v14, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eq v14, v6, :cond_b

    .line 867
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 869
    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 871
    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eq v15, v10, :cond_a

    .line 874
    :goto_2
    invoke-interface {v13, v0, v12, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 873
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 876
    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v15, v4, :cond_8

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v5, 0xc

    .line 877
    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v5, 0x8

    goto :goto_2

    :cond_8
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 878
    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v10, :cond_9

    goto :goto_3

    .line 881
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 886
    invoke-static {v14, v12, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_5

    :cond_b
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 888
    invoke-virtual {v5, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 889
    invoke-interface {v5, v0, v12, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_5

    :cond_c
    :goto_4
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 839
    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v11, :cond_d

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 840
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 841
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_5

    .line 843
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 844
    invoke-static {v5, v12, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    .line 893
    :goto_5
    aput-object v12, v2, v8

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 895
    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v10, :cond_e

    goto :goto_7

    :cond_e
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 899
    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v4, :cond_10

    .line 903
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v8, v5, :cond_f

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 904
    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    :cond_f
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 906
    invoke-virtual {v5, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/16 v5, 0x8

    goto/16 :goto_0

    .line 900
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_7
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 910
    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v10, :cond_12

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 914
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v2

    .line 911
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1002
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1003
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 p0, 0x0

    return-object p0

    .line 1007
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1009
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    .line 1013
    aget-object v0, v0, v1

    .line 1015
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1016
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object p1

    .line 1021
    :cond_1
    instance-of v3, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_4

    .line 1022
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 1025
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v1, v2, v1

    .line 1028
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 1031
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1033
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not support type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1037
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object p1

    .line 1045
    :cond_4
    instance-of v3, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_6

    .line 1046
    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 1047
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1049
    array-length v5, v4

    if-ne v5, v2, :cond_5

    .line 1053
    aget-object v1, v4, v1

    .line 1054
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_6

    .line 1055
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object p1

    .line 1050
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not support : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1061
    :cond_6
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    .line 1062
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1064
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-object p1

    .line 1069
    :cond_7
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TODO : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1010
    :cond_8
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not support type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1102
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 1105
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 682
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 683
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 687
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v0, [B

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 689
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 690
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object p1

    :cond_1
    const-class v0, [C

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 695
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 696
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 697
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 701
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 704
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 708
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 706
    throw p0
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 163
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    .line 165
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v5

    :cond_0
    const/16 v7, 0xc

    const/16 v8, 0x10

    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syntax error, expect {, actual "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    :goto_0
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_3

    .line 176
    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 177
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v4

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v0

    const/4 v11, 0x0

    .line 185
    :goto_1
    iget v12, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 186
    :goto_2
    iget-boolean v13, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    iget-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v15, 0x0

    .line 192
    :goto_3
    :try_start_0
    iget-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x7d

    const/16 v7, 0x22

    if-eq v5, v7, :cond_5

    if-eq v5, v6, :cond_5

    .line 195
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 196
    iget-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_5
    :goto_4
    const/16 v8, 0x2c

    if-ne v5, v8, :cond_6

    .line 200
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 201
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 202
    iget-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    const-string v8, "expect \':\' at "

    const/16 v9, 0x3a

    const-string v10, "syntax error, "

    const/16 v6, 0x1a

    if-ne v5, v7, :cond_9

    :try_start_1
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 208
    invoke-virtual {v3, v5, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    .line 210
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v7, v9, :cond_8

    .line 212
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 213
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_7

    goto :goto_5

    .line 216
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_9
    const/16 v7, 0x7d

    if-ne v5, v7, :cond_c

    .line 222
    iget v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 223
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_a

    goto :goto_6

    :cond_a
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 225
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_6
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x0

    .line 227
    iput v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x10

    .line 228
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_b

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_b
    return-object v0

    :cond_c
    const/16 v7, 0x27

    if-ne v5, v7, :cond_f

    :try_start_2
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 231
    invoke-virtual {v3, v5, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    .line 232
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v7, v9, :cond_d

    .line 233
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 235
    :cond_d
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_e

    goto :goto_5

    .line 237
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-eq v5, v6, :cond_73

    const/16 v7, 0x2c

    if-eq v5, v7, :cond_72

    const/16 v7, 0x30

    if-lt v5, v7, :cond_10

    const/16 v7, 0x39

    if-le v5, v7, :cond_11

    :cond_10
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_15

    :cond_11
    const/4 v5, 0x0

    .line 244
    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 245
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_12

    .line 248
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v5

    goto :goto_7

    :cond_12
    const/4 v5, 0x1

    .line 250
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    move-object v5, v7

    :goto_7
    if-eqz v11, :cond_13

    .line 254
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :cond_13
    :try_start_4
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_14

    goto/16 :goto_5

    .line 261
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse number key error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse number key error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v7, 0x7b

    if-eq v5, v7, :cond_18

    const/16 v7, 0x5b

    if-ne v5, v7, :cond_16

    goto :goto_8

    :cond_16
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 268
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 270
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_17

    if-eqz v11, :cond_8

    .line 276
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 272
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_18
    :goto_8
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x1

    :goto_9
    const/16 v8, 0xd

    if-nez v7, :cond_1c

    .line 283
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v9, 0x1

    add-int/2addr v7, v9

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 284
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_19

    move v7, v6

    goto :goto_a

    :cond_19
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 286
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    iput-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/16 v9, 0x20

    if-gt v7, v9, :cond_1b

    const/16 v9, 0x20

    if-eq v7, v9, :cond_1a

    const/16 v9, 0xa

    if-eq v7, v9, :cond_1a

    if-eq v7, v8, :cond_1a

    const/16 v9, 0x9

    if-eq v7, v9, :cond_1a

    const/16 v9, 0xc

    if-eq v7, v9, :cond_1a

    const/16 v9, 0x8

    if-ne v7, v9, :cond_1d

    goto :goto_c

    :cond_1a
    const/16 v9, 0x8

    .line 299
    :goto_c
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 300
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_1b
    const/16 v9, 0x8

    goto :goto_d

    :cond_1c
    const/16 v9, 0x8

    .line 306
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_1d
    :goto_d
    const/4 v6, 0x0

    .line 309
    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "@type"

    if-ne v5, v6, :cond_30

    .line 311
    :try_start_5
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 312
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_30

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v7, 0x22

    .line 313
    invoke-virtual {v3, v5, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 316
    :goto_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_20

    .line 317
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_1f

    const/16 v10, 0x39

    if-le v9, v10, :cond_1e

    goto :goto_f

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1f
    :goto_f
    const/4 v7, 0x0

    goto :goto_10

    :cond_20
    const/4 v7, 0x1

    :goto_10
    if-nez v7, :cond_21

    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 327
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v7

    goto :goto_11

    :cond_21
    const/4 v10, 0x0

    move-object v7, v10

    :goto_11
    if-nez v7, :cond_22

    .line 331
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x8

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto/16 :goto_3

    :cond_22
    const/16 v4, 0x10

    .line 335
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 336
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v6, v8, :cond_2a

    .line 337
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 340
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 341
    instance-of v3, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v3, :cond_24

    .line 342
    check-cast v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 343
    invoke-virtual {v2, v1, v7}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 345
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 346
    check-cast v4, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 348
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_23

    .line 349
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 351
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_24
    move-object v3, v10

    :cond_25
    if-nez v3, :cond_28

    .line 358
    const-class v0, Ljava/lang/Cloneable;

    if-ne v7, v0, :cond_26

    .line 359
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_13

    :cond_26
    const-string v0, "java.util.Collections$EmptyMap"

    .line 360
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_13

    .line 363
    :cond_27
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_28
    :goto_13
    if-nez v13, :cond_29

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_29
    return-object v3

    :catch_1
    move-exception v0

    .line 369
    :try_start_7
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2a
    const/4 v3, 0x2

    iput v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v3, :cond_2b

    .line 375
    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_2b

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 379
    :cond_2b
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2d

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 380
    invoke-static {v0, v7, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v13, :cond_2c

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2c
    return-object v0

    :cond_2d
    :try_start_8
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 385
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 386
    invoke-interface {v0, v1, v7, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 387
    instance-of v0, v0, Lcom/alibaba/fastjson/parser/MapDeserializer;

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2e
    if-nez v13, :cond_2f

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2f
    return-object v2

    :cond_30
    const/4 v6, 0x0

    :try_start_9
    const-string v9, "$ref"

    const/4 v6, 0x4

    if-ne v5, v9, :cond_3d

    if-eqz v14, :cond_3d

    .line 393
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 395
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_3d

    .line 397
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 398
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v6, :cond_3c

    .line 399
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const-string v2, "@"

    .line 403
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 405
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 406
    instance-of v4, v2, [Ljava/lang/Object;

    if-nez v4, :cond_32

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_31

    goto :goto_14

    .line 408
    :cond_31
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v2, :cond_39

    .line 409
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_17

    :cond_32
    :goto_14
    move-object v5, v2

    goto :goto_17

    :cond_33
    const-string v2, ".."

    .line 411
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 412
    iget-object v2, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v2, :cond_34

    .line 413
    iget-object v5, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_17

    .line 415
    :cond_34
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v14, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_16

    :cond_35
    const-string v2, "$"

    .line 418
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    move-object v2, v14

    .line 420
    :goto_15
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_36

    .line 421
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_15

    .line 424
    :cond_36
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_37

    .line 425
    iget-object v0, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v5, v0

    goto :goto_17

    .line 427
    :cond_37
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v4, v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_16

    .line 431
    :cond_38
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v14, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :cond_39
    :goto_16
    const/4 v5, 0x0

    .line 435
    :goto_17
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v8, :cond_3b

    const/16 v0, 0x10

    .line 438
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v13, :cond_3a

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_3a
    return-object v5

    .line 436
    :cond_3b
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_3c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    if-nez v13, :cond_3f

    if-nez v15, :cond_3f

    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 448
    invoke-virtual {v1, v9, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v9

    if-nez v14, :cond_3e

    move-object v14, v9

    :cond_3e
    const/16 v9, 0x22

    const/4 v15, 0x1

    goto :goto_18

    :cond_3f
    const/16 v9, 0x22

    :goto_18
    if-ne v7, v9, :cond_43

    .line 457
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v6

    if-eqz v12, :cond_41

    .line 461
    new-instance v7, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 462
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v16

    if-eqz v16, :cond_40

    .line 463
    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 465
    :cond_40
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    :cond_41
    if-eqz v4, :cond_42

    .line 469
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 471
    :cond_42
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_43
    const/16 v9, 0x30

    if-lt v7, v9, :cond_44

    const/16 v9, 0x39

    if-le v7, v9, :cond_45

    :cond_44
    const/16 v9, 0x2d

    if-ne v7, v9, :cond_46

    .line 474
    :cond_45
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumberValue()Ljava/lang/Number;

    move-result-object v6

    .line 475
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    move/from16 v17, v11

    goto/16 :goto_23

    :cond_46
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_4d

    const/16 v6, 0xe

    .line 477
    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 480
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 481
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_47

    const/16 v6, 0x1a

    goto :goto_1a

    :cond_47
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 483
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_1a
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 485
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_48

    .line 487
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Ljava/lang/Integer;

    if-ne v7, v9, :cond_48

    goto :goto_1b

    .line 489
    :cond_48
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 492
    :goto_1b
    invoke-virtual {v1, v6, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 493
    new-instance v7, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    if-eqz v4, :cond_49

    .line 495
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 497
    :cond_49
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :goto_1c
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v8, :cond_4b

    const/16 v6, 0x10

    .line 502
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v13, :cond_4a

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_4a
    return-object v0

    :cond_4b
    const/16 v6, 0x10

    if-ne v5, v6, :cond_4c

    move v5, v6

    move/from16 v17, v11

    goto/16 :goto_25

    .line 507
    :cond_4c
    :try_start_b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    const/16 v9, 0x7b

    if-ne v7, v9, :cond_5d

    .line 511
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 512
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_4e

    const/16 v6, 0x1a

    goto :goto_1d

    :cond_4e
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 514
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_1d
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0xc

    .line 515
    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 518
    instance-of v6, v2, Ljava/lang/Integer;

    .line 520
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_4f

    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v7, v9}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_1e

    :cond_4f
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :goto_1e
    if-nez v13, :cond_50

    if-nez v6, :cond_50

    .line 528
    invoke-virtual {v1, v14, v7, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v9

    goto :goto_1f

    :cond_50
    const/4 v9, 0x0

    :goto_1f
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz v8, :cond_52

    if-eqz v5, :cond_51

    .line 534
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v17, v11

    goto :goto_20

    :cond_51
    move/from16 v17, v11

    const/4 v8, 0x0

    :goto_20
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 535
    invoke-interface {v11, v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v8, :cond_53

    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 537
    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    .line 538
    invoke-interface {v11, v1, v8, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x1

    goto :goto_21

    :cond_52
    move/from16 v17, v11

    :cond_53
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_21
    if-nez v11, :cond_54

    .line 543
    invoke-virtual {v1, v7, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_54
    if-eqz v9, :cond_55

    if-eq v7, v8, :cond_55

    .line 546
    iput-object v0, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_55
    iget v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_56

    .line 550
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_56
    if-eqz v4, :cond_57

    .line 554
    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 556
    :cond_57
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    if-eqz v6, :cond_58

    .line 560
    invoke-virtual {v1, v14, v8, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 563
    :cond_58
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_5b

    const/16 v6, 0x10

    .line 565
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-nez v13, :cond_59

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_59
    if-nez v13, :cond_5a

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_5a
    return-object v0

    :cond_5b
    const/16 v6, 0x10

    if-ne v5, v6, :cond_5c

    move v5, v6

    goto/16 :goto_25

    .line 574
    :cond_5c
    :try_start_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    move/from16 v17, v11

    const/16 v8, 0x74

    if-ne v7, v8, :cond_5e

    .line 577
    iget-object v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "true"

    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 578
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x3

    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 579
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 580
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_5e
    const/16 v8, 0x66

    if-ne v7, v8, :cond_6d

    .line 583
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v8, "false"

    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 584
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v6

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 585
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 586
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_5f
    :goto_23
    iget-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_60

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_60

    .line 609
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 610
    iget-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_60
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_62

    .line 616
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 617
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_61

    const/16 v6, 0x1a

    goto :goto_24

    :cond_61
    iget-object v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 619
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_24
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x10

    :goto_25
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2b

    :cond_62
    const/16 v4, 0x7d

    if-ne v5, v4, :cond_6c

    .line 625
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 626
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_63

    const/16 v4, 0x1a

    goto :goto_26

    :cond_63
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 628
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_26
    iput-char v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v6, 0x0

    .line 630
    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_65

    .line 633
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 634
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_64

    const/16 v6, 0x1a

    goto :goto_27

    :cond_64
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 636
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_27
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x10

    .line 637
    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2a

    :cond_65
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_67

    .line 639
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 640
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_66

    const/16 v6, 0x1a

    goto :goto_28

    :cond_66
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 642
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_28
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0xd

    .line 643
    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2a

    :cond_67
    const/16 v5, 0x5d

    if-ne v4, v5, :cond_69

    .line 645
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 646
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_68

    const/16 v6, 0x1a

    goto :goto_29

    :cond_68
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 648
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_29
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0xf

    .line 649
    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2a

    .line 651
    :cond_69
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_2a
    if-nez v13, :cond_6a

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 655
    invoke-virtual {v1, v3, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_6a
    if-nez v13, :cond_6b

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_6b
    return-object v0

    .line 660
    :cond_6c
    :try_start_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 589
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v8

    .line 592
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v11, Lcom/alibaba/fastjson/JSONObject;

    if-ne v9, v11, :cond_6e

    .line 593
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 592
    :cond_6e
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0xd

    if-ne v5, v8, :cond_70

    const/16 v5, 0x10

    .line 598
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v13, :cond_6f

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_6f
    return-object v0

    :cond_70
    const/16 v5, 0x10

    .line 600
    :try_start_e
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v8, v5, :cond_71

    :goto_2b
    move v8, v5

    move/from16 v11, v17

    const/16 v6, 0x8

    const/16 v7, 0xc

    goto/16 :goto_3

    .line 603
    :cond_71
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_72
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_73
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v13, :cond_74

    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 667
    :cond_74
    throw v0
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 10

    .line 920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 922
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 923
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 924
    check-cast v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 929
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 931
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "syntax error, expect {, actual "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 936
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 939
    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v6, v4, :cond_3

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 940
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-void

    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 943
    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v6, v5, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 950
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v3

    :goto_2
    const/16 v7, 0x3a

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 954
    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v8, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_6

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 958
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 959
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 961
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v4, :cond_2

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 962
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 955
    :cond_6
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setter not found, class "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", property "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 968
    :cond_7
    iget-object v2, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 969
    iget-object v8, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 971
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_8

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 972
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 973
    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v2, p0, v8, v3}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 974
    :cond_8
    const-class v9, Ljava/lang/String;

    if-ne v2, v9, :cond_9

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 975
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 976
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 977
    :cond_9
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_a

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 978
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 979
    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v2, p0, v8, v3}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 981
    invoke-virtual {v9, v2, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 983
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 984
    invoke-interface {v2, p0, v8, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 987
    :goto_3
    invoke-virtual {v6, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 990
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v5, :cond_b

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 994
    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v4, :cond_2

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 995
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-void
.end method

.method public parseString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1522
    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x4

    const/16 v2, 0x10

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1524
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1525
    iget-char v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2c

    const/16 v4, 0x1a

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1526
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1527
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1529
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_0
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1530
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1531
    iget-char v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1532
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1533
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1535
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0xf

    .line 1536
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1537
    iget-char v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1538
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1539
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1541
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_2
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0xd

    .line 1542
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1544
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_3
    return-object v0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1550
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1551
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v0

    .line 1555
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1561
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected popContext()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1353
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    .line 1354
    aput-object v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    return-void
.end method

.method protected setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1359
    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1363
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez p2, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1368
    :cond_1
    array-length p3, p2

    if-lt p1, p3, :cond_2

    .line 1369
    array-length p3, p2

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x2

    .line 1370
    new-array p3, p3, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1371
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1374
    aput-object p0, p2, p1

    return-object p0
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1346
    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    return-void
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method
