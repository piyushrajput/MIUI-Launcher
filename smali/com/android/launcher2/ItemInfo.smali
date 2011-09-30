.class public Lcom/android/launcher2/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public id:J

.field public isGesture:Z

.field public itemFlags:I

.field public itemType:I

.field public launchCount:I

.field public screenId:J

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 102
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 107
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 112
    iput v2, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 117
    iput v2, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 122
    iput v4, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 127
    iput v4, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 132
    iput v3, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    .line 137
    iput-boolean v3, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    .line 144
    return-void
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 185
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 187
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 189
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 190
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 193
    :goto_0
    return-object v3

    .line 191
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 192
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-static {p1}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 200
    .local v0, data:[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 202
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/launcher2/ItemInfo;
    .locals 2

    .prologue
    .line 217
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ItemInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 218
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 219
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/ItemInfo;->clone()Lcom/android/launcher2/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 150
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 151
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 152
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 153
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 154
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 155
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 156
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 157
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 158
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    .line 159
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->itemFlags:I

    .line 160
    return-void

    .line 151
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1

    .line 155
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_2
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 168
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    if-nez v0, :cond_0

    .line 170
    const-string v0, "container"

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v0, "screen"

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v0, "launchCount"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v0, "itemFlags"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onLaunch()V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method
