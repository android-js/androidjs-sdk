.class public Lcom/facebook/soloader/DirectorySoSource;
.super Lcom/facebook/soloader/SoSource;
.source "DirectorySoSource.java"


# static fields
.field public static final ON_LD_LIBRARY_PATH:I = 0x2

.field public static final RESOLVE_DEPENDENCIES:I = 0x1


# instance fields
.field protected final flags:I

.field protected final soDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0
    .param p1, "soDirectory"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 44
    invoke-direct {p0}, Lcom/facebook/soloader/SoSource;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/soloader/DirectorySoSource;->soDirectory:Ljava/io/File;

    .line 46
    iput p2, p0, Lcom/facebook/soloader/DirectorySoSource;->flags:I

    .line 47
    return-void
.end method

.method private static getDependencies(Ljava/io/File;)[Ljava/lang/String;
    .locals 2
    .param p0, "soFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoLoader.getElfDependencies["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;)V

    .line 115
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v1, :cond_1

    .line 118
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 115
    :cond_1
    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v1, :cond_2

    .line 118
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 120
    :cond_2
    throw v0
.end method

.method private loadDependencies(Ljava/io/File;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 4
    .param p1, "soFile"    # Ljava/io/File;
    .param p2, "loadFlags"    # I
    .param p3, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lcom/facebook/soloader/DirectorySoSource;->getDependencies(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "dependencies":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading lib dependencies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 98
    aget-object v2, v0, v1

    .line 99
    .local v2, "dependency":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    goto :goto_1

    .line 103
    :cond_0
    or-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3, p3}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    .line 97
    .end local v2    # "dependency":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addToLdLibraryPath(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/soloader/DirectorySoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 1
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I
    .param p3, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/soloader/DirectorySoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/soloader/DirectorySoSource;->loadLibraryFrom(Ljava/lang/String;ILjava/io/File;Landroid/os/StrictMode$ThreadPolicy;)I

    move-result v0

    return v0
.end method

.method protected loadLibraryFrom(Ljava/lang/String;ILjava/io/File;Landroid/os/StrictMode$ThreadPolicy;)I
    .locals 5
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I
    .param p3, "libDir"    # Ljava/io/File;
    .param p4, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v0, "soFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SoLoader"

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    return v1

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/facebook/soloader/DirectorySoSource;->flags:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " loaded implicitly"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v3

    .line 72
    :cond_1
    iget v1, p0, Lcom/facebook/soloader/DirectorySoSource;->flags:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 73
    invoke-direct {p0, v0, p2, p4}, Lcom/facebook/soloader/DirectorySoSource;->loadDependencies(Ljava/io/File;ILandroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 75
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not resolving dependencies for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p2}, Lcom/facebook/soloader/SoFileLoader;->load(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 90
    return v3

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bad ELF magic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const-string v3, "Corrupted lib file detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x3

    return v2

    .line 86
    :cond_3
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/facebook/soloader/DirectorySoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v0, "path":Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/facebook/soloader/DirectorySoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "path":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v2, "[root = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, " flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/soloader/DirectorySoSource;->flags:I

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    return-object v1
.end method

.method public unpackLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/DirectorySoSource;->soDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v0, "soFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    return-object v0

    .line 131
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
