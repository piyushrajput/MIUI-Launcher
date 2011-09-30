.class public Lcom/android/launcher2/LiveFolderIcon;
.super Landroid/widget/TextView;
.source "LiveFolderIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;
    .locals 6
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LiveFolderIcon;

    .line 39
    .local v1, icon:Lcom/android/launcher2/LiveFolderIcon;
    invoke-virtual {v1, p3}, Lcom/android/launcher2/LiveFolderIcon;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1, p1}, Lcom/android/launcher2/LiveFolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 43
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v0, p3, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 44
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 45
    const v3, 0x7f02006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    :cond_0
    new-instance v3, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v3, v0}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5, v3, v5, v5}, Lcom/android/launcher2/LiveFolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v3, p3, Lcom/android/launcher2/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/LiveFolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object v1
.end method
