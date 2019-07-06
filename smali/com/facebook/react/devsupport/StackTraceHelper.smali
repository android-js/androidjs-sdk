.class public Lcom/facebook/react/devsupport/StackTraceHelper;
.super Ljava/lang/Object;
.source "StackTraceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;
    }
.end annotation


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "column"

.field public static final LINE_NUMBER_KEY:Ljava/lang/String; = "lineNumber"

.field private static final STACK_FRAME_PATTERN1:Ljava/util/regex/Pattern;

.field private static final STACK_FRAME_PATTERN2:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "^(?:(.*?)@)?(.*?)\\:([0-9]+)\\:([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN1:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "\\s*(?:at)\\s*(.+?)\\s*[@(](.*):([0-9]+):([0-9]+)[)]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN2:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertJavaStackTrace(Ljava/lang/Throwable;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 11
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 205
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    new-array v1, v1, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 206
    .local v1, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 207
    new-instance v3, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    aget-object v4, v0, v2

    .line 208
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v0, v2

    .line 209
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    aget-object v4, v0, v2

    .line 210
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aget-object v4, v0, v2

    .line 211
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V

    aput-object v3, v1, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 17
    .param p0, "stack"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    move-object/from16 v0, p0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, "size":I
    :goto_0
    new-array v2, v1, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 123
    .local v2, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 124
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    .line 125
    .local v4, "type":Lcom/facebook/react/bridge/ReadableType;
    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_3

    .line 126
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 127
    .local v5, "frame":Lcom/facebook/react/bridge/ReadableMap;
    const-string v6, "methodName"

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "methodName":Ljava/lang/String;
    const-string v7, "file"

    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "fileName":Ljava/lang/String;
    const/4 v7, -0x1

    .line 130
    .local v7, "lineNumber":I
    const-string v8, "lineNumber"

    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 131
    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v7

    move v14, v7

    goto :goto_2

    .line 133
    :cond_1
    move v14, v7

    .end local v7    # "lineNumber":I
    .local v14, "lineNumber":I
    :goto_2
    const/4 v7, -0x1

    .line 134
    .local v7, "columnNumber":I
    const-string v8, "column"

    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 135
    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v7

    move v15, v7

    goto :goto_3

    .line 137
    :cond_2
    move v15, v7

    .end local v7    # "columnNumber":I
    .local v15, "columnNumber":I
    :goto_3
    new-instance v16, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    const/4 v12, 0x0

    move-object/from16 v7, v16

    move-object v8, v13

    move-object v9, v6

    move v10, v14

    move v11, v15

    invoke-direct/range {v7 .. v12}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V

    aput-object v16, v2, v3

    .end local v5    # "frame":Lcom/facebook/react/bridge/ReadableMap;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v15    # "columnNumber":I
    goto :goto_4

    .line 138
    :cond_3
    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_4

    .line 139
    new-instance v5, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    const/4 v7, 0x0

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V

    aput-object v5, v2, v3

    goto :goto_5

    .line 138
    :cond_4
    :goto_4
    nop

    .line 123
    .end local v4    # "type":Lcom/facebook/react/bridge/ReadableType;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    .end local v3    # "i":I
    :cond_5
    return-object v2
.end method

.method public static convertJsStackTrace(Ljava/lang/String;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 20
    .param p0, "stack"    # Ljava/lang/String;

    .line 177
    const-string v0, "\n"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "stackTrace":[Ljava/lang/String;
    array-length v2, v0

    new-array v2, v2, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 179
    .local v2, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 180
    sget-object v4, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN1:Ljava/util/regex/Pattern;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 181
    .local v4, "matcher1":Ljava/util/regex/Matcher;
    sget-object v5, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN2:Ljava/util/regex/Pattern;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 183
    .local v5, "matcher2":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    move-object v6, v5

    .local v6, "matcher":Ljava/util/regex/Matcher;
    goto :goto_1

    .line 185
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    move-object v6, v4

    .line 191
    .restart local v6    # "matcher":Ljava/util/regex/Matcher;
    :goto_1
    new-instance v13, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    const/4 v7, 0x2

    .line 192
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 193
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v7, "(unknown)"

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v9, v7

    const/4 v7, 0x3

    .line 194
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v7, 0x4

    .line 195
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V

    aput-object v13, v2, v3

    goto :goto_3

    .line 188
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v6, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    const/4 v15, 0x0

    aget-object v16, v0, v3

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V

    aput-object v6, v2, v3

    .line 189
    nop

    .line 179
    .end local v4    # "matcher1":Ljava/util/regex/Matcher;
    .end local v5    # "matcher2":Ljava/util/regex/Matcher;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public static convertJsStackTrace(Lorg/json/JSONArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 15
    .param p0, "stack"    # Lorg/json/JSONArray;

    .line 150
    const-string v0, "column"

    const-string v1, "lineNumber"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 151
    .local v2, "size":I
    :goto_0
    new-array v3, v2, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 153
    .local v3, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 154
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 155
    .local v5, "frame":Lorg/json/JSONObject;
    const-string v6, "methodName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, "methodName":Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "fileName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 158
    .local v6, "lineNumber":I
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 159
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    .line 161
    :cond_1
    const/4 v7, -0x1

    .line 162
    .local v7, "columnNumber":I
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 163
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    move v13, v7

    goto :goto_2

    .line 165
    :cond_2
    move v13, v7

    .end local v7    # "columnNumber":I
    .local v13, "columnNumber":I
    :goto_2
    new-instance v14, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    const/4 v12, 0x0

    move-object v7, v14

    move v10, v6

    move v11, v13

    invoke-direct/range {v7 .. v12}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V

    aput-object v14, v3, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v5    # "frame":Lorg/json/JSONObject;
    .end local v6    # "lineNumber":I
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "methodName":Ljava/lang/String;
    .end local v13    # "columnNumber":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .end local v4    # "i":I
    :catch_0
    move-exception v0

    .line 168
    .local v0, "exception":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 169
    .end local v0    # "exception":Lorg/json/JSONException;
    :cond_3
    nop

    .line 170
    return-object v3
.end method

.method public static formatFrameSource(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;
    .locals 4
    .param p0, "frame"    # Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "lineInfo":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getLine()I

    move-result v1

    .line 224
    .local v1, "line":I
    if-lez v1, :cond_0

    .line 225
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getColumn()I

    move-result v3

    .line 227
    .local v3, "column":I
    if-lez v3, :cond_0

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .end local v3    # "column":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatStackTrace(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "stack"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "stackTrace":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 241
    .local v4, "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    invoke-interface {v4}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {v4}, Lcom/facebook/react/devsupport/StackTraceHelper;->formatFrameSource(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .end local v4    # "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
