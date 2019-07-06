.class public Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;
.super Ljava/lang/Object;
.source "FLogDefaultLoggingDelegate.java"

# interfaces
.implements Lcom/facebook/common/logging/LoggingDelegate;


# static fields
.field public static final sInstance:Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;


# instance fields
.field private mApplicationTag:Ljava/lang/String;

.field private mMinimumLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    invoke-direct {v0}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;-><init>()V

    sput-object v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->sInstance:Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mApplicationTag:Ljava/lang/String;

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mMinimumLoggingLevel:I

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;
    .locals 1

    .line 25
    sget-object v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->sInstance:Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    return-object v0
.end method

.method private static getMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 151
    if-nez p0, :cond_0

    .line 152
    const-string v0, ""

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 155
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 156
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private prefixTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mApplicationTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mApplicationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    return-object p1
.end method

.method private println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->prefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .line 135
    invoke-direct {p0, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->prefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->getMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 74
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 104
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public getMinimumLoggingLevel()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mMinimumLoggingLevel:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 84
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public isLoggable(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 54
    iget v0, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mMinimumLoggingLevel:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setApplicationTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mApplicationTag:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMinimumLoggingLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 44
    iput p1, p0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->mMinimumLoggingLevel:I

    .line 45
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 64
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 94
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 122
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method
