.class public abstract Lcom/android/launcher2/ItemIcon;
.super Landroid/widget/FrameLayout;
.source "ItemIcon.java"

# interfaces
.implements Lcom/android/launcher2/ApplicationsMessage$IconMessage;


# instance fields
.field private mBackgroundId:I

.field protected mIcon:Landroid/widget/ImageView;

.field private mIconMargin:I

.field private mIsCompact:Z

.field private mMessage:Landroid/widget/TextView;

.field private mMessageMargin:I

.field private mShadow:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->setDrawingCacheEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ItemIcon;->mMessageMargin:I

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ItemIcon;->mIconMargin:I

    .line 41
    return-void
.end method

.method private createShadowBackground(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "width"
    .parameter "height"
    .parameter "src"

    .prologue
    const/4 v10, 0x0

    .line 68
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 69
    .local v4, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v1, dest:Landroid/graphics/Canvas;
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .local v0, blurPaint:Landroid/graphics/Paint;
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 73
    .local v3, offset:[I
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 74
    .local v6, shadowSize:F
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v6, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 75
    invoke-virtual {p3, v0, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 76
    .local v2, mask:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .local v5, shadowPaint:Landroid/graphics/Paint;
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 80
    aget v7, v3, v10

    int-to-float v7, v7

    add-float/2addr v7, v6

    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {v1, v2, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    return-object v4
.end method

.method private setBackground(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "backgroundId"

    .prologue
    .line 98
    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/ItemIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iput p2, p0, Lcom/android/launcher2/ItemIcon;->mBackgroundId:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    const v2, 0x10804ef

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher2/ItemIcon;->mBackgroundId:I

    return v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->isEmptyMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompact()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    return v0
.end method

.method public isEmptyMessage()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v6, 0x8

    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    iget-boolean v3, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_icon_shadow"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getMeasuredWidth()I

    move-result v2

    .line 143
    .local v2, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getMeasuredHeight()I

    move-result v0

    .line 144
    .local v0, height:I
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    .local v1, src:Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_1

    if-lez v2, :cond_1

    if-lez v0, :cond_1

    .line 147
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #src:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4}, Lcom/android/launcher2/ItemIcon;->createShadowBackground(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mTitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 54
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 55
    .local v0, iconWidth:I
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 56
    .local v2, messageWidth:I
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x46

    if-le v2, v3, :cond_0

    .line 58
    const/16 v2, 0x46

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 60
    :cond_0
    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/android/launcher2/ItemIcon;->mMessageMargin:I

    add-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/ItemIcon;->mMessageMargin:I

    invoke-virtual {v1, v3, v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 61
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/launcher2/ItemIcon;->mIconMargin:I

    int-to-float v4, v0

    const v5, 0x3daaaaab

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/ItemIcon;->mIconMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method public setCompactViewMode(Z)V
    .locals 2
    .parameter "isCompact"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    .line 168
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/ItemIcon;->setMessage(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 2
    .parameter "msg"
    .parameter "packageName"
    .parameter "backgroundId"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-direct {p0, p2, p3}, Lcom/android/launcher2/ItemIcon;->setBackground(Ljava/lang/String;I)V

    .line 95
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method
