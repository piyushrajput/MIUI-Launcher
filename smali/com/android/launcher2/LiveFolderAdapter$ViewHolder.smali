.class Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LiveFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LiveFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field descriptionIndex:I

.field icon:Landroid/widget/ImageView;

.field iconBitmapIndex:I

.field iconPackageIndex:I

.field iconResourceIndex:I

.field id:J

.field idIndex:I

.field intent:Landroid/content/Intent;

.field intentIndex:I

.field name:Landroid/widget/TextView;

.field nameIndex:I

.field useBaseIntent:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput v0, p0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    .line 212
    iput v0, p0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intentIndex:I

    .line 213
    iput v0, p0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    .line 214
    iput v0, p0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    .line 215
    iput v0, p0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    return-void
.end method
