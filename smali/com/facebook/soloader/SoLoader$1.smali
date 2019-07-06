.class final Lcom/facebook/soloader/SoLoader$1;
.super Ljava/lang/Object;
.source "SoLoader.java"

# interfaces
.implements Lcom/facebook/soloader/SoFileLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/SoLoader;->initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hasNativeLoadMethod:Z

.field final synthetic val$localLdLibraryPath:Ljava/lang/String;

.field final synthetic val$localLdLibraryPathNoZips:Ljava/lang/String;

.field final synthetic val$nativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

.field final synthetic val$runtime:Ljava/lang/Runtime;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runtime;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/facebook/soloader/SoLoader$1;->val$hasNativeLoadMethod:Z

    iput-object p2, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPathNoZips:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/soloader/SoLoader$1;->val$runtime:Ljava/lang/Runtime;

    iput-object p5, p0, Lcom/facebook/soloader/SoLoader$1;->val$nativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLibHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "libPath"    # Ljava/lang/String;

    .line 390
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "libFile":Ljava/io/File;
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 392
    .local v1, "digest":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .local v2, "libInStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 393
    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 395
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bytesRead":I
    const/4 v7, 0x0

    if-lez v5, :cond_0

    .line 396
    invoke-virtual {v1, v4, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 398
    :cond_0
    const-string v5, "%32x"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    invoke-direct {v10, v8, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v10, v9, v7

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v4    # "buffer":[B
    .end local v6    # "bytesRead":I
    .local v3, "digestStr":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .end local v3    # "digestStr":Ljava/lang/String;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 392
    :catch_0
    move-exception v3

    .end local v0    # "libFile":Ljava/io/File;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "libInStream":Ljava/io/InputStream;
    .end local p1    # "libPath":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 399
    .restart local v0    # "libFile":Ljava/io/File;
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "libInStream":Ljava/io/InputStream;
    .restart local p1    # "libPath":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .end local p1    # "libPath":Ljava/lang/String;
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2

    .line 404
    .end local v0    # "libFile":Ljava/io/File;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "libInStream":Ljava/io/InputStream;
    .restart local p1    # "libPath":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 405
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "digestStr":Ljava/lang/String;
    goto :goto_4

    .line 402
    .end local v3    # "digestStr":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v3    # "digestStr":Ljava/lang/String;
    goto :goto_3

    .line 400
    .end local v3    # "digestStr":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "digestStr":Ljava/lang/String;
    :goto_3
    nop

    .line 407
    :goto_4
    return-object v3
.end method


# virtual methods
.method public load(Ljava/lang/String;I)V
    .locals 9
    .param p1, "pathToSoFile"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "error":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/facebook/soloader/SoLoader$1;->val$hasNativeLoadMethod:Z

    if-eqz v1, :cond_5

    .line 352
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 353
    .local v1, "inZip":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPathNoZips:Ljava/lang/String;

    .line 355
    .local v4, "path":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/facebook/soloader/SoLoader$1;->val$runtime:Ljava/lang/Runtime;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 356
    :try_start_1
    iget-object v6, p0, Lcom/facebook/soloader/SoLoader$1;->val$nativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/facebook/soloader/SoLoader$1;->val$runtime:Ljava/lang/Runtime;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v3

    const-class v3, Lcom/facebook/soloader/SoLoader;

    .line 359
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x2

    aput-object v4, v8, v2

    .line 358
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 360
    if-nez v0, :cond_3

    .line 363
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    if-eqz v0, :cond_2

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when loading lib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lib hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {p0, p1}, Lcom/facebook/soloader/SoLoader$1;->getLibHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " search path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    const-string v3, "SoLoader"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v1    # "inZip":Z
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    goto :goto_4

    .line 361
    .restart local v1    # "inZip":Z
    .restart local v4    # "path":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v2, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "inZip":Z
    .end local v4    # "path":Ljava/lang/String;
    .end local p1    # "pathToSoFile":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    throw v2

    .line 363
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "inZip":Z
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p1    # "pathToSoFile":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "inZip":Z
    .end local v4    # "path":Ljava/lang/String;
    .end local p1    # "pathToSoFile":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "inZip":Z
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p1    # "pathToSoFile":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 364
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 367
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Cannot load "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 368
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "inZip":Z
    .end local v4    # "path":Ljava/lang/String;
    .end local p1    # "pathToSoFile":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 370
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "inZip":Z
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p1    # "pathToSoFile":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    :goto_3
    if-eqz v0, :cond_4

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when loading lib: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lib hash: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {p0, p1}, Lcom/facebook/soloader/SoLoader$1;->getLibHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " search path is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    const-string v5, "SoLoader"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4
    throw v2

    .line 382
    .end local v1    # "inZip":Z
    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 384
    :goto_4
    return-void
.end method
