.class Lcom/android/launcher2/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    .line 34
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 43
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 52
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 56
    return-void
.end method
