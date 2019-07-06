.class public Lcom/facebook/common/file/FileTree;
.super Ljava/lang/Object;
.source "FileTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 6
    .param p0, "directory"    # Ljava/io/File;

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x1

    .line 52
    .local v1, "success":Z
    if-eqz v0, :cond_0

    .line 53
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 54
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lcom/facebook/common/file/FileTree;->deleteRecursively(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 53
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return v1
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/facebook/common/file/FileTree;->deleteContents(Ljava/io/File;)Z

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static walkFileTree(Ljava/io/File;Lcom/facebook/common/file/FileTreeVisitor;)V
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "visitor"    # Lcom/facebook/common/file/FileTreeVisitor;

    .line 31
    invoke-interface {p1, p0}, Lcom/facebook/common/file/FileTreeVisitor;->preVisitDirectory(Ljava/io/File;)V

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 34
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    invoke-static {v3, p1}, Lcom/facebook/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/facebook/common/file/FileTreeVisitor;)V

    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {p1, v3}, Lcom/facebook/common/file/FileTreeVisitor;->visitFile(Ljava/io/File;)V

    .line 34
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {p1, p0}, Lcom/facebook/common/file/FileTreeVisitor;->postVisitDirectory(Ljava/io/File;)V

    .line 43
    return-void
.end method
