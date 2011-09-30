.class Lcom/android/launcher2/FolderInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "FolderInfo.java"


# instance fields
.field private mFolderCache:Lcom/android/launcher2/Folder;

.field opened:Z

.field public sortMode:I

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/FolderInfo;->itemType:I

    .line 48
    return-void
.end method


# virtual methods
.method count()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getFolderCache()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->mFolderCache:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->mFolderCache:Lcom/android/launcher2/Folder;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    const/16 v1, 0x12

    .line 56
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->load(Landroid/database/Cursor;)V

    .line 57
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 58
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 68
    const-string v0, "sortMode"

    iget v1, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    return-void
.end method

.method public setFolderCache(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/launcher2/FolderInfo;->mFolderCache:Lcom/android/launcher2/Folder;

    .line 77
    return-void
.end method
