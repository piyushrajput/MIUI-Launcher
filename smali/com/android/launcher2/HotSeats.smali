.class public Lcom/android/launcher2/HotSeats;
.super Landroid/widget/LinearLayout;
.source "HotSeats.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;


# static fields
.field private static final PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDraggingItem:Lcom/android/launcher2/ItemInfo;

.field private mIsLoading:Z

.field private final mIsReplaceSupported:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mSavedSeats:[Lcom/android/launcher2/ItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    sput-object v0, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsReplaceSupported:Z

    .line 38
    new-array v0, v2, [Lcom/android/launcher2/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    .line 39
    new-array v0, v2, [Lcom/android/launcher2/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    .line 40
    iput-object p1, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HotSeats;->setDrawingCacheEnabled(Z)V

    .line 42
    return-void
.end method

.method private getSeatsCount()I
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 232
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    return v0
.end method

.method private getVisibleSeatsCount()I
    .locals 4

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return v0
.end method

.method private isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z
    .locals 8
    .parameter "x"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->getSeatsCount()I

    move-result v0

    .line 108
    .local v0, count:I
    mul-int v2, p1, v0

    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    sub-int v3, v0, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 109
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/android/launcher2/FolderInfo;

    if-eqz v2, :cond_0

    iget-wide v2, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, v6

    .line 113
    :goto_0
    return v2

    :cond_0
    move v2, v7

    goto :goto_0
.end method

.method private isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z
    .locals 5
    .parameter "source"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 98
    iget-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsReplaceSupported:Z

    if-eqz v1, :cond_2

    if-eq p1, p0, :cond_2

    move v0, v3

    .line 99
    .local v0, replaceSupported:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->getVisibleSeatsCount()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    :cond_0
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eq v1, v3, :cond_1

    iget v1, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_1
    move v1, v3

    :goto_1
    return v1

    .end local v0           #replaceSupported:Z
    :cond_2
    move v0, v4

    .line 98
    goto :goto_0

    .restart local v0       #replaceSupported:Z
    :cond_3
    move v1, v4

    .line 99
    goto :goto_1
.end method

.method private restoreSeats()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v1, v1, v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method private saveSeats()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/HotSeats;->saveSeats(Z)V

    .line 57
    return-void
.end method

.method private saveSeats(Z)V
    .locals 8
    .parameter "updateInDatabase"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    .line 61
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 65
    .local v1, currentPos:I
    const/4 v2, 0x0

    .line 66
    .local v2, savedPos:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 67
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v1

    sget-object v5, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    if-eq v4, v5, :cond_1

    .line 69
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    .line 70
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v2

    iput v2, v4, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string v4, "cellX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_2
    :goto_1
    if-ge v2, v6, :cond_3

    .line 81
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aput-object v7, v4, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_3
    const/4 v1, 0x0

    .line 86
    :goto_2
    if-ge v1, v6, :cond_4

    .line 87
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v1

    invoke-direct {p0, v1, v4}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_4
    return-void
.end method

.method private setSeat(ILcom/android/launcher2/ItemInfo;)V
    .locals 4
    .parameter "pos"
    .parameter "info"

    .prologue
    .line 254
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v3, v3, p1

    if-ne v3, p2, :cond_0

    .line 277
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aput-object p2, v3, p1

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HotSeatButton;

    .line 258
    .local v2, v:Lcom/android/launcher2/HotSeatButton;
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HotSeatButton;->unbind(Lcom/android/launcher2/DragController;)V

    .line 259
    if-eqz p2, :cond_2

    .line 260
    sget-object v3, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    if-eq p2, v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, p0, p2}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v0

    .line 262
    .local v0, icon:Lcom/android/launcher2/ItemIcon;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/launcher2/ItemIcon;->setCompactViewMode(Z)V

    .line 263
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/HotSeatButton;->bind(Lcom/android/launcher2/ItemIcon;Lcom/android/launcher2/DragController;)V

    .line 265
    .end local v0           #icon:Lcom/android/launcher2/ItemIcon;
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/launcher2/HotSeatButton;->setTag(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v2, p0}, Lcom/android/launcher2/HotSeatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    invoke-virtual {v2}, Lcom/android/launcher2/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 269
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 270
    invoke-virtual {v2, v1}, Lcom/android/launcher2/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 272
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 273
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 274
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 275
    invoke-virtual {v2, v1}, Lcom/android/launcher2/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setSeats(ILcom/android/launcher2/ItemInfo;)I
    .locals 12
    .parameter "x"
    .parameter "info"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    .line 147
    const/4 v4, -0x1

    .line 148
    .local v4, replacedPos:I
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->getVisibleSeatsCount()I

    move-result v1

    .line 150
    .local v1, count:I
    if-ne v1, v11, :cond_2

    .line 151
    mul-int v8, p1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getWidth()I

    move-result v9

    div-int/2addr v8, v9

    const/4 v9, 0x1

    sub-int v9, v1, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 188
    :cond_0
    :goto_0
    if-ltz v4, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->restoreSeats()V

    .line 190
    invoke-direct {p0, v4, p2}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 193
    :cond_1
    return v4

    .line 152
    :cond_2
    if-nez v1, :cond_3

    .line 153
    const/4 v4, 0x0

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getWidth()I

    move-result v8

    div-int v6, v8, v1

    .line 157
    .local v6, seatWidth:I
    iget-boolean v8, p0, Lcom/android/launcher2/HotSeats;->mIsReplaceSupported:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    if-nez v8, :cond_4

    const/16 v8, 0x24

    move v0, v8

    .line 159
    .local v0, buffer:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    add-int/lit8 v8, v1, 0x1

    if-ge v2, v8, :cond_0

    .line 160
    mul-int v8, v6, v2

    div-int/lit8 v9, v6, 0x2

    add-int v7, v8, v9

    .line 162
    .local v7, seatX:I
    if-ge v2, v1, :cond_5

    sub-int v8, p1, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v0, :cond_5

    .line 163
    move v4, v2

    .line 164
    goto :goto_0

    .end local v0           #buffer:I
    .end local v2           #i:I
    .end local v7           #seatX:I
    :cond_4
    move v0, v10

    .line 157
    goto :goto_1

    .line 167
    .restart local v0       #buffer:I
    .restart local v2       #i:I
    .restart local v7       #seatX:I
    :cond_5
    sub-int v8, v7, v6

    add-int/2addr v8, v0

    if-le p1, v8, :cond_8

    sub-int v8, v7, v0

    if-gt p1, v8, :cond_8

    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, pos:I
    const/4 v5, 0x0

    .line 170
    .local v5, savedPos:I
    :goto_3
    if-ge v3, v11, :cond_0

    .line 171
    if-ne v3, v2, :cond_6

    .line 172
    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 181
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 175
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    iget-object v9, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v9, v9, v5

    if-ne v8, v9, :cond_7

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 178
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v8, v8, v5

    invoke-direct {p0, v3, v8}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 159
    .end local v3           #pos:I
    .end local v5           #savedPos:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
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
    .line 94
    invoke-direct {p0, p1, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method findEmptySeat()I
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->isEmptySeat(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 330
    :goto_1
    return v1

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public finishBinding()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v0}, Lcom/android/launcher2/HotSeats;->saveSeats(Z)V

    .line 407
    iput-boolean v0, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    .line 408
    return-void
.end method

.method public getItemIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/ItemIcon;
    .locals 2
    .parameter "fi"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HotSeatButton;

    .line 390
    .local v0, btn:Lcom/android/launcher2/HotSeatButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HotSeatButton;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeatButton;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ItemIcon;

    move-object v1, p0

    .line 393
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isEmptySeat(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 321
    const/4 v0, 0x6

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 118
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 122
    invoke-direct {p0, p1, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, p2, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->restoreSeats()V

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 135
    invoke-direct {p0, p1, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-direct {p0, p2, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/HotSeats;->setSeats(ILcom/android/launcher2/ItemInfo;)I

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 13
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 199
    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HotSeats;->isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    const/4 v3, 0x0

    .line 227
    :goto_0
    return v3

    .line 203
    :cond_0
    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HotSeats;->setSeats(ILcom/android/launcher2/ItemInfo;)I

    move-result v12

    .line 204
    .local v12, replacedPos:I
    if-ltz v12, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v3, v3, v12

    move-object v11, v3

    .line 205
    .local v11, replaced:Lcom/android/launcher2/ItemInfo;
    :goto_1
    if-eqz v11, :cond_1

    .line 206
    move-object/from16 v0, p7

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-wide v3, v0

    iput-wide v3, v11, Lcom/android/launcher2/ItemInfo;->container:J

    .line 207
    move-object/from16 v0, p7

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->screenId:J

    move-wide v3, v0

    iput-wide v3, v11, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 208
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move v3, v0

    iput v3, v11, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 209
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v3, v0

    iput v3, v11, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->saveSeats()V

    .line 214
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    if-nez v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    const-wide/16 v5, -0x65

    const-wide/16 v7, 0x0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move v9, v0

    const/4 v10, 0x0

    move-object/from16 v4, p7

    invoke-static/range {v3 .. v10}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 218
    if-eqz v11, :cond_2

    .line 220
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    iget-wide v5, v11, Lcom/android/launcher2/ItemInfo;->container:J

    iget-wide v7, v11, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v9, v11, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v10, v11, Lcom/android/launcher2/ItemInfo;->cellY:I

    move-object v4, v11

    invoke-static/range {v3 .. v10}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 223
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    .line 227
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 204
    .end local v11           #replaced:Lcom/android/launcher2/ItemInfo;
    :cond_3
    const/4 v3, 0x0

    move-object v11, v3

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 1
    .parameter "target"
    .parameter "success"

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    .line 281
    if-nez p2, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->restoreSeats()V

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->saveSeats()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-boolean v0, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 317
    :goto_0
    return v0

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    .line 305
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    if-nez v0, :cond_1

    move v0, v1

    .line 306
    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    iget-boolean v0, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 311
    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    sget-object v1, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 317
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushItem(Lcom/android/launcher2/ItemInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 334
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->isEmptySeat(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->findEmptySeat()I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 337
    :cond_0
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    :cond_1
    move v0, v2

    .line 344
    :goto_0
    return v0

    .line 340
    :cond_2
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 341
    iget-boolean v0, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    if-nez v0, :cond_3

    .line 342
    invoke-direct {p0, v2}, Lcom/android/launcher2/HotSeats;->saveSeats(Z)V

    .line 344
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    const/4 v3, 0x0

    .line 369
    .local v3, removed:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 370
    .local v4, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x6

    if-ge v1, v5, :cond_0

    .line 371
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v5, v5, v1

    if-nez v5, :cond_2

    .line 370
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v5, v5, v1

    instance-of v5, v5, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_3

    .line 375
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v5, v5, v1

    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    iget-object v5, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 376
    .local v0, app:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    iget-object v5, v4, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 377
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 378
    const/4 v3, 0x1

    goto :goto_1

    .line 380
    .end local v0           #app:Landroid/content/ComponentName;
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v5, v5, v1

    instance-of v5, v5, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v5, :cond_1

    .line 381
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v5, v5, v1

    check-cast v5, Lcom/android/launcher2/UserFolderInfo;

    iget-object v6, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, p1, v6}, Lcom/android/launcher2/UserFolderInfo;->removeItems(Ljava/util/ArrayList;Lcom/android/launcher2/Launcher;)V

    goto :goto_1

    .line 385
    .end local v1           #i:I
    .end local v4           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotSeats;->saveSeats(Z)V

    .line 386
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    .line 297
    return-void
.end method

.method public setLaucher(Lcom/android/launcher2/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HotSeatButton;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/HotSeatButton;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 290
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HotSeatButton;

    invoke-virtual {v1}, Lcom/android/launcher2/HotSeatButton;->removeAllViewsInLayout()V

    .line 399
    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aput-object v2, v1, v0

    .line 400
    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aput-object v2, v1, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    .line 403
    return-void
.end method
