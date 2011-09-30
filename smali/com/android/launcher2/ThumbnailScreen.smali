.class public Lcom/android/launcher2/ThumbnailScreen;
.super Landroid/view/ViewGroup;
.source "ThumbnailScreen.java"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mChildHeight:I

.field protected mChildWidth:I

.field protected mColumnCount:I

.field private mFoucsedThumbnail:Landroid/view/View;

.field private mLastestMoveIndex:I

.field private mLastestMoveTime:J

.field protected mMaxChildrenCount:I

.field private mMovingAnimationStarted:Z

.field protected mOrderThumbnailInRowFirst:Z

.field protected mRowCount:I

.field protected mScreenMarginLeft:I

.field protected mScreenMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 3
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "orderThumbnailInRowFirst"

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 39
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    .line 40
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    .line 41
    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    .line 42
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    .line 43
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    .line 44
    iput-boolean p6, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ThumbnailScreen;->setDrawingCacheEnabled(Z)V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/ThumbnailScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    return p1
.end method

.method private convertToColumnIndex(I)I
    .locals 3
    .parameter "rawIndex"

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    rem-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    div-int v1, p1, v1

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    div-int v0, p1, v0

    goto :goto_0
.end method

.method private convertToRawIndex(II)I
    .locals 1
    .parameter "rowIndex"
    .parameter "columnIndex"

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private convertToRowIndex(I)I
    .locals 2
    .parameter "rawIndex"

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    div-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    rem-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    rem-int v0, p1, v0

    goto :goto_0
.end method

.method private getPositionIndex(II)I
    .locals 7
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 307
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    sub-int/2addr p1, v2

    .line 308
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    sub-int/2addr p2, v2

    .line 310
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    div-int v1, p2, v2

    .line 311
    .local v1, rowIndex:I
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    div-int v0, p1, v2

    .line 314
    .local v0, columnIndex:I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    if-lt v1, v2, :cond_1

    .line 315
    :cond_0
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    sub-int/2addr v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    .line 326
    :goto_0
    return v2

    .line 323
    :cond_1
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    rem-int v2, p1, v2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 324
    :cond_2
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    rem-int v2, p2, v2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 326
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    if-lt v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScreenViewItem only support %d children."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method public getThumbnailIndex(II)I
    .locals 5
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    .line 294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v0, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 297
    .local v2, thumbnail:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 302
    .end local v2           #thumbnail:Landroid/view/View;
    :goto_1
    return v3

    .line 295
    .restart local v2       #thumbnail:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 302
    .end local v2           #thumbnail:Landroid/view/View;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isMovingAnimationStarted()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    return v0
.end method

