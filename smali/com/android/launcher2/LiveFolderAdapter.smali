.class Lcom/android/launcher2/LiveFolderAdapter;
.super Landroid/widget/CursorAdapter;
.source "LiveFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCustomIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsList:Z

.field private final mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/LiveFolderInfo;Landroid/database/Cursor;)V
    .locals 3
    .parameter "launcher"
    .parameter "info"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p3, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    .line 52
    iget v0, p2, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIsList:Z

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object p1, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startManagingCursor(Landroid/database/Cursor;)V

    .line 57
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "holder"

    .prologue
    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 134
    .local v3, data:[B
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    move v12, v0

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    .line 135
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    move v12, v0

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 138
    :cond_0
    if-eqz v3, :cond_4

    .line 139
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->id:J

    move-wide v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 140
    .local v8, reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v8, :cond_1

    .line 141
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 144
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez v4, :cond_3

    .line 145
    const/4 v12, 0x0

    array-length v13, v3

    invoke-static {v3, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 147
    .local v9, resampled:Landroid/graphics/Bitmap;
    if-eq v2, v9, :cond_2

    .line 149
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_2
    new-instance v4, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v4, v9}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->id:J

    move-wide v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-direct {v14, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    .end local v9           #resampled:Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    return-object v4

    .line 154
    :cond_4
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    move v12, v0

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    move v12, v0

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 155
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    move v12, v0

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, resource:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 157
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_3

    .line 159
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 160
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    move v12, v0

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 162
    .local v11, resources:Landroid/content/res/Resources;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, id:I
    new-instance v5, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher2/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v12, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 169
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 167
    .end local v6           #id:I
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v11           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v12

    goto :goto_0

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #id:I
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v11       #resources:Landroid/content/res/Resources;
    :catch_1
    move-exception v12

    move-object v4, v5

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method static query(Landroid/content/Context;Lcom/android/launcher2/LiveFolderInfo;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;

    .line 94
    .local v2, holder:Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->idIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->id:J

    .line 95
    invoke-direct {p0, p2, p3, v2}, Lcom/android/launcher2/LiveFolderAdapter;->loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 97
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget v5, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->nameIndex:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-boolean v4, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIsList:Z

    if-nez v4, :cond_0

    .line 100
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v3, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_0
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intentIndex:I

    if-eq v4, v9, :cond_6

    .line 121
    :try_start_0
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intentIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    return-void

    .line 102
    :cond_0
    if-eqz v3, :cond_2

    move v1, v10

    .line 103
    .local v1, hasIcon:Z
    :goto_2
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    if-eqz v1, :cond_1

    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    if-eq v4, v9, :cond_5

    .line 107
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 109
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0           #description:Ljava/lang/String;
    .end local v1           #hasIcon:Z
    :cond_2
    move v1, v6

    .line 102
    goto :goto_2

    .restart local v1       #hasIcon:Z
    :cond_3
    move v5, v7

    .line 103
    goto :goto_3

    .line 112
    .restart local v0       #description:Ljava/lang/String;
    :cond_4
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 115
    .end local v0           #description:Ljava/lang/String;
    :cond_5
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 126
    .end local v1           #hasIcon:Z
    :cond_6
    iput-boolean v10, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    goto :goto_1

    .line 122
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method cleanup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 178
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 180
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 182
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 183
    .local v4, icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 184
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 188
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher2/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 193
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 198
    :cond_3
    return-void

    .line 195
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    throw v5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 66
    new-instance v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;-><init>()V

    .line 68
    .local v0, holder:Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
    iget-boolean v2, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIsList:Z

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/launcher2/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    .end local p0
    .local v1, view:Landroid/view/View;
    :goto_0
    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 78
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->idIndex:I

    .line 79
    const-string v2, "name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->nameIndex:I

    .line 80
    const-string v2, "description"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    .line 81
    const-string v2, "intent"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intentIndex:I

    .line 82
    const-string v2, "icon_bitmap"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    .line 83
    const-string v2, "icon_resource"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    .line 84
    const-string v2, "icon_package"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    return-object v1

    .line 71
    .end local v1           #view:Landroid/view/View;
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    .restart local v1       #view:Landroid/view/View;
    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0
.end method
