.class public Lcom/android/launcher2/WorkspaceThumbnailView;
.super Lcom/android/launcher2/ThumbnailView;
.source "WorkspaceThumbnailView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/WorkspaceThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->enableThumbnailPositionChanging(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceThumbnailView;->finishCurrentGesture()V

    .line 127
    iget v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ThumbnailScreen;

    .line 128
    .local v0, screen:Lcom/android/launcher2/ThumbnailScreen;
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/ThumbnailScreen;->getThumbnailIndex(II)I

    move-result v1

    .line 131
    .local v1, thumbnailIndex:I
    if-ltz v1, :cond_0

    .line 132
    iget v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    iget v3, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mCurrentScreen:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 133
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v2}, Lcom/android/launcher2/ThumbnailViewAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/ThumbnailViewAdapter;->onThumbnailClick(I)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/ThumbnailView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 139
    return-void
.end method

.method protected startDeletedAnimation(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceThumbnailView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ThumbnailScreen;

    .line 118
    .local v0, screen:Lcom/android/launcher2/ThumbnailScreen;
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    rem-int v2, p1, v2

    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/ThumbnailScreen;->startMovingAnimation(III)V

    .line 122
    return-void
.end method

.method protected startSwitchingAnimation(Z)V
    .locals 27
    .parameter "entering"

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    move v6, v0

    rem-int v18, v5, v6

    .line 64
    .local v18, focusedThumbnailPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/ThumbnailScreen;

    .line 65
    .local v14, currentScreen:Lcom/android/launcher2/ThumbnailScreen;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAnimationDuration:I

    move v5, v0

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    move-object v6, v0

    :goto_0
    move-object v0, v14

    move/from16 v1, p1

    move v2, v5

    move/from16 v3, v18

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/ThumbnailScreen;->startSwitchingAnimation(ZIILandroid/view/animation/Animation$AnimationListener;)V

    .line 72
    if-eqz p1, :cond_2

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v19, v5

    .line 79
    .local v19, interpolator:Landroid/view/animation/Interpolator;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/launcher2/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v20

    .line 80
    .local v20, sourceView:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 82
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v13, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 83
    .local v13, animation:Landroid/view/animation/AnimationSet;
    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 84
    .local v17, focusedThumbnail:Landroid/view/View;
    const v5, 0x7f070052

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 85
    .local v21, thumbnail:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v26

    .line 86
    .local v26, thumbnailTop:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 87
    .local v22, thumbnailLeft:I
    if-nez v21, :cond_3

    const/4 v5, 0x0

    move/from16 v25, v5

    .line 88
    .local v25, thumbnailPaddingTop:I
    :goto_2
    if-nez v21, :cond_4

    const/4 v5, 0x0

    move/from16 v23, v5

    .line 89
    .local v23, thumbnailPaddingLeft:I
    :goto_3
    if-nez v21, :cond_5

    const/4 v5, 0x0

    move/from16 v24, v5

    .line 90
    .local v24, thumbnailPaddingRight:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailWidth:I

    move v5, v0

    sub-int v5, v5, v23

    sub-int v5, v5, v24

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceThumbnailView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v7, v5, v6

    .line 92
    .local v7, scaleRatio:F
    if-eqz p1, :cond_6

    .line 93
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v7

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    :goto_5
    move/from16 v0, v22

    int-to-float v0, v0

    move v15, v0

    .line 100
    .local v15, deltaX:F
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v16, v0

    .line 101
    .local v16, deltaY:F
    if-eqz p1, :cond_7

    .line 102
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move v7, v0

    add-float/2addr v7, v15

    const/4 v8, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move v9, v0

    add-float v9, v9, v16

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .end local v7           #scaleRatio:F
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAnimationDuration:I

    move v5, v0

    int-to-long v5, v5

    invoke-virtual {v13, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 111
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 112
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    .end local v13           #animation:Landroid/view/animation/AnimationSet;
    .end local v15           #deltaX:F
    .end local v16           #deltaY:F
    .end local v17           #focusedThumbnail:Landroid/view/View;
    .end local v21           #thumbnail:Landroid/view/View;
    .end local v22           #thumbnailLeft:I
    .end local v23           #thumbnailPaddingLeft:I
    .end local v24           #thumbnailPaddingRight:I
    .end local v25           #thumbnailPaddingTop:I
    .end local v26           #thumbnailTop:I
    :cond_0
    return-void

    .line 65
    .end local v19           #interpolator:Landroid/view/animation/Interpolator;
    .end local v20           #sourceView:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    move-object v6, v0

    goto/16 :goto_0

    .line 72
    :cond_2
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v19, v5

    goto/16 :goto_1

    .line 87
    .restart local v13       #animation:Landroid/view/animation/AnimationSet;
    .restart local v17       #focusedThumbnail:Landroid/view/View;
    .restart local v19       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v20       #sourceView:Landroid/view/View;
    .restart local v21       #thumbnail:Landroid/view/View;
    .restart local v22       #thumbnailLeft:I
    .restart local v26       #thumbnailTop:I
    :cond_3
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    move/from16 v25, v5

    goto :goto_2

    .line 88
    .restart local v25       #thumbnailPaddingTop:I
    :cond_4
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    move/from16 v23, v5

    goto :goto_3

    .line 89
    .restart local v23       #thumbnailPaddingLeft:I
    :cond_5
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    move/from16 v24, v5

    goto :goto_4

    .line 96
    .restart local v7       #scaleRatio:F
    .restart local v24       #thumbnailPaddingRight:I
    :cond_6
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f80

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v7

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 106
    .restart local v15       #deltaX:F
    .restart local v16       #deltaY:F
    :cond_7
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v6, v15

    const/4 v7, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move v8, v0

    add-float v8, v8, v16

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .end local v7           #scaleRatio:F
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6
.end method