.method protected layoutChildByIndex(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v1

    .line 62
    .local v1, rowIndex:I
    invoke-direct {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v0

    .line 64
    .local v0, columnIndex:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    iget v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    add-int/lit8 v7, v0, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    iget v7, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    add-int/lit8 v8, v1, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 69
    return-void
.end method

.method public moveThumbnail(III)V
    .locals 6
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 210
    if-eq p2, p3, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 211
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 216
    .local v2, movingTarget:Landroid/view/View;
    invoke-virtual {p0, p2, v4}, Lcom/android/launcher2/ThumbnailScreen;->removeViewsInLayout(II)V

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, p3, v3, v4}, Lcom/android/launcher2/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 218
    if-ge p2, p3, :cond_1

    move v0, v4

    .line 219
    .local v0, direction:I
    :goto_1
    move v1, p2

    :goto_2
    if-eq v1, p3, :cond_2

    .line 220
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 219
    add-int/2addr v1, v0

    goto :goto_2

    .end local v0           #direction:I
    :cond_1
    move v0, v5

    .line 218
    goto :goto_1

    .line 223
    .restart local v0       #direction:I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/ThumbnailScreen;->startMovingAnimation(III)V

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->invalidate()V

    .line 225
    iput v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    .line 227
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v2           #movingTarget:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public moveThumbnailInto(ZLcom/android/launcher2/ThumbnailScreen;I)I
    .locals 5
    .parameter "isMovingToRight"
    .parameter "fromScreen"
    .parameter "fromThumbnail"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-virtual {p2, p3}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, dragingThumbnail:Landroid/view/View;
    invoke-virtual {p2, v0}, Lcom/android/launcher2/ThumbnailScreen;->removeView(Landroid/view/View;)V

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p0, v3}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, thumbnail:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 275
    invoke-virtual {p2, v1}, Lcom/android/launcher2/ThumbnailScreen;->addView(Landroid/view/View;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/android/launcher2/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move v2, v3

    .line 286
    :goto_0
    return v2

    .line 279
    .end local v1           #thumbnail:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 280
    .restart local v1       #thumbnail:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 281
    invoke-virtual {p2, v1, v3}, Lcom/android/launcher2/ThumbnailScreen;->addView(Landroid/view/View;I)V

    .line 282
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/launcher2/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_0
.end method

.method public moveThumbnailTo(IIII)I
    .locals 6
    .parameter "duration"
    .parameter "lastestPosistion"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 230
    invoke-direct {p0, p3, p4}, Lcom/android/launcher2/ThumbnailScreen;->getPositionIndex(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 231
    .local v1, newPosition:I
    if-gez v1, :cond_0

    .line 232
    move v1, p2

    .line 236
    :cond_0
    if-eq v1, p2, :cond_2

    .line 237
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    if-eq v2, v1, :cond_3

    .line 238
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveTime:J

    .line 239
    iput v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    .line 240
    move v1, p2

    .line 247
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/ThumbnailScreen;->moveThumbnail(III)V

    .line 249
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    .line 250
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p4, v2

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, movingTarget:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {v0, p3, p4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->invalidate()V

    .line 256
    return v1

    .line 242
    .end local v0           #movingTarget:Landroid/view/View;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 243
    move v1, p2

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 154
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationStart()V

    .line 143
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 149
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v0

    .line 74
    .local v0, count:I
    if-nez v0, :cond_1

    .line 84
    :cond_0
    return-void

    .line 77
    :cond_1
    sub-int v2, p4, p2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    .line 78
    sub-int v2, p5, p3

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->setMeasuredDimension(II)V

    .line 55
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->measureChildren(II)V

    .line 58
    return-void
.end method

.method public resetThumbnailLayout(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 291
    return-void
.end method

.method public startMovingAnimation(III)V
    .locals 11
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 178
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 180
    .local v2, interpolator:Landroid/view/animation/Interpolator;
    if-ge p2, p3, :cond_0

    move v0, v10

    .line 181
    .local v0, direction:I
    :goto_0
    const/4 v4, 0x0

    .line 182
    .local v4, v:Landroid/view/View;
    move v1, p2

    .local v1, i:I
    :goto_1
    if-eq v1, p3, :cond_1

    .line 183
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    add-int v6, v1, v0

    invoke-direct {p0, v6}, Lcom/android/launcher2/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    add-int v7, v1, v0

    invoke-direct {p0, v7}, Lcom/android/launcher2/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v3, v5, v9, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 186
    .local v3, tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    int-to-long v5, p1

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 187
    invoke-virtual {v3, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    sub-int v5, v1, p3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    add-int/2addr v1, v0

    goto :goto_1

    .line 180
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v3           #tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v4           #v:Landroid/view/View;
    :cond_0
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 194
    .restart local v0       #direction:I
    .restart local v1       #i:I
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    if-eqz v4, :cond_2

    .line 195
    iput-boolean v10, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 196
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/ThumbnailScreen$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/ThumbnailScreen$1;-><init>(Lcom/android/launcher2/ThumbnailScreen;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    :cond_2
    return-void
.end method

.method public startSwitchingAnimation(ZIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 15
    .parameter "entering"
    .parameter "duration"
    .parameter "focusedIndex"
    .parameter "animationListener"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v12, v5

    .line 107
    .local v12, interpolator:Landroid/view/animation/Interpolator;
    :goto_0
    move-object v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    .line 108
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    iget v7, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    int-to-float v13, v5

    .line 112
    .local v13, scaleRatio:F
    if-eqz p1, :cond_1

    move v3, v13

    .line 113
    .local v3, fromRatio:F
    :goto_1
    if-eqz p1, :cond_2

    const/high16 v5, 0x3f80

    move v4, v5

    .line 114
    .local v4, toRatio:F
    :goto_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    move v5, v3

    move v6, v4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 120
    .local v2, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    iget-object v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v13

    iget-object v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v10, v5, v6

    .line 121
    .local v10, deltaX:F
    iget-object v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v11, v5, v13

    .line 122
    .local v11, deltaY:F
    if-eqz p1, :cond_3

    .line 123
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v14, v10, v5, v11, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 130
    .local v14, translateAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_3
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 131
    .local v9, animation:Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 132
    invoke-virtual {v9, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 133
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v5, v0

    invoke-virtual {v9, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 134
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    invoke-virtual {p0, v9}, Lcom/android/launcher2/ThumbnailScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    return-void

    .line 104
    .end local v2           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v3           #fromRatio:F
    .end local v4           #toRatio:F
    .end local v9           #animation:Landroid/view/animation/AnimationSet;
    .end local v10           #deltaX:F
    .end local v11           #deltaY:F
    .end local v12           #interpolator:Landroid/view/animation/Interpolator;
    .end local v13           #scaleRatio:F
    .end local v14           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v12, v5

    goto :goto_0

    .line 112
    .restart local v12       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v13       #scaleRatio:F
    :cond_1
    const/high16 v5, 0x3f80

    move v3, v5

    goto :goto_1

    .restart local v3       #fromRatio:F
    :cond_2
    move v4, v13

    .line 113
    goto :goto_2

    .line 126
    .restart local v2       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .restart local v4       #toRatio:F
    .restart local v10       #deltaX:F
    .restart local v11       #deltaY:F
    :cond_3
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v14, v5, v10, v6, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v14       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    goto :goto_3
.end method
