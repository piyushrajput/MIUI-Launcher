.class public Lcom/android/launcher2/gadget/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getFilterCode(II)I
    .locals 4
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, filterCode:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-ne p0, v2, :cond_1

    .line 128
    const/4 v0, 0x1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p0, v2, :cond_2

    .line 130
    const/4 v0, 0x2

    goto :goto_0

    .line 131
    :cond_2
    if-ne p1, v2, :cond_3

    if-ne p0, v3, :cond_3

    .line 132
    const/4 v0, 0x4

    goto :goto_0

    .line 133
    :cond_3
    if-ne p1, v3, :cond_0

    if-ne p0, v3, :cond_0

    .line 134
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 9
    .parameter "zipPath"

    .prologue
    const-string v7, "com.android.launcher2.gadget.Utils"

    .line 31
    const/4 v5, 0x0

    .line 32
    .local v5, zip:Ljava/util/zip/ZipFile;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 34
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 36
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 37
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .local v6, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v7, "manifest.xml"

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 38
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 39
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 40
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    move-result-object v7

    .line 50
    if-eqz v4, :cond_0

    .line 52
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 57
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 59
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_1
    :goto_1
    move-object v5, v6

    .line 65
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :goto_2
    return-object v7

    .line 41
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 42
    .local v3, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v7, "com.android.launcher2.gadget.Utils"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    if-eqz v4, :cond_2

    .line 52
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 57
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 59
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 65
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    :goto_5
    const/4 v7, 0x0

    goto :goto_2

    .line 43
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 44
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    :try_start_7
    const-string v7, "com.android.launcher2.gadget.Utils"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 50
    if-eqz v4, :cond_4

    .line 52
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 57
    :cond_4
    :goto_7
    if-eqz v5, :cond_3

    .line 59
    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 60
    :catch_2
    move-exception v7

    goto :goto_5

    .line 45
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 46
    .local v3, e:Lorg/xml/sax/SAXException;
    :goto_8
    :try_start_a
    const-string v7, "com.android.launcher2.gadget.Utils"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 50
    if-eqz v4, :cond_5

    .line 52
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 57
    :cond_5
    :goto_9
    if-eqz v5, :cond_3

    .line 59
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_5

    .line 60
    :catch_4
    move-exception v7

    goto :goto_5

    .line 47
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_5
    move-exception v7

    move-object v3, v7

    .line 48
    .local v3, e:Ljava/lang/Exception;
    :goto_a
    :try_start_d
    const-string v7, "com.android.launcher2.gadget.Utils"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 50
    if-eqz v4, :cond_6

    .line 52
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 57
    :cond_6
    :goto_b
    if-eqz v5, :cond_3

    .line 59
    :try_start_f
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_5

    .line 60
    :catch_6
    move-exception v7

    goto :goto_5

    .line 50
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_c
    if-eqz v4, :cond_7

    .line 52
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 57
    :cond_7
    :goto_d
    if-eqz v5, :cond_8

    .line 59
    :try_start_11
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 61
    :cond_8
    :goto_e
    throw v7

    .line 53
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v8

    goto :goto_0

    .line 60
    :catch_8
    move-exception v8

    goto :goto_1

    .line 53
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .local v3, e:Ljava/io/IOException;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v7

    goto :goto_4

    .line 60
    :catch_a
    move-exception v7

    goto :goto_5

    .line 53
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_b
    move-exception v7

    goto :goto_7

    .local v3, e:Lorg/xml/sax/SAXException;
    :catch_c
    move-exception v7

    goto :goto_9

    .local v3, e:Ljava/lang/Exception;
    :catch_d
    move-exception v7

    goto :goto_b

    .end local v3           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v8

    goto :goto_d

    .line 60
    :catch_f
    move-exception v8

    goto :goto_e

    .line 50
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_c

    .line 47
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_10
    move-exception v7

    move-object v3, v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .line 45
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_11
    move-exception v7

    move-object v3, v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .line 43
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_12
    move-exception v7

    move-object v3, v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 41
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_13
    move-exception v7

    move-object v3, v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_3
.end method
