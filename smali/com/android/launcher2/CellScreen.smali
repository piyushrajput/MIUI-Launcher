.class public Lcom/android/launcher2/CellScreen;
.super Landroid/widget/FrameLayout;
.source "CellScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/DragController$TouchTranslator;


# instance fields
.field private mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBackground:Landroid/widget/ImageView;

.field private mBackgroundContainer:Landroid/widget/FrameLayout;

.field private mBgCenterEnter:Landroid/view/animation/Animation;

.field private mBgCenterExit:Landroid/view/animation/Animation;

.field private mBgLeftEnter:Landroid/view/animation/Animation;

.field private mBgLeftExit:Landroid/view/animation/Animation;

.field private mBgRightEnter:Landroid/view/animation/Animation;

.field private mBgRightExit:Landroid/view/animation/Animation;

.field private mCellCenterEnter:Landroid/view/animation/Animation;

.field private mCellCenterExit:Landroid/view/animation/Animation;

.field private mCellLayout:Lcom/android/launcher2/CellLayout;

.field private mCellLeftEnter:Landroid/view/animation/Animation;

.field private mCellLeftExit:Landroid/view/animation/Animation;

.field private mCellOthersEnter:Landroid/view/animation/Animation;

.field private mCellRightEnter:Landroid/view/animation/Animation;

.field private mCellRightExit:Landroid/view/animation/Animation;

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mDisableDrawingCacheTemporary:Z

.field private mDrawingCacheHolder:Landroid/graphics/Bitmap;

.field private mEditingPreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableDrawingCacheHolding:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mInEditing:Z

.field private mIsEditingNewScreenMode:Z

.field private mNewButton:Landroid/widget/ImageView;

.field private mTranslateXY:[F

.field private mWorkspacePreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v1, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/launcher2/CellScreen;->mIsEditingNewScreenMode:Z

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    .line 126
    new-instance v0, Lcom/android/launcher2/CellScreen$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellScreen$1;-><init>(Lcom/android/launcher2/CellScreen;)V

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

    .line 246
    iput-object v3, p0, Lcom/android/launcher2/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    .line 247
    iput-object v3, p0, Lcom/android/launcher2/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    .line 286
    iput-boolean v1, p0, Lcom/android/launcher2/CellScreen;->mDisableDrawingCacheTemporary:Z

    .line 291
    iput-object v3, p0, Lcom/android/launcher2/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 292
    iput-boolean v2, p0, Lcom/android/launcher2/CellScreen;->mEnableDrawingCacheHolding:Z

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellScreen;->setWholeAnimationCacheEnabled(Z)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CellScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellScreen;)Lcom/android/launcher2/CellLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method


# virtual methods
.method public clearDragStatus()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->isEditingNewScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mNewButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->cancelInPlaceMovement()V

    .line 242
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearCellBackground()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v3

    .line 100
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v4

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->translateTouch([F)V

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/view/MotionEvent;->addBatch(JFFFFI)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCellLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "autoScale"

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mDisableDrawingCacheTemporary:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 310
    :goto_0
    return-object v0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mEnableDrawingCacheHolding:Z

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->isDrawCacheValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 307
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 310
    goto :goto_0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 262
    const v0, 0x7f070002

    if-ne p1, v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 267
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    const v0, 0x7f070003

    if-ne p1, v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z
    .locals 9
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    .line 230
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    aput v2, v0, v1

    .line 231
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->translateTouch([F)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->updateVision()V

    .line 274
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    aput v2, p1, v0

    aput v2, p1, v2

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 278
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public isEditingNewScreenMode()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mIsEditingNewScreenMode:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 117
    .local v0, vp:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 119
    check-cast v0, Lcom/android/launcher2/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->deleteScreen(J)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v0       #vp:Landroid/view/ViewParent;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mNewButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 121
    check-cast v0, Lcom/android/launcher2/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->insertNewScreen(I)V

    goto :goto_0
.end method

.method onDragOver(IIIILcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->isEditingNewScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mNewButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    int-to-float v1, p1

    aput v1, v0, v2

    .line 220
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    int-to-float v1, p2

    aput v1, v0, v3

    .line 221
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->translateTouch([F)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher2/CellScreen;->mTranslateXY:[F

    aget v2, v2, v3

    float-to-int v2, v2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->onDragOver(IIIILcom/android/launcher2/ItemInfo;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    .line 57
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    .line 58
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBackground:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mNewButton:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mNewButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellCenterEnter:Landroid/view/animation/Animation;

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellCenterExit:Landroid/view/animation/Animation;

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellCenterExit:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLeftEnter:Landroid/view/animation/Animation;

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLeftExit:Landroid/view/animation/Animation;

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellRightEnter:Landroid/view/animation/Animation;

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellRightExit:Landroid/view/animation/Animation;

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBgCenterEnter:Landroid/view/animation/Animation;

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mBgCenterEnter:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBgCenterExit:Landroid/view/animation/Animation;

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBgLeftEnter:Landroid/view/animation/Animation;

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBgLeftExit:Landroid/view/animation/Animation;

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBgRightEnter:Landroid/view/animation/Animation;

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mBgRightExit:Landroid/view/animation/Animation;

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mFadeIn:Landroid/view/animation/Animation;

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mFadeOut:Landroid/view/animation/Animation;

    .line 80
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->isEditingNewScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setDisableTouch(Z)V

    .line 111
    return v2

    :cond_1
    move v1, v2

    .line 110
    goto :goto_0
.end method

.method public setEditMode(ZI)V
    .locals 3
    .parameter "isEditing"
    .parameter "curDist"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    iput-boolean p1, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setEditMode(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->updateLayout()V

    .line 172
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 173
    packed-switch p2, :pswitch_data_0

    .line 195
    if-eqz p1, :cond_5

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    :goto_1
    return-void

    .line 172
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mCellCenterEnter:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mBgCenterEnter:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mCellCenterExit:Landroid/view/animation/Animation;

    goto :goto_2

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mBgCenterExit:Landroid/view/animation/Animation;

    goto :goto_3

    .line 179
    :pswitch_1
    if-eqz p1, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mBgLeftEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearAnimation()V

    goto :goto_1

    .line 187
    :pswitch_2
    if-eqz p1, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mBgRightEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearAnimation()V

    goto :goto_1

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearAnimation()V

    goto :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEditingNewScreenMode()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mBackground:Landroid/widget/ImageView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mNewButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setScreenId(J)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mIsEditingNewScreenMode:Z

    .line 213
    return-void
.end method

.method public setEnableDrawingCacheHolding(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/android/launcher2/CellScreen;->mEnableDrawingCacheHolding:Z

    .line 315
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mEnableDrawingCacheHolding:Z

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 318
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 150
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 251
    const v0, 0x7f070002

    if-ne p1, v0, :cond_1

    .line 252
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    .line 258
    :goto_1
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_1
    const v0, 0x7f070003

    if-ne p1, v0, :cond_3

    .line 254
    if-nez p2, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/launcher2/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 256
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public translateTouch([F)V
    .locals 5
    .parameter "translateXY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x4248

    const v1, 0x3f9c28f6

    .line 90
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 91
    aget v0, p1, v3

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    aput v0, p1, v3

    .line 92
    aget v0, p1, v4

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    aput v0, p1, v4

    .line 94
    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/launcher2/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher2/CellScreen;->isEditingNewScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearCellBackground()V

    .line 163
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher2/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/CellScreen;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method updateVision()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 282
    const v0, 0x7f070004

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 283
    const v0, 0x7f070005

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 284
    return-void
.end method
