.class public Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/miui/android/screenelement/ResourceManager$ResourceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GadgetClockBitmapLoader"
.end annotation


# instance fields
.field private final mResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "resourcePath"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;->mResourcePath:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;)Lcom/miui/android/screenelement/ResourceManager$BitmapInfo;
    .locals 8
    .parameter "src"

    .prologue
    const/4 v7, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 84
    .local v4, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .local v3, padding:Landroid/graphics/Rect;
    new-instance v5, Ljava/util/zip/ZipFile;

    iget-object v6, p0, Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .local v5, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 87
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 89
    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/miui/android/screenelement/ResourceManager$BitmapInfo;

    invoke-direct {v6, v0, v3}, Lcom/miui/android/screenelement/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 94
    if-eqz v2, :cond_0

    .line 96
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 101
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 103
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_1
    move-object v4, v5

    .line 109
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #padding:Landroid/graphics/Rect;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :goto_2
    return-object v6

    .line 94
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #padding:Landroid/graphics/Rect;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    if-eqz v2, :cond_3

    .line 96
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 101
    :cond_3
    :goto_3
    if-eqz v5, :cond_8

    .line 103
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v5

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #padding:Landroid/graphics/Rect;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :cond_4
    :goto_4
    move-object v6, v7

    .line 109
    goto :goto_2

    .line 104
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #padding:Landroid/graphics/Rect;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 105
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 92
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #padding:Landroid/graphics/Rect;
    :catch_1
    move-exception v6

    .line 94
    :goto_5
    if-eqz v2, :cond_5

    .line 96
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 101
    :cond_5
    :goto_6
    if-eqz v4, :cond_4

    .line 103
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 104
    :catch_2
    move-exception v6

    goto :goto_4

    .line 94
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v2, :cond_6

    .line 96
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 101
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 103
    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 105
    :cond_7
    :goto_9
    throw v6

    .line 97
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #padding:Landroid/graphics/Rect;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v7

    goto :goto_0

    .line 104
    :catch_4
    move-exception v7

    goto :goto_1

    .line 97
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_5
    move-exception v6

    goto :goto_3

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #padding:Landroid/graphics/Rect;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v6

    goto :goto_6

    :catch_7
    move-exception v7

    goto :goto_8

    .line 104
    :catch_8
    move-exception v7

    goto :goto_9

    .line 94
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #padding:Landroid/graphics/Rect;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .line 92
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :cond_8
    move-object v4, v5

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .parameter "src"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;->mResourcePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Utils;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
