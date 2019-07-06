.class public final Lokhttp3/JavaNetAuthenticator;
.super Ljava/lang/Object;
.source "JavaNetAuthenticator.java"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation runtime Lokhttp3/internal/annotations/EverythingIsNonNull;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 18
    .param p1, "route"    # Lokhttp3/Route;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->challenges()Ljava/util/List;

    move-result-object v1

    .line 36
    .local v1, "challenges":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    .line 37
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    .line 38
    .local v3, "url":Lokhttp3/HttpUrl;
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x197

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 39
    .local v4, "proxyAuthorization":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    .line 41
    .local v5, "proxy":Ljava/net/Proxy;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 42
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/Challenge;

    .line 43
    .local v8, "challenge":Lokhttp3/Challenge;
    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Basic"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_4

    .line 46
    :cond_1
    if-eqz v4, :cond_2

    .line 47
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    check-cast v9, Ljava/net/InetSocketAddress;

    .line 48
    .local v9, "proxyAddress":Ljava/net/InetSocketAddress;
    nop

    .line 49
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v5, v3}, Lokhttp3/JavaNetAuthenticator;->getConnectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    .line 50
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v16

    sget-object v17, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 48
    invoke-static/range {v10 .. v17}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    .line 52
    .local v9, "auth":Ljava/net/PasswordAuthentication;
    goto :goto_2

    .line 53
    .end local v9    # "auth":Ljava/net/PasswordAuthentication;
    :cond_2
    nop

    .line 54
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v5, v3}, Lokhttp3/JavaNetAuthenticator;->getConnectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v12

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-virtual {v8}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v16

    sget-object v17, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 53
    invoke-static/range {v10 .. v17}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    .line 58
    .restart local v9    # "auth":Ljava/net/PasswordAuthentication;
    :goto_2
    if-eqz v9, :cond_4

    .line 59
    nop

    .line 60
    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Lokhttp3/Challenge;->charset()Ljava/nio/charset/Charset;

    move-result-object v12

    .line 59
    invoke-static {v10, v11, v12}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "credential":Ljava/lang/String;
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v11

    .line 62
    if-eqz v4, :cond_3

    const-string v12, "Proxy-Authorization"

    goto :goto_3

    :cond_3
    const-string v12, "Authorization"

    :goto_3
    invoke-virtual {v11, v12, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 63
    invoke-virtual {v11}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v11

    .line 61
    return-object v11

    .line 41
    .end local v8    # "challenge":Lokhttp3/Challenge;
    .end local v9    # "auth":Ljava/net/PasswordAuthentication;
    .end local v10    # "credential":Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 67
    .end local v6    # "i":I
    .end local v7    # "size":I
    :cond_5
    const/4 v6, 0x0

    return-object v6
.end method
