.class Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;
.super Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
.source "SimpleRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/SimpleRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetLayoutSize"
.end annotation


# static fields
.field public static final HEIGHT:I = 0x2

.field private static final TAG:I = 0x5

.field public static final WIDTH:I = 0x1


# instance fields
.field private mMode:I

.field private mValue:I

.field private mViewId:I

.field final synthetic this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;III)V
    .locals 0
    .parameter
    .parameter "viewId"
    .parameter "mode"
    .parameter "value"

    .prologue
    .line 97
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 98
    iput p2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mViewId:I

    .line 99
    iput p4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mValue:I

    .line 100
    iput p3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mMode:I

    .line 101
    return-void
.end method

.method public constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 103
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mViewId:I

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mMode:I

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mValue:I

    .line 107
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 4
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;
        }
    .end annotation

    .prologue
    .line 119
    iget v2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, target:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    .local v0, lps:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 123
    iget v2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mValue:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .end local v0           #lps:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 125
    .restart local v0       #lps:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mValue:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 110
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
