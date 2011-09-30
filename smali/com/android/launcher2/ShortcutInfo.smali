.class Lcom/android/launcher2/ShortcutInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field mIconType:I

.field onExternalStorage:Z

.field title:Ljava/lang/CharSequence;

.field usingFallbackIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 106
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v0, componentName:Landroid/content/ComponentName;
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 111
    const/high16 v1, 0x1020

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 113
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 114
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "iconCache"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/Intent;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->load(Landroid/database/Cursor;)V

    .line 95
    iget-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 99
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadContactInfo(Landroid/content/Context;)V
    .locals 26
    .parameter "context"

    .prologue
    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 187
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 189
    .local v6, contactUri:Landroid/net/Uri;
    if-eqz v6, :cond_7

    .line 191
    const/16 v17, 0x0

    .line 193
    .local v17, cursor:Landroid/database/Cursor;
    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "display_name"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 194
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 204
    :try_start_1
    const-string v7, "photo"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 205
    .local v8, photoUri:Landroid/net/Uri;
    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "data15"

    aput-object v10, v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 206
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 207
    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 208
    .local v18, data:[B
    const/4 v7, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move v8, v0

    .end local v8           #photoUri:Landroid/net/Uri;
    const/4 v9, 0x0

    move-object/from16 v0, v18

    move v1, v7

    move v2, v8

    move-object v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .end local v18           #data:[B
    :cond_2
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v17           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    if-nez v7, :cond_4

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10803b5

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 227
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 228
    .local v19, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 229
    .local v16, coverWidth:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 230
    .local v15, coverHeight:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move v1, v7

    move v2, v8

    move/from16 v3, v16

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move v1, v15

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 234
    .local v13, bitmap:Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    .local v14, canvas:Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 238
    .local v22, padding:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 239
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    add-int/2addr v7, v8

    sub-int v16, v16, v7

    .line 240
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    add-int/2addr v7, v8

    sub-int/2addr v15, v7

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 244
    .local v24, photoWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 245
    .local v23, photoHeight:I
    move/from16 v0, v24

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v8, v0

    div-float/2addr v7, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move v8, v0

    int-to-float v9, v15

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 246
    .local v25, scale:F
    move/from16 v0, v24

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v8, v0

    mul-float v8, v8, v25

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v20, v0

    .line 247
    .local v20, offsetX:I
    move/from16 v0, v23

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v15

    mul-float v8, v8, v25

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v21, v0

    .line 250
    .local v21, offsetY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, v24, v20

    sub-int v10, v23, v21

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v10, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v12, v0

    add-int v12, v12, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .end local v16           #coverWidth:I
    add-int v15, v15, v16

    invoke-direct {v9, v10, v11, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v15           #coverHeight:I
    const/4 v10, 0x0

    invoke-virtual {v14, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 254
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 257
    return-void

    .line 198
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #canvas:Landroid/graphics/Canvas;
    .end local v19           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v20           #offsetX:I
    .end local v21           #offsetY:I
    .end local v22           #padding:Landroid/graphics/Rect;
    .end local v23           #photoHeight:I
    .end local v24           #photoWidth:I
    .end local v25           #scale:F
    .restart local v17       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v7

    .line 211
    :catchall_1
    move-exception v7

    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v7

    .line 215
    .end local v17           #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0056

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 216
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    const-string v4, "iconPackage"

    .line 151
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 153
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 154
    .local v0, titleStr:Ljava/lang/String;
    :goto_0
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 157
    .local v1, uri:Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "iconType"

    iget v3, p0, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-ne v2, v3, :cond_4

    .line 161
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/android/launcher2/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 176
    :cond_0
    :goto_2
    iget v2, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 178
    const-string v2, "iconPackage"

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    :goto_3
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_2
    move-object v0, v3

    .line 153
    goto :goto_0

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_3
    move-object v1, v3

    .line 156
    goto :goto_1

    .line 163
    .restart local v1       #uri:Ljava/lang/String;
    :cond_4
    iget v2, p0, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-nez v2, :cond_0

    .line 164
    iget-boolean v2, p0, Lcom/android/launcher2/ShortcutInfo;->onExternalStorage:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_5

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/android/launcher2/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "iconPackage"

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :cond_6
    const-string v2, "ShortcutInfo"

    const-string v3, "Application shortcut\'s intent or component is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 147
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 266
    invoke-super {p0}, Lcom/android/launcher2/ItemInfo;->unbind()V

    .line 267
    return-void
.end method

.method public wrapIconWithBorder(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 131
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Landroid/app/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
