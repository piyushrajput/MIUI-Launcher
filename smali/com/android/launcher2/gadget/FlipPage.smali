.class public Lcom/android/launcher2/gadget/FlipPage;
.super Landroid/widget/FrameLayout;
.source "FlipPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/FlipPage$1;,
        Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;,
        Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;
    }
.end annotation


# static fields
.field private static FLIP_MATRIX_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_RESIDS:[Ljava/lang/String;

.field private static final PAGE_BACKGROUND:[Ljava/lang/String;


# instance fields
.field private mAnimation:Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

.field private mFlipMatrixArr:[Landroid/graphics/Matrix;

.field private mIsUpSide:Z

.field private mLeft:Landroid/widget/ImageView;

.field private mPageType:I

.field private mRight:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flip_up_0.png"

    aput-object v1, v0, v3

    const-string v1, "flip_down_0.png"

    aput-object v1, v0, v4

    const-string v1, "flip_up_1.png"

    aput-object v1, v0, v5

    const-string v1, "flip_down_1.png"

    aput-object v1, v0, v6

    const-string v1, "flip_up_2.png"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flip_down_2.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flip_up_3.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flip_down_3.png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flip_up_4.png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flip_down_4.png"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flip_up_5.png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flip_down_5.png"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flip_up_6.png"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flip_down_6.png"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "flip_up_7.png"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "flip_down_7.png"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flip_up_8.png"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "flip_down_8.png"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "flip_up_9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "flip_down_9.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/gadget/FlipPage;->NUM_RESIDS:[Ljava/lang/String;

    .line 44
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "flip_lu.9.png"

    aput-object v1, v0, v3

    const-string v1, "flip_ld.9.png"

    aput-object v1, v0, v4

    const-string v1, "flip_ru.9.png"

    aput-object v1, v0, v5

    const-string v1, "flip_rd.9.png"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/launcher2/gadget/FlipPage;->PAGE_BACKGROUND:[Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/gadget/FlipPage;->FLIP_MATRIX_CACHE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/gadget/FlipPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/launcher2/gadget/FlipPage;->mPageType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/gadget/FlipPage;)[Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipPage;->mFlipMatrixArr:[Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V
    .locals 7
    .parameter "cam"
    .parameter "matrix"
    .parameter "matOffset"
    .parameter "transX"
    .parameter "transY"
    .parameter "isOppo"

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Camera;->save()V

    .line 153
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    .local v1, m:Landroid/graphics/Matrix;
    const/high16 v3, 0x42b4

    if-eqz p5, :cond_0

    sub-int v4, v6, v0

    :goto_1
    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x4170

    div-float v2, v3, v4

    .line 155
    .local v2, r:F
    int-to-float v3, p3

    if-eqz p5, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 156
    invoke-virtual {p0, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 157
    neg-int v3, p3

    int-to-float v3, v3

    if-eqz p5, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 158
    invoke-virtual {p0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 159
    add-int v3, p2, v0

    aput-object v1, p1, v3

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Camera;->restore()V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v2           #r:F
    :cond_0
    add-int/lit8 v4, v0, 0x1

    neg-int v4, v4

    goto :goto_1

    .line 155
    .restart local v2       #r:F
    :cond_1
    neg-int v4, p4

    int-to-float v4, v4

    goto :goto_2

    .line 157
    :cond_2
    int-to-float v4, p4

    goto :goto_3

    .line 162
    .end local v1           #m:Landroid/graphics/Matrix;
    .end local v2           #r:F
    :cond_3
    return-void
.end method

.method private static getFlipMatrixArr(II)[Landroid/graphics/Matrix;
    .locals 12
    .parameter "w"
    .parameter "h"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, key:Ljava/lang/String;
    sget-object v0, Lcom/android/launcher2/gadget/FlipPage;->FLIP_MATRIX_CACHE:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;

    .line 132
    .local v0, wrap:Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;
    if-eqz v0, :cond_0

    .line 133
    iget-object p0, v0, Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;->mMatrixArr:[Landroid/graphics/Matrix;

    .line 146
    .end local v0           #wrap:Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 136
    .restart local v0       #wrap:Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;
    .restart local p0
    .restart local p1
    :cond_0
    const/16 v0, 0x3c

    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 137
    .end local v0           #wrap:Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;
    .local v1, matrixArr:[Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 138
    .local v0, cam:Landroid/graphics/Camera;
    div-int/lit8 v3, p0, 0x2

    .line 139
    .local v3, transX:I
    move v4, p1

    .line 140
    .local v4, transY:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 141
    const/16 v2, 0xf

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 142
    const/16 v7, 0x1e

    neg-int v8, v3

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v1

    move v9, v4

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 143
    const/16 v7, 0x2d

    neg-int v8, v3

    const/4 v10, 0x1

    move-object v5, v0

    move-object v6, v1

    move v9, v4

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 144
    sget-object p0, Lcom/android/launcher2/gadget/FlipPage;->FLIP_MATRIX_CACHE:Ljava/util/HashMap;

    .end local p0
    new-instance p1, Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;

    .end local p1
    invoke-direct {p1, v1}, Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;-><init>([Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v11, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    .line 146
    goto :goto_0
.end method

.method private setupAnimation(I)V
    .locals 5
    .parameter "flipDelay"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FlipPage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 82
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FlipPage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 83
    .local v0, h:I
    invoke-static {v1, v0}, Lcom/android/launcher2/gadget/FlipPage;->getFlipMatrixArr(II)[Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/FlipPage;->mFlipMatrixArr:[Landroid/graphics/Matrix;

    .line 84
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage;->mAnimation:Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;-><init>(Lcom/android/launcher2/gadget/FlipPage;Lcom/android/launcher2/gadget/FlipPage$1;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/FlipPage;->mAnimation:Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

    .line 86
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage;->mAnimation:Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->setDuration(J)V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage;->mAnimation:Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->setStartOffset(J)V

    .line 89
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage;->mAnimation:Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

    iget-boolean v3, p0, Lcom/android/launcher2/gadget/FlipPage;->mIsUpSide:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage;->mAnimation:Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/FlipPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 91
    return-void

    .line 89
    :cond_1
    new-instance v3, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v3}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/miui/android/screenelement/ResourceManager;IIIII)V
    .locals 6
    .parameter "rm"
    .parameter "pageType"
    .parameter "number"
    .parameter "dist"
    .parameter "offset"
    .parameter "flipDelay"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/gadget/FlipPage;->PAGE_BACKGROUND:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {p1, v1, v2}, Lcom/miui/android/screenelement/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/gadget/FlipPage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iput p2, p0, Lcom/android/launcher2/gadget/FlipPage;->mPageType:I

    .line 96
    iget v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mPageType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mPageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mIsUpSide:Z

    .line 97
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mIsUpSide:Z

    if-eqz v1, :cond_3

    move v0, v4

    .line 98
    .local v0, side:I
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mLeft:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/launcher2/gadget/FlipPage;->NUM_RESIDS:[Ljava/lang/String;

    div-int/lit8 v3, p3, 0xa

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/miui/android/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mRight:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/launcher2/gadget/FlipPage;->NUM_RESIDS:[Ljava/lang/String;

    rem-int/lit8 v3, p3, 0xa

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/miui/android/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/FlipPage;->mIsUpSide:Z

    if-eqz v1, :cond_5

    .line 101
    if-ne p5, p4, :cond_4

    move v1, v4

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/gadget/FlipPage;->setVisibility(I)V

    .line 102
    if-eq p5, p4, :cond_1

    .line 103
    add-int/lit8 v1, p5, 0x1

    mul-int/2addr v1, p6

    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FlipPage;->setupAnimation(I)V

    .line 111
    :cond_1
    :goto_3
    return-void

    .end local v0           #side:I
    :cond_2
    move v1, v4

    .line 96
    goto :goto_0

    :cond_3
    move v0, v3

    .line 97
    goto :goto_1

    .restart local v0       #side:I
    :cond_4
    move v1, v5

    .line 101
    goto :goto_2

    .line 106
    :cond_5
    if-eqz p5, :cond_6

    if-ne p4, p5, :cond_7

    :cond_6
    move v1, v4

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/launcher2/gadget/FlipPage;->setVisibility(I)V

    .line 107
    if-eqz p5, :cond_1

    .line 108
    mul-int v1, p5, p6

    add-int/lit16 v1, v1, 0xc8

    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FlipPage;->setupAnimation(I)V

    goto :goto_3

    :cond_7
    move v1, v5

    .line 106
    goto :goto_4
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FlipPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipPage;->mLeft:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FlipPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipPage;->mRight:Landroid/widget/ImageView;

    .line 117
    return-void
.end method
