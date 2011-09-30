.class Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;
.super Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
.source "SimpleRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/SimpleRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableParameters"
.end annotation


# static fields
.field public static final TAG:I = 0x3


# instance fields
.field alpha:I

.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field level:I

.field targetBackground:Z

.field final synthetic this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 146
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 147
    iput p2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->viewId:I

    .line 148
    iput-boolean p3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 149
    iput p4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->alpha:I

    .line 150
    iput p5, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->colorFilter:I

    .line 151
    iput-object p6, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 152
    iput p7, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->level:I

    .line 153
    return-void
.end method

.method public constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V
    .locals 4
    .parameter
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->viewId:I

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->alpha:I

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->colorFilter:I

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 161
    .local v0, hasMode:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 166
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->level:I

    .line 167
    return-void

    .end local v0           #hasMode:Z
    :cond_0
    move v1, v2

    .line 157
    goto :goto_0

    :cond_1
    move v0, v2

    .line 160
    goto :goto_1

    .line 164
    .restart local v0       #hasMode:Z
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 7
    .parameter "root"

    .prologue
    const/4 v6, -0x1

    .line 186
    iget v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, target:Landroid/view/View;
    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v3, 0x0

    .line 193
    .local v3, targetDrawable:Landroid/graphics/drawable/Drawable;
    iget-boolean v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v4, :cond_5

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 200
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 202
    iget v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->alpha:I

    if-eq v4, v6, :cond_3

    .line 203
    iget v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 205
    :cond_3
    iget v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->colorFilter:I

    if-eq v4, v6, :cond_4

    iget-object v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_4

    .line 206
    iget v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->colorFilter:I

    iget-object v5, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    :cond_4
    iget v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->level:I

    if-eq v4, v6, :cond_0

    .line 209
    iget v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 195
    :cond_5
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 196
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 197
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-boolean v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->colorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    :goto_1
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void

    :cond_0
    move v0, v1

    .line 172
    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
