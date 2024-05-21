.class public final Lcom/google/common/net/HostAndPort;
.super Ljava/lang/Object;
.source "HostAndPort.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final NO_PORT:I = -0x1

.field private static final serialVersionUID:J


# instance fields
.field private final hasBracketlessColons:Z

.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iput p2, p0, Lcom/google/common/net/HostAndPort;->port:I

    iput-boolean p3, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    return-void
.end method

.method public static fromHost(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 3

    .line 151
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fromParts(Ljava/lang/String;I)Lcom/google/common/net/HostAndPort;
    .locals 3

    .line 133
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v0

    const-string v1, "Port out of range: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 134
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 136
    new-instance p0, Lcom/google/common/net/HostAndPort;

    iget-object v1, v0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {p0, v1, p1, v0}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 8

    .line 168
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "["

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    aget-object v4, v0, v3

    .line 176
    aget-object v0, v0, v2

    :goto_0
    move-object v5, v4

    move v4, v3

    goto :goto_2

    :cond_0
    const/16 v0, 0x3a

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 179
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ltz v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const/4 v4, 0x0

    move-object v5, p0

    move-object v7, v4

    move v4, v0

    move-object v0, v7

    .line 191
    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v1, "+"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    const-string v1, "Unparseable port number: %s"

    .line 194
    invoke-static {v2, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 199
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    invoke-static {v1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v0

    const-string v2, "Port number out of range: %s"

    invoke-static {v0, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 201
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Unparseable port number: "

    if-eqz v1, :cond_4

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_5
    :goto_5
    new-instance p0, Lcom/google/common/net/HostAndPort;

    invoke-direct {p0, v5, v1, v4}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method

.method private static getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Bracketed host-port string must start with a bracket: %s"

    .line 217
    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x3a

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v4, 0x5d

    .line 222
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    if-le v4, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v5, "Invalid bracketed host/port: %s"

    .line 223
    invoke-static {v2, v5, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    const-string p0, ""

    .line 230
    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 233
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_3

    move v0, v3

    :cond_3
    const-string v1, "Only a colon may follow a close bracket: %s"

    .line 232
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x2

    move v0, v4

    .line 236
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    const-string v3, "Port must be numeric: %s"

    .line 237
    invoke-static {v1, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 242
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValidPort(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 288
    :cond_0
    instance-of v1, p1, Lcom/google/common/net/HostAndPort;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 289
    check-cast p1, Lcom/google/common/net/HostAndPort;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    .line 290
    iget-object v3, p1, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/google/common/net/HostAndPort;->port:I

    iget p1, p1, Lcom/google/common/net/HostAndPort;->port:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget p0, p0, Lcom/google/common/net/HostAndPort;->port:I

    return p0
.end method

.method public getPortOrDefault(I)I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/google/common/net/HostAndPort;->port:I

    :cond_0
    return p1
.end method

.method public hasPort()Z
    .locals 0

    iget p0, p0, Lcom/google/common/net/HostAndPort;->port:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/net/HostAndPort;->port:I

    .line 297
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public requireBracketsForIPv6()Lcom/google/common/net/HostAndPort;
    .locals 3

    iget-boolean v0, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Possible bracketless IPv6 literal: %s"

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    .line 279
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    const/16 v2, 0x3a

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v1, 0x5b

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/google/common/net/HostAndPort;->port:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withDefaultPort(I)Lcom/google/common/net/HostAndPort;
    .locals 2

    .line 256
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 260
    :cond_0
    new-instance v0, Lcom/google/common/net/HostAndPort;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {v0, v1, p1, p0}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method
