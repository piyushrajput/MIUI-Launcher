.class public Lcom/android/launcher2/FolderIcon;
.super Lcom/android/launcher2/ItemIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mCover:Landroid/widget/ImageView;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInfo:Lcom/android/launcher2/UserFolderInfo;

.field private mItemIcons:[Landroid/widget/ImageView;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPreviewIconContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 47
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIcon;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 48
    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 4
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 68
    .local v0, icon:Lcom/android/launcher2/FolderIcon;
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v2, v0, Lcom/android/launcher2/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v2, p3, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, p3}, Lcom/android/launcher2/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 73
    iput-object p3, v0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    .line 74
    iput-object p1, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 76
    return-object v0
.end method

.method private isDropable(Lcom/android/launcher2/ItemInfo;)Z
    .locals 5
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x1

    .line 134
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/UserFolderInfo;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-boolean v0, v0, Lcom/android/launcher2/UserFolderInfo;->opened:Z

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 130
    invoke-direct {p0, p7}, Lcom/android/launcher2/FolderIcon;->isDropable(Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mLeft:I

    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mTop:I

    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mLeft:I

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/FolderIcon;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    return-void
.end method

.method loadItemIcons()V
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/UserFolderInfo;->count()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 88
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 175
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 151
    invoke-direct {p0, p7}, Lcom/android/launcher2/FolderIcon;->isDropable(Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 155
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 165
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 159
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x0

    .line 142
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v2, v0

    .line 143
    .local v2, item:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 144
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/UserFolderInfo;->id:J

    const-wide/16 v5, 0x0

    move v8, v7

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 146
    const/4 v1, 0x1

    return v1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/launcher2/ItemIcon;->onFinishInflate()V

    .line 53
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const v9, 0x3f428f5c

    const/4 v8, 0x0

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/ItemIcon;->onMeasure(II)V

    .line 99
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 101
    .local v1, iconWidth:I
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .local v4, lpPreview:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .local v3, lpIcon:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    .local v2, lpCover:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 105
    .local v0, containerTopMargin:I
    int-to-float v5, v1

    const v6, 0x3e051eb8

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v0, v5

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->isCompact()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    sparse-switch v1, :sswitch_data_0

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {v4, v8, v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    int-to-float v6, v1

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    int-to-float v7, v1

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    .line 124
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v8, v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void

    .line 109
    :sswitch_0
    const/16 v0, 0x12

    .line 110
    goto :goto_0

    .line 112
    :sswitch_1
    const/16 v0, 0x13

    .line 113
    goto :goto_0

    .line 115
    :sswitch_2
    const/16 v0, 0x17

    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 170
    return-void
.end method
