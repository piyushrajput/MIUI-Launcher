.class Lcom/android/launcher2/LiveFolderInfo;
.super Lcom/android/launcher2/FolderInfo;
.source "LiveFolderInfo.java"


# instance fields
.field baseIntent:Landroid/content/Intent;

.field displayMode:I

.field icon:Landroid/graphics/Bitmap;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/LiveFolderInfo;->itemType:I

    .line 56
    return-void
.end method


# virtual methods
.method public load(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/launcher2/FolderInfo;->load(Landroid/database/Cursor;)V

    .line 61
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, intentDescription:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    .line 71
    return-void

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/launcher2/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 76
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "intent"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    const-string v0, "iconType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v0, "displayMode"

    iget v1, p0, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    return-void
.end method
